        .file "/tmp/964cc953-fe63-4a3e-ac4d-ae68f4d08979.ll"
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
        .align 64
        .globl _const_1
_const_1:
        .long 0
        .long 0
        .long 1
        .long 0
        .long 2
        .long 0
        .long 3
        .long 0
        .long 4
        .long 0
        .long 5
        .long 0
        .long 6
        .long 0
        .long 7
        .long 0
        .align 64
        .globl _const_2
_const_2:
        .long 8
        .long 0
        .long 9
        .long 0
        .long 10
        .long 0
        .long 11
        .long 0
        .long 12
        .long 0
        .long 13
        .long 0
        .long 14
        .long 0
        .long 15
        .long 0
        .align 64
        .globl _const_3
_const_3:
        .long 0
        .long 2
        .long 4
        .long 6
        .long 8
        .long 10
        .long 12
        .long 14
        .long 0
        .long 2
        .long 4
        .long 6
        .long 8
        .long 10
        .long 12
        .long 14
        .align 64
        .globl _const_4
_const_4:
        .long 0
        .long 0
        .long 1
        .long 1
        .long 2
        .long 2
        .long 3
        .long 3
        .long 4
        .long 4
        .long 5
        .long 5
        .long 6
        .long 6
        .long 7
        .long 7
        .align 64
        .globl _const_5
_const_5:
        .long 8
        .long 8
        .long 9
        .long 9
        .long 10
        .long 10
        .long 11
        .long 11
        .long 12
        .long 12
        .long 13
        .long 13
        .long 14
        .long 14
        .long 15
        .long 15
        .align 64
        .globl _const_6
_const_6:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_7
_const_7:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_8
_const_8:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_9
_const_9:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_10
_const_10:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_11
_const_11:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_12
_const_12:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_13
_const_13:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
        .long 0
        .align 64
        .globl _const_14
_const_14:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 1
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_2
read_2:
..B2.1:                         # Preds ..B2.0 Latency 83
        pushq     %rbp                                          #
        movq      %rsp, %rbp                                    #
        andq      $-64, %rsp                                    #
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r14                                          # c9
        pushq     %r15                                          # c13
        pushq     %rbx                                          # c17
        subq      $1496, %rsp                                   # c21
        movq      %rsi, %rax                                    # c21
        movq      88(%rdi), %rsi                                # c25
        movq      80(%rdi), %r11                                # c25
        movq      (%rax), %r12                                  # c29
        movq      8(%rax), %rax                                 # c29
        movq      %r11, %r15                                    # c33
        movq      %rsi, %r9                                     # c33
        imulq     %r12, %r15                                    # c37
        imulq     %rax, %r9                                     # c48
        movq      %r11, %r8                                     # c59
        movq      40(%rdi), %rdx                                # c59
        sarq      $4, %r8                                       # c63
        movq      32(%rdi), %rcx                                # c63
        movq      %r11, %rbx                                    # c67
        addq      %rcx, %r15                                    # c67
        andq      $-16, %rbx                                    # c71
        addq      %rdx, %r9                                     # c71
        movq      (%rdi), %r13                                  # c75
        movl      16(%rdi), %r10d                               # c75
        movq      8(%rdi), %rdi                                 # c79
        testq     %r8, %r8                                      # c79
        je        ..B2.105      # Prob 0%                       # c83
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r13 r15 r10d
..CL12:
..B2.3:                         # Preds ..B2.1 Latency 109
        vmovaps   _const_3(%rip), %zmm2                         # c1
        movq      %r15, 1152(%rsp)                              # c5
        xorl      %r14d, %r14d                                  # c5
        vpbroadcastq 1152(%rsp), %zmm0                          # c9
        vmovaps   %zmm0, %zmm3                                  # c13
        movq      %rax, 1168(%rsp)                              # c13
        movl      $255, %eax                                    # c17
        movq      %r13, 1160(%rsp)                              # c17
        kmov      %eax, %k1                                     # c21
        movl      $21845, %eax                                  # c21
        kmov      %eax, %k6                                     # c25
        movl      $3, %r13d                                     # c25
        vpaddsetcd _const_1(%rip), %k5, %zmm3{%k6}              # c29
        vpaddsetcd _const_2(%rip), %k3, %zmm0{%k6}              # c33
        kmov      %k5, %r15d                                    # c37
        movq      1168(%rsp), %rax                              # c37
        addl      %r15d, %r15d                                  # c41
        kmov      %r15d, %k2                                    # c45
        movl      $43690, %r15d                                 # c45
        kmov      %r15d, %k5                                    # c49
        kmov      %k3, %r15d                                    # c49
        vpadcd    _const_1(%rip), %k2, %zmm3{%k5}               # c53
        vmovaps   %zmm3, %zmm4                                  # c57
        addl      %r15d, %r15d                                  # c57
        vpaddsetcd %zmm3, %k7, %zmm4{%k6}                       # c61
        kmov      %r15d, %k4                                    # c61
        vpadcd    _const_2(%rip), %k4, %zmm0{%k5}               # c65
        vmovaps   %zmm0, %zmm1                                  # c69
        kmov      %k7, %r15d                                    # c69
        vpaddsetcd %zmm0, %k3, %zmm1{%k6}                       # c73
        addl      %r15d, %r15d                                  # c73
        kmov      %r15d, %k2                                    # c77
        vpadcd    %zmm3, %k2, %zmm4{%k5}                        # c81
        kmov      %k3, %r15d                                    # c81
        addl      %r15d, %r15d                                  # c85
        kmov      %r13d, %k2                                    # c85
        kmov      %r15d, %k4                                    # c89
        movl      $2, %r15d                                     # c89
        vpadcd    %zmm0, %k4, %zmm1{%k5}                        # c93
        vpermd    %zmm1, %zmm2, %zmm3                           # c97
        kmov      %r15d, %k4                                    # c97
        vpermd    %zmm4, %zmm2, %zmm3{%k1}                      # c101
        movl      $32768, %r15d                                 # c101
        kmov      %r15d, %k3                                    # c105
        movl      $16384, %r15d                                 # c105
        vpxord    %zmm0, %zmm0, %zmm0                           # c109
        kmov      %r15d, %k1                                    # c109
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r14 r10d zmm0 zmm3 k1 k2 k3 k4 k5 k6
..CL13:
..B2.4:                         # Preds ..B2.103 ..B2.3 Latency 87
        movl      %r9d, %r13d                                   # c1
        imull     %r10d, %r13d                                  # c5
        vmovaps   _const_4(%rip), %zmm1                         # c15
        vmovaps   _const_5(%rip), %zmm2                         # c19
        movl      %r13d, 1152(%rsp)                             # c23
        vpaddd    1152(%rsp){1to16}, %zmm3, %zmm4               # c27
        vpermd    %zmm4, %zmm1, %zmm1                           # c31
        movq      %rbx, 1168(%rsp)                              # c31
        vpsrad    $31, %zmm1, %zmm1{%k5}                        # c35
        movq      %r8, 1176(%rsp)                               # c35
        vpermd    %zmm4, %zmm2, %zmm2                           # c39
        movq      %r14, 1184(%rsp)                              # c39
        vmovdqa32 %zmm1, (%rsp)                                 # c43
        vmovdqa32 %zmm1, 64(%rsp)                               # c47
        movq      8(%rsp), %r13                                 # c47
        movq      64(%rsp), %r15                                # c51
        movq      %r9, 1192(%rsp)                               # c51
        subq      %r15, %r13                                    # c55
        movq      %rax, 1200(%rsp)                              # c55
        shlq      $4, %r13                                      # c59
        movq      %rdi, 1256(%rsp)                              # c59
        movq      %r13, 1152(%rsp)                              # c63
        movq      %r8, %r13                                     # c63
        vpsrad    $31, %zmm2, %zmm2{%k5}                        # c67
        movq      %r13, 1264(%rsp)                              # c67
        movl      %r10d, 1208(%rsp)                             # c71
        vpbroadcastq 1152(%rsp), %zmm4                          # c75
        movq      %r11, 1216(%rsp)                              # c79
        movq      %rsi, 1224(%rsp)                              # c79
        movq      %rcx, 1232(%rsp)                              # c83
        movq      %rdx, 1240(%rsp)                              # c83
        movq      %r12, 1248(%rsp)                              # c87
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2 k3 k4 k5 k6
..CL14:
..B2.5:                         # Preds ..B2.101 ..B2.4 Latency 161
        vmovaps   %zmm17, %zmm5                                 # c1
        vmovdqa64 %zmm2, 256(%rsp)                              # c1
        vmovdqa64 %zmm2, 192(%rsp)                              # c5
        movq      272(%rsp), %r10                               # c5
        vmovdqa64 %zmm2, 128(%rsp)                              # c9
        vmovdqa64 %zmm1, 640(%rsp)                              # c13
        movb      %al, %al                                      # c13
        movq      %r10, 1312(%rsp)                              # c17
        movq      200(%rsp), %r10                               # c17
        vmovdqa64 %zmm1, 704(%rsp)                              # c21
        movq      640(%rsp), %r15                               # c21
        vmovdqa64 %zmm2, 576(%rsp)                              # c25
        movq      712(%rsp), %r11                               # c25
        vmovdqa64 %zmm2, 384(%rsp)                              # c29
        movq      632(%rsp), %r12                               # c29
        movq      %r10, 1320(%rsp)                              # c33
        movq      128(%rsp), %r10                               # c33
        vmovdqa64 %zmm2, 512(%rsp)                              # c37
        movq      416(%rsp), %rdx                               # c37
        vmovdqa64 %zmm2, 320(%rsp)                              # c41
        movq      560(%rsp), %r14                               # c41
        movq      %r10, 1328(%rsp)                              # c45
        movq      1160(%rsp), %r10                              # c45
        vmovdqa64 %zmm1, 1088(%rsp)                             # c49
        movq      344(%rsp), %r13                               # c49
        vmovdqa64 %zmm1, 1024(%rsp)                             # c53
        movq      1144(%rsp), %r9                               # c53
        vmovdqa64 %zmm1, 960(%rsp)                              # c57
        movq      1072(%rsp), %r8                               # c57
        vmovdqa64 %zmm1, 896(%rsp)                              # c61
        movq      1000(%rsp), %rdi                              # c61
        vmovdqa64 %zmm1, 832(%rsp)                              # c65
        movq      928(%rsp), %rsi                               # c65
        vmovdqa64 %zmm1, 768(%rsp)                              # c69
        movq      856(%rsp), %rbx                               # c69
        vmovdqa64 %zmm2, 448(%rsp)                              # c73
        movq      784(%rsp), %rax                               # c73
        movq      %r15, 1392(%rsp)                              # c77
        lea       (%r10,%r15,4), %r15                           # c77
        vloadunpacklps (%r15), %zmm5{%k2}                       # c81
        movq      %r11, 1384(%rsp)                              # c81
        movq      %r12, 1272(%rsp)                              # c85
        lea       (%r10,%r11,4), %r11                           # c85
        movq      %rdx, 1296(%rsp)                              # c89
        lea       (%r10,%r12,4), %r12                           # c89
        lea       (%r10,%rdx,4), %rdx                           # c93
        movq      %r14, 1280(%rsp)                              # c93
        movq      %r13, 1304(%rsp)                              # c97
        movq      488(%rsp), %rcx                               # c97
        movq      %r11, 1448(%rsp)                              # c101
        movq      %r15, %r11                                    # c101
        movq      %r15, 1400(%rsp)                              # c105
        andq      $63, %r11                                     # c105
        movq      %r12, 1424(%rsp)                              # c109
        lea       (%r10,%r14,4), %r12                           # c109
        movq      %rdx, 1440(%rsp)                              # c113
        lea       (%r10,%r13,4), %rdx                           # c113
        movq      272(%rsp), %r13                               # c117
        movq      200(%rsp), %r14                               # c117
        movq      128(%rsp), %r15                               # c121
        movq      %r9, 1336(%rsp)                               # c121
        movq      %r8, 1344(%rsp)                               # c125
        lea       (%r10,%r9,4), %r9                             # c125
        movq      %rdi, 1352(%rsp)                              # c129
        lea       (%r10,%r8,4), %r8                             # c129
        movq      %rsi, 1360(%rsp)                              # c133
        lea       (%r10,%rdi,4), %rdi                           # c133
        movq      %rbx, 1368(%rsp)                              # c137
        lea       (%r10,%rsi,4), %rsi                           # c137
        movq      %rax, 1376(%rsp)                              # c141
        lea       (%r10,%rbx,4), %rbx                           # c141
        movq      %rcx, 1288(%rsp)                              # c145
        lea       (%r10,%rax,4), %rax                           # c145
        lea       (%r10,%rcx,4), %rcx                           # c149
        lea       (%r10,%r13,4), %r13                           # c149
        lea       (%r10,%r14,4), %r14                           # c153
        lea       (%r10,%r15,4), %r15                           # c153
        movq      1448(%rsp), %r10                              # c157
        cmpq      $57, %r11                                     # c157
        jb        ..B2.8        # Prob 0%                       # c161
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 r10d r10b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 k1 k2 k3 k4 k5 k6
..CL16:
..B2.7:                         # Preds ..B2.5 Latency 5
        movq      1400(%rsp), %r11                              # c1
        vloadunpackhps 64(%r11), %zmm5{%k2}                     # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 r10d r10b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 k1 k2 k3 k4 k5 k6
..CL15:
..B2.8:                         # Preds ..B2.7 ..B2.5 Latency 13
        vmovaps   %zmm17, %zmm31                                # c1
        movq      %r10, %r11                                    # c1
        andq      $63, %r11                                     # c5
        vloadunpacklps (%r10), %zmm31{%k2}                      # c9
        cmpq      $57, %r11                                     # c9
        jb        ..B2.11       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r15 r10d r10b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm31 k1 k2 k3 k4 k5 k6
..CL18:
..B2.10:                        # Preds ..B2.8 Latency 1
        vloadunpackhps 64(%r10), %zmm31{%k2}                    # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm31 k1 k2 k3 k4 k5 k6
..CL17:
..B2.11:                        # Preds ..B2.10 ..B2.8 Latency 13
        vmovaps   %zmm17, %zmm30                                # c1
        movq      %rax, %r10                                    # c1
        andq      $63, %r10                                     # c5
        vloadunpacklps (%rax), %zmm30{%k2}                      # c9
        cmpq      $57, %r10                                     # c9
        jb        ..B2.14       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL20:
..B2.13:                        # Preds ..B2.11 Latency 1
        vloadunpackhps 64(%rax), %zmm30{%k2}                    # c1
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL19:
..B2.14:                        # Preds ..B2.13 ..B2.11 Latency 13
        vmovaps   %zmm17, %zmm29                                # c1
        movq      %rbx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rbx), %zmm29{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.17       # Prob 0%                       # c13
                                # LOE rdx rcx rbx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL22:
..B2.16:                        # Preds ..B2.14 Latency 1
        vloadunpackhps 64(%rbx), %zmm29{%k2}                    # c1
                                # LOE rdx rcx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL21:
..B2.17:                        # Preds ..B2.16 ..B2.14 Latency 13
        vmovaps   %zmm17, %zmm28                                # c1
        movq      %rsi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rsi), %zmm28{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.20       # Prob 0%                       # c13
                                # LOE rdx rcx rsi rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL24:
..B2.19:                        # Preds ..B2.17 Latency 1
        vloadunpackhps 64(%rsi), %zmm28{%k2}                    # c1
                                # LOE rdx rcx rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL23:
..B2.20:                        # Preds ..B2.19 ..B2.17 Latency 13
        vmovaps   %zmm17, %zmm27                                # c1
        movq      %rdi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdi), %zmm27{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.23       # Prob 0%                       # c13
                                # LOE rdx rcx rdi r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL26:
..B2.22:                        # Preds ..B2.20 Latency 1
        vloadunpackhps 64(%rdi), %zmm27{%k2}                    # c1
                                # LOE rdx rcx r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL25:
..B2.23:                        # Preds ..B2.22 ..B2.20 Latency 13
        vmovaps   %zmm17, %zmm26                                # c1
        movq      %r8, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r8), %zmm26{%k2}                       # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.26       # Prob 0%                       # c13
                                # LOE rdx rcx r8 r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL28:
..B2.25:                        # Preds ..B2.23 Latency 1
        vloadunpackhps 64(%r8), %zmm26{%k2}                     # c1
                                # LOE rdx rcx r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL27:
..B2.26:                        # Preds ..B2.25 ..B2.23 Latency 13
        vmovaps   %zmm17, %zmm25                                # c1
        movq      %r9, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r9), %zmm25{%k2}                       # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.29       # Prob 0%                       # c13
                                # LOE rdx rcx r9 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL30:
..B2.28:                        # Preds ..B2.26 Latency 1
        vloadunpackhps 64(%r9), %zmm25{%k2}                     # c1
                                # LOE rdx rcx r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL29:
..B2.29:                        # Preds ..B2.28 ..B2.26 Latency 13
        vmovaps   %zmm17, %zmm24                                # c1
        movq      %r15, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r15), %zmm24{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.32       # Prob 0%                       # c13
                                # LOE rdx rcx r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL32:
..B2.31:                        # Preds ..B2.29 Latency 1
        vloadunpackhps 64(%r15), %zmm24{%k2}                    # c1
                                # LOE rdx rcx r12 r13 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL31:
..B2.32:                        # Preds ..B2.31 ..B2.29 Latency 13
        vmovaps   %zmm17, %zmm23                                # c1
        movq      %r14, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r14), %zmm23{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.35       # Prob 0%                       # c13
                                # LOE rdx rcx r12 r13 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL34:
..B2.34:                        # Preds ..B2.32 Latency 1
        vloadunpackhps 64(%r14), %zmm23{%k2}                    # c1
                                # LOE rdx rcx r12 r13 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL33:
..B2.35:                        # Preds ..B2.34 ..B2.32 Latency 13
        vmovaps   %zmm17, %zmm22                                # c1
        movq      %r13, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r13), %zmm22{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.38       # Prob 0%                       # c13
                                # LOE rdx rcx r12 r13 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL36:
..B2.37:                        # Preds ..B2.35 Latency 1
        vloadunpackhps 64(%r13), %zmm22{%k2}                    # c1
                                # LOE rdx rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL35:
..B2.38:                        # Preds ..B2.37 ..B2.35 Latency 13
        vmovaps   %zmm17, %zmm21                                # c1
        movq      %rdx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdx), %zmm21{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.41       # Prob 0%                       # c13
                                # LOE rdx rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL38:
..B2.40:                        # Preds ..B2.38 Latency 1
        vloadunpackhps 64(%rdx), %zmm21{%k2}                    # c1
                                # LOE rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL37:
..B2.41:                        # Preds ..B2.40 ..B2.38 Latency 17
        vmovaps   %zmm17, %zmm20                                # c1
        movq      1440(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        andq      $63, %rdx                                     # c9
        vloadunpacklps (%rax), %zmm20{%k2}                      # c13
        cmpq      $57, %rdx                                     # c13
        jb        ..B2.44       # Prob 0%                       # c17
                                # LOE rax rcx r12 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL40:
..B2.43:                        # Preds ..B2.41 Latency 1
        vloadunpackhps 64(%rax), %zmm20{%k2}                    # c1
                                # LOE rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL39:
..B2.44:                        # Preds ..B2.43 ..B2.41 Latency 13
        vmovaps   %zmm17, %zmm19                                # c1
        movq      %rcx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rcx), %zmm19{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.47       # Prob 0%                       # c13
                                # LOE rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL42:
..B2.46:                        # Preds ..B2.44 Latency 1
        vloadunpackhps 64(%rcx), %zmm19{%k2}                    # c1
                                # LOE r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL41:
..B2.47:                        # Preds ..B2.46 ..B2.44 Latency 13
        vmovaps   %zmm17, %zmm18                                # c1
        movq      %r12, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r12), %zmm18{%k2}                      # c9
        cmpq      $57, %rax                                     # c9
        jb        ..B2.50       # Prob 0%                       # c13
                                # LOE r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL44:
..B2.49:                        # Preds ..B2.47 Latency 1
        vloadunpackhps 64(%r12), %zmm18{%k2}                    # c1
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL43:
..B2.50:                        # Preds ..B2.49 ..B2.47 Latency 17
        movq      1424(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        andq      $63, %rdx                                     # c9
        vloadunpacklps (%rax), %zmm17{%k2}                      # c13
        cmpq      $57, %rdx                                     # c13
        jb        ..B2.53       # Prob 0%                       # c17
                                # LOE rax eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL46:
..B2.52:                        # Preds ..B2.50 Latency 1
        vloadunpackhps 64(%rax), %zmm17{%k2}                    # c1
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm17 zmm18 zmm19 zmm20 zmm21 zmm22 zmm23 zmm24 zmm25 zmm26 zmm27 zmm28 zmm29 zmm30 zmm31 k1 k2 k3 k4 k5 k6
..CL45:
..B2.53:                        # Preds ..B2.52 ..B2.50 Latency 361
        vpshufd   $1, %zmm5, %zmm16                             # c1
        movq      1256(%rsp), %rax                              # c1
        vmovaps   _const_6(%rip), %zmm7                         # c5
        vmovaps   %zmm31, %zmm16{%k4}                           # c9
        movq      1352(%rsp), %r9                               # c9
        vpshufd   $0, %zmm31, %zmm5{%k4}                        # c13
        movq      1344(%rsp), %rdi                              # c13
        vmovaps   _const_7(%rip), %zmm8                         # c17
        vmovaps   _const_8(%rip), %zmm9                         # c21
        vmovaps   _const_9(%rip), %zmm10                        # c25
        vmovaps   _const_10(%rip), %zmm11                       # c29
        vmovaps   _const_11(%rip), %zmm12                       # c33
        vmovaps   _const_12(%rip), %zmm13                       # c37
        vmovaps   _const_13(%rip), %zmm14                       # c41
        vmovaps   _const_14(%rip), %zmm15                       # c45
        movq      1336(%rsp), %rbx                              # c49
        lea       (%rax,%r9,4), %r8                             # c49
        movq      1328(%rsp), %rcx                              # c53
        lea       (%rax,%rdi,4), %rsi                           # c53
        movq      1320(%rsp), %rdx                              # c57
        movq      %r8, 1408(%rsp)                               # c57
        movq      %rsi, 1432(%rsp)                              # c61
        lea       (%rax,%rbx,4), %r9                            # c61
        movq      1312(%rsp), %r15                              # c65
        lea       (%rax,%rcx,4), %r8                            # c65
        lea       (%rax,%rdx,4), %rdi                           # c69
        lea       (%rax,%r15,4), %rsi                           # c69
        movq      1304(%rsp), %rbx                              # c73
        movq      %rsi, 1416(%rsp)                              # c73
        lea       (%rax,%rbx,4), %rsi                           # c77
        movq      1296(%rsp), %rcx                              # c77
        movq      1288(%rsp), %rdx                              # c81
        lea       (%rax,%rcx,4), %rbx                           # c81
        movq      1280(%rsp), %r15                              # c85
        lea       (%rax,%rdx,4), %rcx                           # c85
        movq      1392(%rsp), %r14                              # c89
        lea       (%rax,%r15,4), %rdx                           # c89
        movq      1384(%rsp), %r13                              # c93
        lea       (%rax,%r14,4), %r14                           # c93
        movq      1376(%rsp), %r12                              # c97
        lea       (%rax,%r13,4), %r13                           # c97
        movq      1368(%rsp), %r11                              # c101
        lea       (%rax,%r12,4), %r12                           # c101
        movq      1360(%rsp), %r10                              # c105
        lea       (%rax,%r11,4), %r11                           # c105
        movq      1272(%rsp), %r15                              # c109
        lea       (%rax,%r10,4), %r10                           # c109
        lea       (%rax,%r15,4), %rax                           # c113
        movl      $4, %r15d                                     # c113
        kmov      %r15d, %k7                                    # c117
        movq      %rax, 1456(%rsp)                              # c117
        vpshufd   $16, %zmm30, %zmm16{%k7}                      # c121
        movl      $8, %eax                                      # c121
        vpshufd   $0, %zmm30, %zmm5{%k7}                        # c125
        kmov      %eax, %k7                                     # c125
        vpshufd   $64, %zmm29, %zmm16{%k7}                      # c129
        movl      $16, %eax                                     # c129
        vpshufd   $0, %zmm29, %zmm5{%k7}                        # c133
        kmov      %eax, %k7                                     # c133
        vpermd    %zmm28, %zmm7, %zmm16{%k7}                    # c137
        movl      $32, %eax                                     # c137
        vpermf32x4 $0, %zmm28, %zmm5{%k7}                       # c141
        kmov      %eax, %k7                                     # c141
        vpermf32x4 $0, %zmm27, %zmm16{%k7}                      # c145
        movl      $64, %eax                                     # c145
        vpermd    %zmm27, %zmm0, %zmm5{%k7}                     # c149
        kmov      %eax, %k7                                     # c149
        vpermd    %zmm26, %zmm8, %zmm16{%k7}                    # c153
        movl      $128, %eax                                    # c153
        vpermd    %zmm26, %zmm0, %zmm5{%k7}                     # c157
        kmov      %eax, %k7                                     # c157
        vpermd    %zmm25, %zmm9, %zmm16{%k7}                    # c161
        movl      $256, %eax                                    # c161
        vpermd    %zmm25, %zmm0, %zmm5{%k7}                     # c165
        kmov      %eax, %k7                                     # c165
        vpermd    %zmm24, %zmm10, %zmm16{%k7}                   # c169
        movl      $512, %eax                                    # c169
        vpermf32x4 $0, %zmm24, %zmm5{%k7}                       # c173
        kmov      %eax, %k7                                     # c173
        vpermf32x4 $0, %zmm23, %zmm16{%k7}                      # c177
        movl      $1024, %eax                                   # c177
        vpermd    %zmm23, %zmm0, %zmm5{%k7}                     # c181
        kmov      %eax, %k7                                     # c181
        vpermd    %zmm22, %zmm11, %zmm16{%k7}                   # c185
        movl      $2048, %eax                                   # c185
        vpermd    %zmm22, %zmm0, %zmm5{%k7}                     # c189
        kmov      %eax, %k7                                     # c189
        vpermd    %zmm21, %zmm12, %zmm16{%k7}                   # c193
        movl      $4096, %eax                                   # c193
        vpermd    %zmm21, %zmm0, %zmm5{%k7}                     # c197
        kmov      %eax, %k7                                     # c197
        vpermd    %zmm20, %zmm13, %zmm16{%k7}                   # c201
        movl      $8192, %eax                                   # c201
        vpermf32x4 $0, %zmm20, %zmm5{%k7}                       # c205
        kmov      %eax, %k7                                     # c205
        vpermf32x4 $0, %zmm19, %zmm16{%k7}                      # c209
        movq      %r14, %r15                                    # c209
        vpermd    %zmm19, %zmm0, %zmm5{%k7}                     # c213
        andq      $63, %r15                                     # c213
        vpermd    %zmm18, %zmm14, %zmm16{%k1}                   # c217
        movq      1456(%rsp), %rax                              # c217
        vpermd    %zmm18, %zmm0, %zmm5{%k1}                     # c221
        cmpq      $57, %r15                                     # c221
        vpermd    %zmm17, %zmm15, %zmm16{%k3}                   # c225
        vpermd    %zmm17, %zmm0, %zmm5{%k3}                     # c229
        vaddps    _const_0(%rip){1to16}, %zmm16, %zmm17         # c233
        vaddps    _const_0(%rip){1to16}, %zmm5, %zmm5           # c237
        valignd   $15, %zmm5, %zmm6, %zmm22                     # c241
        valignd   $14, %zmm5, %zmm6, %zmm21                     # c245
        valignd   $13, %zmm5, %zmm6, %zmm20                     # c249
        vpermf32x4 $3, %zmm5, %zmm19                            # c253
        valignd   $11, %zmm5, %zmm6, %zmm18                     # c257
        valignd   $10, %zmm5, %zmm6, %zmm16                     # c261
        valignd   $9, %zmm5, %zmm6, %zmm15                      # c265
        vpermf32x4 $2, %zmm5, %zmm14                            # c269
        valignd   $7, %zmm5, %zmm6, %zmm13                      # c273
        valignd   $6, %zmm5, %zmm6, %zmm12                      # c277
        valignd   $5, %zmm5, %zmm6, %zmm11                      # c281
        vpermf32x4 $1, %zmm5, %zmm10                            # c285
        vpshufd   $3, %zmm5, %zmm9                              # c289
        vpshufd   $2, %zmm5, %zmm8                              # c293
        vpshufd   $1, %zmm5, %zmm7                              # c297
        vpshufd   $0, %zmm17, %zmm5{%k4}                        # c301
        valignd   $14, %zmm17, %zmm6, %zmm22{%k4}               # c305
        valignd   $13, %zmm17, %zmm6, %zmm21{%k4}               # c309
        vpackstorelps %zmm5, (%r14){%k2}                        # c309
        vpermf32x4 $3, %zmm17, %zmm20{%k4}                      # c313
        valignd   $11, %zmm17, %zmm6, %zmm19{%k4}               # c317
        valignd   $10, %zmm17, %zmm6, %zmm18{%k4}               # c321
        valignd   $9, %zmm17, %zmm6, %zmm16{%k4}                # c325
        vpermf32x4 $2, %zmm17, %zmm15{%k4}                      # c329
        valignd   $7, %zmm17, %zmm6, %zmm14{%k4}                # c333
        valignd   $6, %zmm17, %zmm6, %zmm13{%k4}                # c337
        valignd   $5, %zmm17, %zmm6, %zmm12{%k4}                # c341
        vpermf32x4 $1, %zmm17, %zmm11{%k4}                      # c345
        valignd   $3, %zmm17, %zmm6, %zmm10{%k4}                # c349
        vpshufd   $12, %zmm17, %zmm9{%k4}                       # c353
        vpshufd   $8, %zmm17, %zmm8{%k4}                        # c357
        vmovaps   %zmm17, %zmm7{%k4}                            # c361
        jb        ..B2.56       # Prob 0%                       # c361
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL48:
..B2.55:                        # Preds ..B2.53 Latency 1
        vpackstorehps %zmm5, 64(%r14){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL47:
..B2.56:                        # Preds ..B2.55 ..B2.53 Latency 9
        movq      %r13, %r14                                    # c1
        andq      $63, %r14                                     # c5
        vpackstorelps %zmm7, (%r13){%k2}                        # c5
        cmpq      $57, %r14                                     # c9
        jb        ..B2.59       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL50:
..B2.58:                        # Preds ..B2.56 Latency 1
        vpackstorehps %zmm7, 64(%r13){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL49:
..B2.59:                        # Preds ..B2.58 ..B2.56 Latency 9
        movq      %r12, %r13                                    # c1
        vpackstorelps %zmm8, (%r12){%k2}                        # c1
        andq      $63, %r13                                     # c5
        cmpq      $57, %r13                                     # c9
        jb        ..B2.62       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL52:
..B2.61:                        # Preds ..B2.59 Latency 1
        vpackstorehps %zmm8, 64(%r12){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL51:
..B2.62:                        # Preds ..B2.61 ..B2.59 Latency 9
        movq      %r11, %r12                                    # c1
        vpackstorelps %zmm9, (%r11){%k2}                        # c1
        andq      $63, %r12                                     # c5
        cmpq      $57, %r12                                     # c9
        jb        ..B2.65       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL54:
..B2.64:                        # Preds ..B2.62 Latency 1
        vpackstorehps %zmm9, 64(%r11){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL53:
..B2.65:                        # Preds ..B2.64 ..B2.62 Latency 9
        movq      %r10, %r11                                    # c1
        vpackstorelps %zmm10, (%r10){%k2}                       # c1
        andq      $63, %r11                                     # c5
        cmpq      $57, %r11                                     # c9
        jb        ..B2.68       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL56:
..B2.67:                        # Preds ..B2.65 Latency 1
        vpackstorehps %zmm10, 64(%r10){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL55:
..B2.68:                        # Preds ..B2.67 ..B2.65 Latency 13
        movq      1408(%rsp), %r10                              # c1
        movq      %r10, %r11                                    # c5
        vpackstorelps %zmm11, (%r10){%k2}                       # c5
        andq      $63, %r11                                     # c9
        cmpq      $57, %r11                                     # c13
        jb        ..B2.71       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax r10d al ah r10b zmm0 zmm1 zmm2 zmm3 zmm4 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL58:
..B2.70:                        # Preds ..B2.68 Latency 1
        vpackstorehps %zmm11, 64(%r10){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL57:
..B2.71:                        # Preds ..B2.70 ..B2.68 Latency 13
        movq      1432(%rsp), %r10                              # c1
        movq      %r10, %r11                                    # c5
        vpackstorelps %zmm12, (%r10){%k2}                       # c5
        andq      $63, %r11                                     # c9
        cmpq      $57, %r11                                     # c13
        jb        ..B2.74       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax r10d al ah r10b zmm0 zmm1 zmm2 zmm3 zmm4 zmm12 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL60:
..B2.73:                        # Preds ..B2.71 Latency 1
        vpackstorehps %zmm12, 64(%r10){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL59:
..B2.74:                        # Preds ..B2.73 ..B2.71 Latency 9
        movq      %r9, %r10                                     # c1
        vpackstorelps %zmm13, (%r9){%k2}                        # c1
        andq      $63, %r10                                     # c5
        cmpq      $57, %r10                                     # c9
        jb        ..B2.77       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm13 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL62:
..B2.76:                        # Preds ..B2.74 Latency 1
        vpackstorehps %zmm13, 64(%r9){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL61:
..B2.77:                        # Preds ..B2.76 ..B2.74 Latency 9
        movq      %r8, %r9                                      # c1
        vpackstorelps %zmm14, (%r8){%k2}                        # c1
        andq      $63, %r9                                      # c5
        cmpq      $57, %r9                                      # c9
        jb        ..B2.80       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm14 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL64:
..B2.79:                        # Preds ..B2.77 Latency 1
        vpackstorehps %zmm14, 64(%r8){%k2}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL63:
..B2.80:                        # Preds ..B2.79 ..B2.77 Latency 9
        movq      %rdi, %r8                                     # c1
        vpackstorelps %zmm15, (%rdi){%k2}                       # c1
        andq      $63, %r8                                      # c5
        cmpq      $57, %r8                                      # c9
        jb        ..B2.83       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm15 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL66:
..B2.82:                        # Preds ..B2.80 Latency 1
        vpackstorehps %zmm15, 64(%rdi){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL65:
..B2.83:                        # Preds ..B2.82 ..B2.80 Latency 13
        movq      1416(%rsp), %rdi                              # c1
        movq      %rdi, %r8                                     # c5
        vpackstorelps %zmm16, (%rdi){%k2}                       # c5
        andq      $63, %r8                                      # c9
        cmpq      $57, %r8                                      # c13
        jb        ..B2.86       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi eax edi al ah dil zmm0 zmm1 zmm2 zmm3 zmm4 zmm16 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL68:
..B2.85:                        # Preds ..B2.83 Latency 1
        vpackstorehps %zmm16, 64(%rdi){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL67:
..B2.86:                        # Preds ..B2.85 ..B2.83 Latency 9
        movq      %rsi, %rdi                                    # c1
        vpackstorelps %zmm18, (%rsi){%k2}                       # c1
        andq      $63, %rdi                                     # c5
        cmpq      $57, %rdi                                     # c9
        jb        ..B2.89       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm18 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL70:
..B2.88:                        # Preds ..B2.86 Latency 1
        vpackstorehps %zmm18, 64(%rsi){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL69:
..B2.89:                        # Preds ..B2.88 ..B2.86 Latency 9
        movq      %rbx, %rsi                                    # c1
        vpackstorelps %zmm19, (%rbx){%k2}                       # c1
        andq      $63, %rsi                                     # c5
        cmpq      $57, %rsi                                     # c9
        jb        ..B2.92       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm19 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL72:
..B2.91:                        # Preds ..B2.89 Latency 1
        vpackstorehps %zmm19, 64(%rbx){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL71:
..B2.92:                        # Preds ..B2.91 ..B2.89 Latency 9
        movq      %rcx, %rbx                                    # c1
        vpackstorelps %zmm20, (%rcx){%k2}                       # c1
        andq      $63, %rbx                                     # c5
        cmpq      $57, %rbx                                     # c9
        jb        ..B2.95       # Prob 0%                       # c9
                                # LOE rax rdx rcx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm20 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL74:
..B2.94:                        # Preds ..B2.92 Latency 1
        vpackstorehps %zmm20, 64(%rcx){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL73:
..B2.95:                        # Preds ..B2.94 ..B2.92 Latency 9
        movq      %rdx, %rcx                                    # c1
        vpackstorelps %zmm21, (%rdx){%k2}                       # c1
        andq      $63, %rcx                                     # c5
        cmpq      $57, %rcx                                     # c9
        jb        ..B2.98       # Prob 0%                       # c9
                                # LOE rax rdx eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm21 zmm22 k1 k2 k3 k4 k5 k6
..CL76:
..B2.97:                        # Preds ..B2.95 Latency 1
        vpackstorehps %zmm21, 64(%rdx){%k2}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm22 k1 k2 k3 k4 k5 k6
..CL75:
..B2.98:                        # Preds ..B2.97 ..B2.95 Latency 9
        movq      %rax, %rdx                                    # c1
        vpackstorelps %zmm22, (%rax){%k2}                       # c1
        andq      $63, %rdx                                     # c5
        cmpq      $57, %rdx                                     # c9
        jb        ..B2.101      # Prob 0%                       # c9
                                # LOE rax eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm22 k1 k2 k3 k4 k5 k6
..CL78:
..B2.100:                       # Preds ..B2.98 Latency 1
        vpackstorehps %zmm22, 64(%rax){%k2}                     # c1
        movb      %dl, %dl                                      # c1
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2 k3 k4 k5 k6
..CL77:
..B2.101:                       # Preds ..B2.100 ..B2.98 Latency 49
        vpaddsetcd %zmm4, %k7, %zmm1{%k6}                       # c1
        movq      1264(%rsp), %rdx                              # c1
        nop                                                     # c5
        kmov      %k7, %eax                                     # c9
        addl      %eax, %eax                                    # c13
        kmov      %eax, %k7                                     # c17
        vpadcd    %zmm4, %k7, %zmm1{%k5}                        # c21
        vpaddsetcd %zmm4, %k7, %zmm2{%k6}                       # c25
        nop                                                     # c29
        kmov      %k7, %ecx                                     # c33
        addl      %ecx, %ecx                                    # c37
        kmov      %ecx, %k7                                     # c41
        decq      %rdx                                          # c41
        vpadcd    %zmm4, %k7, %zmm2{%k5}                        # c45
        movq      %rdx, 1264(%rsp)                              # c45
        jne       ..B2.5        # Prob 0%                       # c49
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 k1 k2 k3 k4 k5 k6
..B2.102:                       # Preds ..B2.101 Latency 21
        movq      1168(%rsp), %rbx                              # c1
        movq      1176(%rsp), %r8                               # c1
        movq      1184(%rsp), %r14                              # c5
        movq      1192(%rsp), %r9                               # c5
        movq      1200(%rsp), %rax                              # c9
        movq      1256(%rsp), %rdi                              # c9
        movl      1208(%rsp), %r10d                             # c13
        movq      1216(%rsp), %r11                              # c13
        movq      1224(%rsp), %rsi                              # c17
        movq      1232(%rsp), %rcx                              # c17
        movq      1240(%rsp), %rdx                              # c21
        movq      1248(%rsp), %r12                              # c21
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d al dl cl bl ah dh ch bh sil dil r8b r9b r10b r11b r12b r14b zmm0 zmm3 k1 k2 k3 k4 k5 k6
..CL79:
..B2.103:                       # Preds ..B2.102 Latency 5
        incq      %r14                                          # c1
        incq      %r9                                           # c1
        cmpq      %rsi, %r14                                    # c5
        jne       ..B2.4        # Prob 0%                       # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r10d r11d r12d al dl cl bl ah dh ch bh sil dil r10b r11b r12b zmm0 zmm3 k1 k2 k3 k4 k5 k6
..B2.104:                       # Preds ..B2.103 Latency 1
        movq      1160(%rsp), %r13                              # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL11:
..B2.105:                       # Preds ..B2.104 ..B2.1 Latency 1
        cmpq      %rbx, %r11                                    # c1
        je        ..B2.119      # Prob 0%                       # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL81:
..B2.107:                       # Preds ..B2.105 Latency 55
        movl      %esi, %r8d                                    # c1
        imull     %eax, %r8d                                    # c5
        movl      %ebx, %r14d                                   # c15
        subq      %r11, %rbx                                    # c19
        addl      %r8d, %edx                                    # c19
        imull     %r12d, %r11d                                  # c23
        imull     %r10d, %edx                                   # c33
        addl      %r14d, %ecx                                   # c43
        xorl      %r9d, %r9d                                    # c43
        addl      %r11d, %ecx                                   # c47
        lea       (%rdx,%rcx,2), %eax                           # c51
        movl      $3, %edx                                      # c51
        kmov      %edx, %k1                                     # c55
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL82:
..B2.108:                       # Preds ..B2.117 ..B2.107 Latency 1
        movl      %eax, %ecx                                    # c1
        movq      %rbx, %rdx                                    # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL83:
..B2.109:                       # Preds ..B2.115 ..B2.108 Latency 21
        movslq    %ecx, %r12                                    # c1
        lea       (%r13,%r12,4), %r11                           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vloadunpacklps (%r11), %zmm0{%k1}                       # c17
        cmpq      $57, %r8                                      # c17
        jb        ..B2.112      # Prob 0%                       # c21
                                # LOE rdx rbx rsi rdi r9 r11 r12 r13 eax ecx r10d zmm0 k1
..CL85:
..B2.111:                       # Preds ..B2.109 Latency 1
        vloadunpackhps 64(%r11), %zmm0{%k1}                     # c1
                                # LOE rdx rbx rsi rdi r9 r12 r13 eax ecx r10d zmm0 k1
..CL84:
..B2.112:                       # Preds ..B2.111 ..B2.109 Latency 17
        lea       (%rdi,%r12,4), %r11                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vpackstorelps %zmm0, (%r11){%k1}                        # c13
        cmpq      $57, %r8                                      # c17
        jb        ..B2.115      # Prob 0%                       # c17
                                # LOE rdx rbx rsi rdi r9 r11 r13 eax ecx r10d zmm0 k1
..CL87:
..B2.114:                       # Preds ..B2.112 Latency 1
        vpackstorehps %zmm0, 64(%r11){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL86:
..B2.115:                       # Preds ..B2.114 ..B2.112 Latency 5
        addl      $2, %ecx                                      # c1
        incq      %rdx                                          # c5
        jne       ..B2.109      # Prob 0%                       # c5
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL88:
..B2.117:                       # Preds ..B2.115 Latency 5
        incq      %r9                                           # c1
        addl      %r10d, %eax                                   # c1
        cmpq      %rsi, %r9                                     # c5
        jne       ..B2.108      # Prob 0%                       # c5
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL80:
..B2.119:                       # Preds ..B2.117 ..B2.105 Latency 25
        addq      $1496, %rsp                                   # c1
        popq      %rbx                                          # c5
        popq      %r15                                          # c9
        popq      %r14                                          # c13
        popq      %r13                                          # c17
        popq      %r12                                          # c21
        movq      %rbp, %rsp                                    # c25
        popq      %rbp                                          #
        ret                                                     #
        .align    16,0x90
                                # LOE
# mark_end;
	.type	read_2,@function
	.size	read_2,.-read_2
        .align 64
        .globl _const_15
_const_15:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_16
_const_16:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_17
_const_17:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_18
_const_18:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_19
_const_19:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_20
_const_20:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_21
_const_21:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_22
_const_22:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_23
_const_23:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_24
_const_24:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_25
_const_25:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_26
_const_26:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_27
_const_27:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_28
_const_28:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_29
_const_29:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .long 0
        .align 64
        .globl _const_30
_const_30:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
        .long 0
        .long 0
        .align 64
        .globl _const_31
_const_31:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 3
        .long 0
        .align 64
        .globl _const_32
_const_32:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 2
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_4
read_4:
..B3.1:                         # Preds ..B3.0 Latency 83
        pushq     %rbp                                          #
        movq      %rsp, %rbp                                    #
        andq      $-64, %rsp                                    #
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r14                                          # c9
        pushq     %r15                                          # c13
        pushq     %rbx                                          # c17
        subq      $4888, %rsp                                   # c21
        movq      %rsi, %rax                                    # c21
        movq      88(%rdi), %rsi                                # c25
        movq      80(%rdi), %r11                                # c25
        movq      (%rax), %r12                                  # c29
        movq      8(%rax), %rax                                 # c29
        movq      %r11, %r15                                    # c33
        movq      %rsi, %r9                                     # c33
        imulq     %r12, %r15                                    # c37
        imulq     %rax, %r9                                     # c48
        movq      %r11, %r8                                     # c59
        movq      40(%rdi), %rdx                                # c59
        sarq      $4, %r8                                       # c63
        movq      32(%rdi), %rcx                                # c63
        movq      %r11, %rbx                                    # c67
        addq      %rcx, %r15                                    # c67
        andq      $-16, %rbx                                    # c71
        addq      %rdx, %r9                                     # c71
        movq      (%rdi), %r13                                  # c75
        movl      16(%rdi), %r10d                               # c75
        movq      8(%rdi), %rdi                                 # c79
        testq     %r8, %r8                                      # c79
        je        ..B3.105      # Prob 0%                       # c83
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r13 r15 r10d
..CL90:
..B3.3:                         # Preds ..B3.1 Latency 97
        vmovaps   _const_3(%rip), %zmm5                         # c1
        movq      %r15, 4288(%rsp)                              # c5
        xorl      %r14d, %r14d                                  # c5
        vpbroadcastq 4288(%rsp), %zmm2                          # c9
        vmovaps   %zmm2, %zmm0                                  # c13
        movq      %rax, 2176(%rsp)                              # c13
        movl      $255, %eax                                    # c17
        movq      %r13, 4552(%rsp)                              # c17
        kmov      %eax, %k6                                     # c21
        movl      $21845, %eax                                  # c21
        kmov      %eax, %k4                                     # c25
        movl      $1, %r13d                                     # c25
        vpaddsetcd _const_1(%rip), %k3, %zmm0{%k4}              # c29
        vpaddsetcd _const_2(%rip), %k2, %zmm2{%k4}              # c33
        kmov      %k3, %r15d                                    # c37
        movq      2176(%rsp), %rax                              # c37
        addl      %r15d, %r15d                                  # c41
        kmov      %r15d, %k1                                    # c45
        movl      $43690, %r15d                                 # c45
        kmov      %r15d, %k3                                    # c49
        kmov      %k2, %r15d                                    # c49
        vpadcd    _const_1(%rip), %k1, %zmm0{%k3}               # c53
        vpsrld    $30, %zmm0, %zmm1                             # c57
        addl      %r15d, %r15d                                  # c57
        vpslld    $2, %zmm0, %zmm6                              # c61
        kmov      %r15d, %k5                                    # c61
        vpadcd    _const_2(%rip), %k5, %zmm2{%k3}               # c65
        vpsrld    $30, %zmm2, %zmm3                             # c69
        kmov      %r13d, %k5                                    # c69
        vpslld    $2, %zmm2, %zmm4                              # c73
        movl      $128, %r13d                                   # c73
        vpord     %zmm3{cdab}, %zmm4, %zmm4{%k3}                # c77
        movl      $15, %r15d                                    # c77
        vpord     %zmm1{cdab}, %zmm6, %zmm6{%k3}                # c81
        kmov      %r15d, %k1                                    # c81
        vpermd    %zmm4, %zmm5, %zmm0                           # c85
        vpermd    %zmm6, %zmm5, %zmm0{%k6}                      # c89
        kmov      %r13d, %k6                                    # c89
        movl      $256, %r13d                                   # c93
        kmov      %r13d, %k2                                    # c97
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r14 r10d zmm0 k1 k2 k3 k4 k5 k6
..CL91:
..B3.4:                         # Preds ..B3.103 ..B3.3 Latency 95
        movl      %r9d, %r13d                                   # c1
        imull     %r10d, %r13d                                  # c5
        vmovaps   _const_4(%rip), %zmm2                         # c15
        vmovaps   _const_5(%rip), %zmm1                         # c19
        movl      %r13d, 4288(%rsp)                             # c23
        vpaddd    4288(%rsp){1to16}, %zmm0, %zmm3               # c27
        vpermd    %zmm3, %zmm2, %zmm2                           # c31
        vmovaps   %zmm0, 2176(%rsp)                             # c31
        vpsrad    $31, %zmm2, %zmm2{%k3}                        # c35
        movq      %rbx, 4560(%rsp)                              # c35
        vpermd    %zmm3, %zmm1, %zmm4                           # c39
        movq      %r8, 4568(%rsp)                               # c39
        vpsrad    $31, %zmm4, %zmm4{%k3}                        # c43
        vmovdqa32 %zmm2, (%rsp)                                 # c43
        vmovdqa32 %zmm2, 64(%rsp)                               # c47
        movq      8(%rsp), %r13                                 # c47
        movq      64(%rsp), %r15                                # c51
        vmovaps   %zmm2, 2304(%rsp)                             # c51
        subq      %r15, %r13                                    # c55
        vmovaps   %zmm4, 2368(%rsp)                             # c55
        shlq      $4, %r13                                      # c59
        movq      %r14, 4576(%rsp)                              # c59
        movq      %r13, 4288(%rsp)                              # c63
        movq      %r8, %r13                                     # c63
        vpbroadcastq 4288(%rsp), %zmm1                          # c67
        movq      %r13, 4656(%rsp)                              # c71
        movb      %al, %al                                      # c71
        vmovaps   %zmm1, 2240(%rsp)                             # c75
        movb      %dl, %dl                                      # c75
        movq      %r9, 4584(%rsp)                               # c79
        movq      %rax, 4592(%rsp)                              # c79
        movq      %rdi, 4648(%rsp)                              # c83
        movl      %r10d, 4600(%rsp)                             # c83
        movq      %r11, 4608(%rsp)                              # c87
        movq      %rsi, 4616(%rsp)                              # c87
        movq      %rcx, 4624(%rsp)                              # c91
        movq      %rdx, 4632(%rsp)                              # c91
        movq      %r12, 4640(%rsp)                              # c95
                                # LOE k1 k2 k3 k4 k5 k6
..CL92:
..B3.5:                         # Preds ..B3.101 ..B3.4 Latency 169
        vmovaps   2368(%rsp), %zmm1                             # c1
        vmovaps   2304(%rsp), %zmm0                             # c5
        vmovaps   %zmm11, %zmm10                                # c9
        vmovdqa64 %zmm1, 256(%rsp)                              # c9
        vmovdqa64 %zmm1, 192(%rsp)                              # c13
        movq      272(%rsp), %r13                               # c13
        vmovdqa64 %zmm1, 128(%rsp)                              # c17
        vmovdqa64 %zmm0, 640(%rsp)                              # c21
        movb      %al, %al                                      # c21
        movq      %r13, 4704(%rsp)                              # c25
        movq      200(%rsp), %r13                               # c25
        vmovdqa64 %zmm0, 704(%rsp)                              # c29
        movq      640(%rsp), %r15                               # c29
        movq      %r13, 4712(%rsp)                              # c33
        movq      128(%rsp), %r13                               # c33
        movq      %r13, 4720(%rsp)                              # c37
        movq      4552(%rsp), %r13                              # c37
        movq      712(%rsp), %r11                               # c41
        vmovdqa64 %zmm1, 576(%rsp)                              # c41
        movq      %r15, 4784(%rsp)                              # c45
        lea       (%r13,%r15,4), %r15                           # c45
        vmovdqa64 %zmm1, 512(%rsp)                              # c49
        movq      632(%rsp), %r12                               # c49
        vmovdqa64 %zmm1, 384(%rsp)                              # c53
        movq      560(%rsp), %r14                               # c53
        vmovdqa64 %zmm1, 320(%rsp)                              # c57
        movq      416(%rsp), %rdx                               # c57
        movq      %r11, 4776(%rsp)                              # c61
        lea       (%r13,%r11,4), %r11                           # c61
        vmovdqa64 %zmm0, 1088(%rsp)                             # c65
        movq      344(%rsp), %r10                               # c65
        vmovdqa64 %zmm0, 1024(%rsp)                             # c69
        movq      1144(%rsp), %r9                               # c69
        vmovdqa64 %zmm0, 960(%rsp)                              # c73
        movq      1072(%rsp), %r8                               # c73
        vmovdqa64 %zmm0, 896(%rsp)                              # c77
        movq      1000(%rsp), %rdi                              # c77
        vmovdqa64 %zmm0, 832(%rsp)                              # c81
        movq      928(%rsp), %rsi                               # c81
        vmovdqa64 %zmm0, 768(%rsp)                              # c85
        movq      856(%rsp), %rbx                               # c85
        vmovdqa64 %zmm1, 448(%rsp)                              # c89
        movq      784(%rsp), %rax                               # c89
        vloadunpacklps (%r15), %zmm10{%k1}                      # c93
        movq      %r11, 4840(%rsp)                              # c93
        movq      %r15, 4792(%rsp)                              # c97
        movq      %r15, %r11                                    # c97
        movq      200(%rsp), %r15                               # c101
        movq      %r12, 4664(%rsp)                              # c101
        lea       (%r13,%r12,4), %r12                           # c105
        lea       (%r13,%r15,4), %r15                           # c105
        movq      %r14, 4672(%rsp)                              # c109
        movq      488(%rsp), %rcx                               # c109
        movq      %rdx, 4688(%rsp)                              # c113
        andq      $63, %r11                                     # c113
        movq      %r10, 4696(%rsp)                              # c117
        cmpq      $49, %r11                                     # c117
        movq      %r12, 4816(%rsp)                              # c121
        lea       (%r13,%r14,4), %r12                           # c121
        lea       (%r13,%rdx,4), %r14                           # c125
        lea       (%r13,%r10,4), %rdx                           # c125
        movq      272(%rsp), %r10                               # c129
        movq      %r15, 4832(%rsp)                              # c129
        movq      %r9, 4728(%rsp)                               # c133
        lea       (%r13,%r9,4), %r9                             # c133
        movq      128(%rsp), %r15                               # c137
        movq      %r8, 4736(%rsp)                               # c137
        movq      %rdi, 4744(%rsp)                              # c141
        lea       (%r13,%r8,4), %r8                             # c141
        movq      %rsi, 4752(%rsp)                              # c145
        lea       (%r13,%rdi,4), %rdi                           # c145
        movq      %rbx, 4760(%rsp)                              # c149
        lea       (%r13,%rsi,4), %rsi                           # c149
        movq      %rax, 4768(%rsp)                              # c153
        lea       (%r13,%rbx,4), %rbx                           # c153
        movq      %rcx, 4680(%rsp)                              # c157
        lea       (%r13,%rax,4), %rax                           # c157
        lea       (%r13,%rcx,4), %rcx                           # c161
        lea       (%r13,%r10,4), %r10                           # c161
        lea       (%r13,%r15,4), %r13                           # c165
        movq      4840(%rsp), %r11                              # c165
        jb        ..B3.8        # Prob 0%                       # c169
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r11b zmm10 zmm11 k1 k2 k3 k4 k5 k6
..CL94:
..B3.7:                         # Preds ..B3.5 Latency 5
        movq      4792(%rsp), %r15                              # c1
        vloadunpackhps 64(%r15), %zmm10{%k1}                    # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r11b zmm10 zmm11 k1 k2 k3 k4 k5 k6
..CL93:
..B3.8:                         # Preds ..B3.7 ..B3.5 Latency 13
        vmovaps   %zmm11, %zmm31                                # c1
        movq      %r11, %r15                                    # c1
        andq      $63, %r15                                     # c5
        vloadunpacklps (%r11), %zmm31{%k1}                      # c9
        cmpq      $49, %r15                                     # c9
        jb        ..B3.11       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r11b zmm10 zmm11 zmm31 k1 k2 k3 k4 k5 k6
..CL96:
..B3.10:                        # Preds ..B3.8 Latency 1
        vloadunpackhps 64(%r11), %zmm31{%k1}                    # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm31 k1 k2 k3 k4 k5 k6
..CL95:
..B3.11:                        # Preds ..B3.10 ..B3.8 Latency 13
        vmovaps   %zmm11, %zmm24                                # c1
        movq      %rax, %r11                                    # c1
        andq      $63, %r11                                     # c5
        vloadunpacklps (%rax), %zmm24{%k1}                      # c9
        cmpq      $49, %r11                                     # c9
        jb        ..B3.14       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL98:
..B3.13:                        # Preds ..B3.11 Latency 1
        vloadunpackhps 64(%rax), %zmm24{%k1}                    # c1
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL97:
..B3.14:                        # Preds ..B3.13 ..B3.11 Latency 13
        vmovaps   %zmm11, %zmm22                                # c1
        movq      %rbx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rbx), %zmm22{%k1}                      # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.17       # Prob 0%                       # c13
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL100:
..B3.16:                        # Preds ..B3.14 Latency 1
        vloadunpackhps 64(%rbx), %zmm22{%k1}                    # c1
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL99:
..B3.17:                        # Preds ..B3.16 ..B3.14 Latency 13
        vmovaps   %zmm11, %zmm13                                # c1
        movq      %rsi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rsi), %zmm13{%k1}                      # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.20       # Prob 0%                       # c13
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL102:
..B3.19:                        # Preds ..B3.17 Latency 1
        vloadunpackhps 64(%rsi), %zmm13{%k1}                    # c1
                                # LOE rdx rcx rdi r8 r9 r10 r12 r13 r14 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL101:
..B3.20:                        # Preds ..B3.19 ..B3.17 Latency 13
        vmovaps   %zmm11, %zmm0                                 # c1
        movq      %rdi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdi), %zmm0{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.23       # Prob 0%                       # c13
                                # LOE rdx rcx rdi r8 r9 r10 r12 r13 r14 zmm0 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL104:
..B3.22:                        # Preds ..B3.20 Latency 1
        vloadunpackhps 64(%rdi), %zmm0{%k1}                     # c1
                                # LOE rdx rcx r8 r9 r10 r12 r13 r14 zmm0 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL103:
..B3.23:                        # Preds ..B3.22 ..B3.20 Latency 13
        vmovaps   %zmm11, %zmm1                                 # c1
        movq      %r8, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r8), %zmm1{%k1}                        # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.26       # Prob 0%                       # c13
                                # LOE rdx rcx r8 r9 r10 r12 r13 r14 zmm0 zmm1 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL106:
..B3.25:                        # Preds ..B3.23 Latency 1
        vloadunpackhps 64(%r8), %zmm1{%k1}                      # c1
                                # LOE rdx rcx r9 r10 r12 r13 r14 zmm0 zmm1 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL105:
..B3.26:                        # Preds ..B3.25 ..B3.23 Latency 13
        vmovaps   %zmm11, %zmm2                                 # c1
        movq      %r9, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r9), %zmm2{%k1}                        # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.29       # Prob 0%                       # c13
                                # LOE rdx rcx r9 r10 r12 r13 r14 zmm0 zmm1 zmm2 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL108:
..B3.28:                        # Preds ..B3.26 Latency 1
        vloadunpackhps 64(%r9), %zmm2{%k1}                      # c1
                                # LOE rdx rcx r10 r12 r13 r14 zmm0 zmm1 zmm2 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL107:
..B3.29:                        # Preds ..B3.28 ..B3.26 Latency 13
        vmovaps   %zmm11, %zmm3                                 # c1
        movq      %r13, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r13), %zmm3{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.32       # Prob 0%                       # c13
                                # LOE rdx rcx r10 r12 r13 r14 zmm0 zmm1 zmm2 zmm3 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL110:
..B3.31:                        # Preds ..B3.29 Latency 1
        vloadunpackhps 64(%r13), %zmm3{%k1}                     # c1
                                # LOE rdx rcx r10 r12 r14 zmm0 zmm1 zmm2 zmm3 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL109:
..B3.32:                        # Preds ..B3.31 ..B3.29 Latency 17
        vmovaps   %zmm11, %zmm4                                 # c1
        movq      4832(%rsp), %rax                              # c1
        movq      %rax, %rbx                                    # c5
        andq      $63, %rbx                                     # c9
        vloadunpacklps (%rax), %zmm4{%k1}                       # c13
        cmpq      $49, %rbx                                     # c13
        jb        ..B3.35       # Prob 0%                       # c17
                                # LOE rax rdx rcx r10 r12 r14 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL112:
..B3.34:                        # Preds ..B3.32 Latency 1
        vloadunpackhps 64(%rax), %zmm4{%k1}                     # c1
                                # LOE rdx rcx r10 r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL111:
..B3.35:                        # Preds ..B3.34 ..B3.32 Latency 13
        vmovaps   %zmm11, %zmm5                                 # c1
        movq      %r10, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r10), %zmm5{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.38       # Prob 0%                       # c13
                                # LOE rdx rcx r10 r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL114:
..B3.37:                        # Preds ..B3.35 Latency 1
        vloadunpackhps 64(%r10), %zmm5{%k1}                     # c1
                                # LOE rdx rcx r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL113:
..B3.38:                        # Preds ..B3.37 ..B3.35 Latency 13
        vmovaps   %zmm11, %zmm6                                 # c1
        movq      %rdx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdx), %zmm6{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.41       # Prob 0%                       # c13
                                # LOE rdx rcx r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL116:
..B3.40:                        # Preds ..B3.38 Latency 1
        vloadunpackhps 64(%rdx), %zmm6{%k1}                     # c1
                                # LOE rcx r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL115:
..B3.41:                        # Preds ..B3.40 ..B3.38 Latency 13
        vmovaps   %zmm11, %zmm7                                 # c1
        movq      %r14, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r14), %zmm7{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.44       # Prob 0%                       # c13
                                # LOE rcx r12 r14 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL118:
..B3.43:                        # Preds ..B3.41 Latency 1
        vloadunpackhps 64(%r14), %zmm7{%k1}                     # c1
                                # LOE rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL117:
..B3.44:                        # Preds ..B3.43 ..B3.41 Latency 13
        vmovaps   %zmm11, %zmm8                                 # c1
        movq      %rcx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rcx), %zmm8{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.47       # Prob 0%                       # c13
                                # LOE rcx r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL120:
..B3.46:                        # Preds ..B3.44 Latency 1
        vloadunpackhps 64(%rcx), %zmm8{%k1}                     # c1
                                # LOE r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL119:
..B3.47:                        # Preds ..B3.46 ..B3.44 Latency 13
        vmovaps   %zmm11, %zmm9                                 # c1
        movq      %r12, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r12), %zmm9{%k1}                       # c9
        cmpq      $49, %rax                                     # c9
        jb        ..B3.50       # Prob 0%                       # c13
                                # LOE r12 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL122:
..B3.49:                        # Preds ..B3.47 Latency 1
        vloadunpackhps 64(%r12), %zmm9{%k1}                     # c1
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL121:
..B3.50:                        # Preds ..B3.49 ..B3.47 Latency 17
        movq      4816(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        andq      $63, %rdx                                     # c9
        vloadunpacklps (%rax), %zmm11{%k1}                      # c13
        cmpq      $49, %rdx                                     # c13
        jb        ..B3.53       # Prob 0%                       # c17
                                # LOE rax eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL124:
..B3.52:                        # Preds ..B3.50 Latency 1
        vloadunpackhps 64(%rax), %zmm11{%k1}                    # c1
                                # LOE zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm13 zmm22 zmm24 zmm31 k1 k2 k3 k4 k5 k6
..CL123:
..B3.53:                        # Preds ..B3.52 ..B3.50 Latency 1393
        vpshufd   $1, %zmm10, %zmm29                            # c1
        movl      $2, %eax                                      # c1
        vpshufd   $2, %zmm10, %zmm30                            # c5
        kmov      %eax, %k7                                     # c5
        vpshufd   $3, %zmm10, %zmm12                            # c9
        movq      4648(%rsp), %rax                              # c9
        vmovaps   %zmm31, %zmm29{%k7}                           # c13
        movq      4704(%rsp), %rdx                              # c13
        vpshufd   $0, %zmm31, %zmm10{%k7}                       # c17
        lea       (%rax,%rdx,4), %r15                           # c17
        vpshufd   $8, %zmm31, %zmm30{%k7}                       # c21
        movq      4720(%rsp), %rsi                              # c21
        vpshufd   $12, %zmm31, %zmm12{%k7}                      # c25
        movq      %r15, 4808(%rsp)                              # c25
        vmovaps   _const_15(%rip), %zmm25                       # c29
        vmovaps   _const_16(%rip), %zmm26                       # c33
        vmovaps   _const_6(%rip), %zmm28                        # c37
        vmovaps   _const_17(%rip), %zmm14                       # c41
        vmovaps   _const_18(%rip), %zmm15                       # c45
        vmovaps   _const_19(%rip), %zmm16                       # c49
        vmovaps   _const_7(%rip), %zmm17                        # c53
        vmovaps   _const_20(%rip), %zmm18                       # c57
        vmovaps   _const_8(%rip), %zmm19                        # c61
        vmovaps   _const_22(%rip), %zmm20                       # c65
        vmovaps   _const_9(%rip), %zmm21                        # c69
        vmovaps   _const_14(%rip), %zmm23                       # c73
        movq      4672(%rsp), %r15                              # c77
        lea       (%rax,%rsi,4), %rbx                           # c77
        movq      4712(%rsp), %rcx                              # c81
        lea       (%rax,%r15,4), %r15                           # c81
        movq      4784(%rsp), %r14                              # c85
        movq      %rbx, 4824(%rsp)                              # c85
        lea       (%rax,%rcx,4), %rsi                           # c89
        movq      %r15, 4800(%rsp)                              # c89
        lea       (%rax,%r14,4), %r14                           # c93
        movq      4776(%rsp), %r13                              # c93
        movq      4768(%rsp), %r12                              # c97
        lea       (%rax,%r13,4), %r13                           # c97
        movq      4760(%rsp), %r11                              # c101
        lea       (%rax,%r12,4), %r12                           # c101
        movq      4752(%rsp), %r10                              # c105
        lea       (%rax,%r11,4), %r11                           # c105
        movq      4744(%rsp), %r9                               # c109
        lea       (%rax,%r10,4), %r10                           # c109
        movq      4736(%rsp), %r8                               # c113
        lea       (%rax,%r9,4), %r9                             # c113
        movq      4728(%rsp), %rdi                              # c117
        lea       (%rax,%r8,4), %r8                             # c117
        movq      4696(%rsp), %rbx                              # c121
        lea       (%rax,%rdi,4), %rdi                           # c121
        movq      4688(%rsp), %rcx                              # c125
        lea       (%rax,%rbx,4), %rbx                           # c125
        movq      4680(%rsp), %rdx                              # c129
        lea       (%rax,%rcx,4), %rcx                           # c129
        movq      4664(%rsp), %r15                              # c133
        lea       (%rax,%rdx,4), %rdx                           # c133
        lea       (%rax,%r15,4), %rax                           # c137
        movl      $4, %r15d                                     # c137
        kmov      %r15d, %k7                                    # c141
        movq      %rax, 4848(%rsp)                              # c141
        vpshufd   $16, %zmm24, %zmm29{%k7}                      # c145
        movl      $8, %eax                                      # c145
        vpshufd   $0, %zmm24, %zmm10{%k7}                       # c149
        movq      %r14, %r15                                    # c149
        vmovaps   %zmm24, %zmm30{%k7}                           # c153
        andq      $63, %r15                                     # c153
        vpshufd   $48, %zmm24, %zmm12{%k7}                      # c157
        kmov      %eax, %k7                                     # c157
        vpshufd   $64, %zmm22, %zmm29{%k7}                      # c161
        movl      $16, %eax                                     # c161
        vpshufd   $0, %zmm22, %zmm10{%k7}                       # c165
        cmpq      $49, %r15                                     # c165
        vpshufd   $128, %zmm22, %zmm30{%k7}                     # c169
        vmovaps   %zmm22, %zmm12{%k7}                           # c173
        kmov      %eax, %k7                                     # c173
        vpxord    %zmm22, %zmm22, %zmm22                        # c177
        movl      $32, %eax                                     # c177
        vpermd    %zmm13, %zmm28, %zmm29{%k7}                   # c181
        vpermf32x4 $0, %zmm13, %zmm10{%k7}                      # c185
        vpermd    %zmm13, %zmm26, %zmm30{%k7}                   # c189
        vpermd    %zmm13, %zmm25, %zmm12{%k7}                   # c193
        kmov      %eax, %k7                                     # c193
        vpermf32x4 $0, %zmm0, %zmm29{%k7}                       # c197
        movl      $64, %eax                                     # c197
        vpermd    %zmm0, %zmm22, %zmm10{%k7}                    # c201
        vpermd    %zmm0, %zmm15, %zmm30{%k7}                    # c205
        vpermd    %zmm0, %zmm14, %zmm12{%k7}                    # c209
        kmov      %eax, %k7                                     # c209
        vpermd    %zmm1, %zmm17, %zmm29{%k7}                    # c213
        movl      $512, %eax                                    # c213
        vpermd    %zmm1, %zmm22, %zmm10{%k7}                    # c217
        vpermf32x4 $0, %zmm1, %zmm30{%k7}                       # c221
        vpermd    %zmm1, %zmm16, %zmm12{%k7}                    # c225
        kmov      %eax, %k7                                     # c225
        vmovaps   _const_21(%rip), %zmm1                        # c229
        vpermd    %zmm2, %zmm19, %zmm29{%k6}                    # c233
        movl      $1024, %eax                                   # c233
        vpermd    %zmm2, %zmm22, %zmm10{%k6}                    # c237
        vpermd    %zmm2, %zmm18, %zmm30{%k6}                    # c241
        vpermf32x4 $0, %zmm2, %zmm12{%k6}                       # c245
        vpermd    %zmm3, %zmm21, %zmm29{%k2}                    # c249
        vpermf32x4 $0, %zmm3, %zmm10{%k2}                       # c253
        vpermd    %zmm3, %zmm20, %zmm30{%k2}                    # c257
        vpermd    %zmm3, %zmm1, %zmm12{%k2}                     # c261
        vmovaps   _const_24(%rip), %zmm2                        # c265
        vmovaps   _const_23(%rip), %zmm3                        # c269
        vpermf32x4 $0, %zmm4, %zmm29{%k7}                       # c273
        vpermd    %zmm4, %zmm22, %zmm10{%k7}                    # c277
        vpermd    %zmm4, %zmm2, %zmm30{%k7}                     # c281
        vpermd    %zmm4, %zmm3, %zmm12{%k7}                     # c285
        kmov      %eax, %k7                                     # c285
        vmovaps   _const_10(%rip), %zmm4                        # c289
        vmovaps   _const_25(%rip), %zmm26                       # c293
        vpermd    %zmm5, %zmm4, %zmm29{%k7}                     # c297
        movl      $2048, %eax                                   # c297
        vpermd    %zmm5, %zmm22, %zmm10{%k7}                    # c301
        vpermf32x4 $0, %zmm5, %zmm30{%k7}                       # c305
        vpermd    %zmm5, %zmm26, %zmm12{%k7}                    # c309
        kmov      %eax, %k7                                     # c309
        vmovaps   _const_11(%rip), %zmm5                        # c313
        vmovaps   _const_26(%rip), %zmm26                       # c317
        vpermd    %zmm6, %zmm5, %zmm29{%k7}                     # c321
        movl      $4096, %eax                                   # c321
        vpermd    %zmm6, %zmm22, %zmm10{%k7}                    # c325
        vpermd    %zmm6, %zmm26, %zmm30{%k7}                    # c329
        vpermf32x4 $0, %zmm6, %zmm12{%k7}                       # c333
        kmov      %eax, %k7                                     # c333
        vmovaps   _const_12(%rip), %zmm6                        # c337
        vmovaps   _const_28(%rip), %zmm26                       # c341
        vmovaps   _const_27(%rip), %zmm25                       # c345
        vmovaps   _const_30(%rip), %zmm24                       # c349
        vmovaps   _const_29(%rip), %zmm13                       # c353
        vpermd    %zmm7, %zmm6, %zmm29{%k7}                     # c357
        movl      $8192, %eax                                   # c357
        vpermf32x4 $0, %zmm7, %zmm10{%k7}                       # c361
        vpermd    %zmm7, %zmm26, %zmm30{%k7}                    # c365
        vpermd    %zmm7, %zmm25, %zmm12{%k7}                    # c369
        kmov      %eax, %k7                                     # c369
        vpermf32x4 $0, %zmm8, %zmm29{%k7}                       # c373
        movl      $16384, %eax                                  # c373
        vpermd    %zmm8, %zmm22, %zmm10{%k7}                    # c377
        vpermd    %zmm8, %zmm24, %zmm30{%k7}                    # c381
        vpermd    %zmm8, %zmm13, %zmm12{%k7}                    # c385
        kmov      %eax, %k7                                     # c385
        vmovaps   _const_13(%rip), %zmm8                        # c389
        vmovaps   _const_31(%rip), %zmm26                       # c393
        vpermd    %zmm9, %zmm8, %zmm29{%k7}                     # c397
        movl      $32768, %eax                                  # c397
        vpermd    %zmm9, %zmm22, %zmm10{%k7}                    # c401
        vpermf32x4 $0, %zmm9, %zmm30{%k7}                       # c405
        vpermd    %zmm9, %zmm26, %zmm12{%k7}                    # c409
        kmov      %eax, %k7                                     # c409
        vpermd    %zmm11, %zmm22, %zmm10{%k7}                   # c413
        movl      $1, %eax                                      # c413
        vmovaps   _const_32(%rip), %zmm9                        # c417
        vaddps    _const_0(%rip){1to16}, %zmm10, %zmm25         # c421
        vpermd    %zmm11, %zmm23, %zmm29{%k7}                   # c425
        vpermd    %zmm11, %zmm9, %zmm30{%k7}                    # c429
        vpermf32x4 $0, %zmm11, %zmm12{%k7}                      # c433
        kmov      %eax, %k7                                     # c433
        valignd   $13, %zmm25, %zmm27, %zmm11                   # c437
        movq      4848(%rsp), %rax                              # c437
        vaddps    _const_0(%rip){1to16}, %zmm29, %zmm1          # c441
        vaddps    _const_0(%rip){1to16}, %zmm30, %zmm26         # c445
        vaddps    _const_0(%rip){1to16}, %zmm12, %zmm31         # c449
        vpshufd   $1, %zmm1, %zmm13                             # c453
        vmovaps   %zmm11, 2432(%rsp)                            # c453
        valignd   $14, %zmm25, %zmm27, %zmm11                   # c457
        vpshufd   $2, %zmm1, %zmm14                             # c461
        vpshufd   $3, %zmm1, %zmm15                             # c465
        vmovaps   %zmm11, 2496(%rsp)                            # c465
        vpermf32x4 $1, %zmm1, %zmm16                            # c469
        valignd   $5, %zmm1, %zmm27, %zmm17                     # c473
        valignd   $6, %zmm1, %zmm27, %zmm18                     # c477
        valignd   $7, %zmm1, %zmm27, %zmm19                     # c481
        vpermf32x4 $2, %zmm1, %zmm20                            # c485
        valignd   $9, %zmm1, %zmm27, %zmm21                     # c489
        valignd   $10, %zmm1, %zmm27, %zmm29                    # c493
        valignd   $11, %zmm1, %zmm27, %zmm30                    # c497
        vpermf32x4 $3, %zmm1, %zmm22                            # c501
        valignd   $13, %zmm1, %zmm27, %zmm23                    # c505
        valignd   $14, %zmm1, %zmm27, %zmm24                    # c509
        valignd   $15, %zmm1, %zmm27, %zmm0                     # c513
        vpackstorelps %zmm1, 4296(%rsp){%k7}                    # c517
        vpshufd   $1, %zmm25, %zmm1                             # c521
        vpshufd   $2, %zmm25, %zmm28                            # c525
        vpshufd   $3, %zmm25, %zmm12                            # c529
        vpermf32x4 $1, %zmm25, %zmm10                           # c533
        valignd   $5, %zmm25, %zmm27, %zmm9                     # c537
        valignd   $6, %zmm25, %zmm27, %zmm2                     # c541
        valignd   $7, %zmm25, %zmm27, %zmm3                     # c545
        vpermf32x4 $2, %zmm25, %zmm4                            # c549
        valignd   $9, %zmm25, %zmm27, %zmm5                     # c553
        valignd   $10, %zmm25, %zmm27, %zmm6                    # c557
        valignd   $11, %zmm25, %zmm27, %zmm7                    # c561
        vpermf32x4 $3, %zmm25, %zmm8                            # c565
        valignd   $15, %zmm25, %zmm27, %zmm11                   # c569
        vpackstorelps %zmm25, 4304(%rsp){%k7}                   # c573
        vpshufd   $1, %zmm26, %zmm25                            # c577
        vpackstorelps %zmm24, 4328(%rsp){%k7}                   # c581
        vbroadcastss 4304(%rsp), %zmm24                         # c585
        vpackstorelps %zmm26, 4312(%rsp){%k7}                   # c589
        vpackstorelps %zmm24, 1152(%rsp){%k5}                   # c593
        vpackstorelps %zmm0, 4336(%rsp){%k7}                    # c597
        vmovaps   2496(%rsp), %zmm0                             # c601
        vmovaps   %zmm25, 2560(%rsp)                            # c601
        vpshufd   $2, %zmm26, %zmm25                            # c605
        vmovaps   2560(%rsp), %zmm24                            # c609
        vpackstorelps %zmm31, 4320(%rsp){%k7}                   # c613
        vpackstorelps %zmm24, 4344(%rsp){%k7}                   # c617
        vpackstorelps %zmm0, 2048(%rsp){%k5}                    # c621
        vbroadcastss 4328(%rsp), %zmm0                          # c625
        vpackstorelps %zmm10, 1408(%rsp){%k5}                   # c629
        vpackstorelps %zmm2, 1536(%rsp){%k5}                    # c633
        vbroadcastss 4296(%rsp), %zmm10                         # c637
        vpackstorelps %zmm17, 1476(%rsp){%k5}                   # c641
        vbroadcastss 4312(%rsp), %zmm2                          # c645
        vbroadcastss 4320(%rsp), %zmm17                         # c649
        vpackstorelps %zmm0, 2052(%rsp){%k5}                    # c653
        vpackstorelps %zmm1, 1216(%rsp){%k5}                    # c657
        vpackstorelps %zmm28, 1280(%rsp){%k5}                   # c661
        vpackstorelps %zmm12, 1344(%rsp){%k5}                   # c665
        vpackstorelps %zmm9, 1472(%rsp){%k5}                    # c669
        vpackstorelps %zmm3, 1600(%rsp){%k5}                    # c673
        vpackstorelps %zmm4, 1664(%rsp){%k5}                    # c677
        vpackstorelps %zmm5, 1728(%rsp){%k5}                    # c681
        vpackstorelps %zmm6, 1792(%rsp){%k5}                    # c685
        vpackstorelps %zmm7, 1856(%rsp){%k5}                    # c689
        vpackstorelps %zmm8, 1920(%rsp){%k5}                    # c693
        vpackstorelps %zmm11, 2112(%rsp){%k5}                   # c697
        vpackstorelps %zmm10, 1156(%rsp){%k5}                   # c701
        vpackstorelps %zmm13, 1220(%rsp){%k5}                   # c705
        vpackstorelps %zmm14, 1284(%rsp){%k5}                   # c709
        vpackstorelps %zmm15, 1348(%rsp){%k5}                   # c713
        vpackstorelps %zmm16, 1412(%rsp){%k5}                   # c717
        vpackstorelps %zmm18, 1540(%rsp){%k5}                   # c721
        vpackstorelps %zmm19, 1604(%rsp){%k5}                   # c725
        vpackstorelps %zmm20, 1668(%rsp){%k5}                   # c729
        vpackstorelps %zmm21, 1732(%rsp){%k5}                   # c733
        vpackstorelps %zmm29, 1796(%rsp){%k5}                   # c737
        vpackstorelps %zmm30, 1860(%rsp){%k5}                   # c741
        vpackstorelps %zmm22, 1924(%rsp){%k5}                   # c745
        vpackstorelps %zmm23, 1988(%rsp){%k5}                   # c749
        vbroadcastss 4336(%rsp), %zmm1                          # c753
        vpackstorelps %zmm2, 1160(%rsp){%k5}                    # c757
        vbroadcastss 4344(%rsp), %zmm3                          # c761
        vpackstorelps %zmm17, 1164(%rsp){%k5}                   # c765
        vpackstorelps %zmm1, 2116(%rsp){%k5}                    # c769
        vpackstorelps %zmm3, 1224(%rsp){%k5}                    # c773
        vmovaps   %zmm25, 2624(%rsp)                            # c777
        vpshufd   $3, %zmm26, %zmm25                            # c781
        vmovaps   2624(%rsp), %zmm24                            # c785
        movb      %al, %al                                      # c785
        vmovaps   %zmm25, 2688(%rsp)                            # c789
        vpermf32x4 $1, %zmm26, %zmm25                           # c793
        vpackstorelps %zmm24, 4352(%rsp){%k7}                   # c797
        vmovaps   2688(%rsp), %zmm24                            # c801
        vmovaps   %zmm25, 2752(%rsp)                            # c801
        valignd   $5, %zmm26, %zmm27, %zmm25                    # c805
        vpackstorelps %zmm24, 4360(%rsp){%k7}                   # c809
        vmovaps   2752(%rsp), %zmm24                            # c813
        vmovaps   %zmm25, 2816(%rsp)                            # c813
        valignd   $6, %zmm26, %zmm27, %zmm25                    # c817
        vpackstorelps %zmm24, 4368(%rsp){%k7}                   # c821
        vmovaps   2816(%rsp), %zmm24                            # c825
        vmovaps   %zmm25, 2880(%rsp)                            # c825
        valignd   $7, %zmm26, %zmm27, %zmm25                    # c829
        vpackstorelps %zmm24, 4376(%rsp){%k7}                   # c833
        vmovaps   2880(%rsp), %zmm24                            # c837
        vmovaps   %zmm25, 2944(%rsp)                            # c837
        vpermf32x4 $2, %zmm26, %zmm25                           # c841
        vpackstorelps %zmm24, 4384(%rsp){%k7}                   # c845
        vmovaps   2944(%rsp), %zmm24                            # c849
        vmovaps   %zmm25, 3008(%rsp)                            # c849
        valignd   $9, %zmm26, %zmm27, %zmm25                    # c853
        vpackstorelps %zmm24, 4392(%rsp){%k7}                   # c857
        vmovaps   3008(%rsp), %zmm24                            # c861
        vmovaps   %zmm25, 3072(%rsp)                            # c861
        valignd   $10, %zmm26, %zmm27, %zmm25                   # c865
        vpackstorelps %zmm24, 4400(%rsp){%k7}                   # c869
        vmovaps   3072(%rsp), %zmm24                            # c873
        vmovaps   %zmm25, 3136(%rsp)                            # c873
        valignd   $11, %zmm26, %zmm27, %zmm25                   # c877
        vpackstorelps %zmm24, 4408(%rsp){%k7}                   # c881
        vmovaps   3136(%rsp), %zmm24                            # c885
        vmovaps   %zmm25, 3200(%rsp)                            # c885
        vpermf32x4 $3, %zmm26, %zmm25                           # c889
        vpackstorelps %zmm24, 4416(%rsp){%k7}                   # c893
        vmovaps   3200(%rsp), %zmm24                            # c897
        vmovaps   %zmm25, 3264(%rsp)                            # c897
        valignd   $13, %zmm26, %zmm27, %zmm25                   # c901
        vpackstorelps %zmm24, 4424(%rsp){%k7}                   # c905
        vmovaps   3264(%rsp), %zmm24                            # c909
        vmovaps   %zmm25, 3328(%rsp)                            # c909
        valignd   $14, %zmm26, %zmm27, %zmm25                   # c913
        vpackstorelps %zmm24, 4432(%rsp){%k7}                   # c917
        vmovaps   3328(%rsp), %zmm24                            # c921
        vmovaps   %zmm25, 3392(%rsp)                            # c921
        valignd   $15, %zmm26, %zmm27, %zmm25                   # c925
        vpshufd   $1, %zmm31, %zmm26                            # c929
        vpackstorelps %zmm25, 4448(%rsp){%k7}                   # c933
        vpackstorelps %zmm24, 4440(%rsp){%k7}                   # c937
        vmovaps   3392(%rsp), %zmm24                            # c941
        vmovaps   %zmm26, 3456(%rsp)                            # c941
        vpshufd   $2, %zmm31, %zmm26                            # c945
        vmovaps   3456(%rsp), %zmm25                            # c949
        vbroadcastss 4352(%rsp), %zmm4                          # c953
        vpackstorelps %zmm25, 4456(%rsp){%k7}                   # c957
        vbroadcastss 4360(%rsp), %zmm5                          # c961
        vbroadcastss 4368(%rsp), %zmm6                          # c965
        vbroadcastss 4376(%rsp), %zmm7                          # c969
        vbroadcastss 4384(%rsp), %zmm8                          # c973
        vbroadcastss 4392(%rsp), %zmm9                          # c977
        vbroadcastss 4400(%rsp), %zmm10                         # c981
        vbroadcastss 4408(%rsp), %zmm11                         # c985
        vbroadcastss 4416(%rsp), %zmm12                         # c989
        vbroadcastss 4424(%rsp), %zmm13                         # c993
        vbroadcastss 4432(%rsp), %zmm14                         # c997
        vbroadcastss 4440(%rsp), %zmm15                         # c1001
        vpackstorelps %zmm24, 2056(%rsp){%k5}                   # c1005
        vbroadcastss 4448(%rsp), %zmm16                         # c1009
        vbroadcastss 4456(%rsp), %zmm18                         # c1013
        vpackstorelps %zmm4, 1288(%rsp){%k5}                    # c1017
        vpackstorelps %zmm5, 1352(%rsp){%k5}                    # c1021
        vpackstorelps %zmm6, 1416(%rsp){%k5}                    # c1025
        vpackstorelps %zmm7, 1480(%rsp){%k5}                    # c1029
        vpackstorelps %zmm8, 1544(%rsp){%k5}                    # c1033
        vpackstorelps %zmm9, 1608(%rsp){%k5}                    # c1037
        vpackstorelps %zmm10, 1672(%rsp){%k5}                   # c1041
        vpackstorelps %zmm11, 1736(%rsp){%k5}                   # c1045
        vpackstorelps %zmm12, 1800(%rsp){%k5}                   # c1049
        vpackstorelps %zmm13, 1864(%rsp){%k5}                   # c1053
        vpackstorelps %zmm14, 1928(%rsp){%k5}                   # c1057
        vpackstorelps %zmm15, 1992(%rsp){%k5}                   # c1061
        vpackstorelps %zmm16, 2120(%rsp){%k5}                   # c1065
        vpackstorelps %zmm18, 1228(%rsp){%k5}                   # c1069
        vmovaps   1216(%rsp), %zmm1                             # c1073
        vmovaps   %zmm26, 3520(%rsp)                            # c1073
        vpshufd   $3, %zmm31, %zmm26                            # c1077
        vmovaps   3520(%rsp), %zmm25                            # c1081
        movb      %al, %al                                      # c1081
        vmovaps   %zmm26, 3584(%rsp)                            # c1085
        vpermf32x4 $1, %zmm31, %zmm26                           # c1089
        vpackstorelps %zmm25, 4464(%rsp){%k7}                   # c1093
        vmovaps   3584(%rsp), %zmm25                            # c1097
        vmovaps   %zmm26, 3648(%rsp)                            # c1097
        valignd   $5, %zmm31, %zmm27, %zmm26                    # c1101
        vpackstorelps %zmm25, 4472(%rsp){%k7}                   # c1105
        vmovaps   3648(%rsp), %zmm25                            # c1109
        vmovaps   %zmm26, 3712(%rsp)                            # c1109
        valignd   $6, %zmm31, %zmm27, %zmm26                    # c1113
        vpackstorelps %zmm25, 4480(%rsp){%k7}                   # c1117
        vmovaps   3712(%rsp), %zmm25                            # c1121
        vmovaps   %zmm26, 3776(%rsp)                            # c1121
        valignd   $7, %zmm31, %zmm27, %zmm26                    # c1125
        vpackstorelps %zmm25, 4488(%rsp){%k7}                   # c1129
        vmovaps   3776(%rsp), %zmm25                            # c1133
        vmovaps   %zmm26, 3840(%rsp)                            # c1133
        vpermf32x4 $2, %zmm31, %zmm26                           # c1137
        vpackstorelps %zmm25, 4496(%rsp){%k7}                   # c1141
        vmovaps   3840(%rsp), %zmm25                            # c1145
        vmovaps   %zmm26, 3904(%rsp)                            # c1145
        valignd   $9, %zmm31, %zmm27, %zmm26                    # c1149
        vpackstorelps %zmm25, 4504(%rsp){%k7}                   # c1153
        vmovaps   3904(%rsp), %zmm25                            # c1157
        vmovaps   %zmm26, 3968(%rsp)                            # c1157
        valignd   $10, %zmm31, %zmm27, %zmm26                   # c1161
        vpackstorelps %zmm25, 4512(%rsp){%k7}                   # c1165
        vmovaps   3968(%rsp), %zmm25                            # c1169
        vmovaps   %zmm26, 4032(%rsp)                            # c1169
        valignd   $11, %zmm31, %zmm27, %zmm26                   # c1173
        vpackstorelps %zmm25, 4520(%rsp){%k7}                   # c1177
        vmovaps   4032(%rsp), %zmm25                            # c1181
        vmovaps   %zmm26, 4096(%rsp)                            # c1181
        vpermf32x4 $3, %zmm31, %zmm26                           # c1185
        vpackstorelps %zmm25, 4528(%rsp){%k7}                   # c1189
        vmovaps   4096(%rsp), %zmm25                            # c1193
        vmovaps   %zmm26, 4160(%rsp)                            # c1193
        valignd   $13, %zmm31, %zmm27, %zmm26                   # c1197
        vpackstorelps %zmm25, 4536(%rsp){%k7}                   # c1201
        vmovaps   4160(%rsp), %zmm25                            # c1205
        vmovaps   %zmm26, 4224(%rsp)                            # c1205
        valignd   $14, %zmm31, %zmm27, %zmm26                   # c1209
        valignd   $15, %zmm31, %zmm27, %zmm27                   # c1213
        vmovaps   2432(%rsp), %zmm31                            # c1217
        vpackstorelps %zmm25, 4544(%rsp){%k7}                   # c1221
        vbroadcastss 4544(%rsp), %zmm0                          # c1225
        vmovaps   4224(%rsp), %zmm25                            # c1229
        vpackstorelps %zmm31, 1984(%rsp){%k5}                   # c1233
        vbroadcastss 4464(%rsp), %zmm19                         # c1237
        vbroadcastss 4472(%rsp), %zmm20                         # c1241
        vbroadcastss 4480(%rsp), %zmm21                         # c1245
        vbroadcastss 4488(%rsp), %zmm22                         # c1249
        vbroadcastss 4496(%rsp), %zmm23                         # c1253
        vbroadcastss 4504(%rsp), %zmm24                         # c1257
        vbroadcastss 4512(%rsp), %zmm28                         # c1261
        vbroadcastss 4520(%rsp), %zmm29                         # c1265
        vbroadcastss 4528(%rsp), %zmm30                         # c1269
        vbroadcastss 4536(%rsp), %zmm31                         # c1273
        vpackstorelps %zmm0, 1932(%rsp){%k5}                    # c1277
        vmovaps   1152(%rsp), %zmm0                             # c1281
        vpackstorelps %zmm19, 1292(%rsp){%k5}                   # c1285
        vpackstorelps %zmm20, 1356(%rsp){%k5}                   # c1289
        vpackstorelps %zmm21, 1420(%rsp){%k5}                   # c1293
        vpackstorelps %zmm22, 1484(%rsp){%k5}                   # c1297
        vpackstorelps %zmm23, 1548(%rsp){%k5}                   # c1301
        vpackstorelps %zmm24, 1612(%rsp){%k5}                   # c1305
        vpackstorelps %zmm28, 1676(%rsp){%k5}                   # c1309
        vpackstorelps %zmm29, 1740(%rsp){%k5}                   # c1313
        vpackstorelps %zmm30, 1804(%rsp){%k5}                   # c1317
        vpackstorelps %zmm31, 1868(%rsp){%k5}                   # c1321
        vpackstorelps %zmm25, 1996(%rsp){%k5}                   # c1325
        vpackstorelps %zmm26, 2060(%rsp){%k5}                   # c1329
        vpackstorelps %zmm27, 2124(%rsp){%k5}                   # c1333
        vmovaps   1280(%rsp), %zmm2                             # c1337
        vmovaps   1344(%rsp), %zmm3                             # c1341
        vmovaps   1408(%rsp), %zmm4                             # c1345
        vmovaps   1472(%rsp), %zmm5                             # c1349
        vmovaps   1536(%rsp), %zmm6                             # c1353
        vmovaps   1600(%rsp), %zmm7                             # c1357
        vmovaps   1664(%rsp), %zmm8                             # c1361
        vmovaps   1728(%rsp), %zmm9                             # c1365
        vmovaps   1792(%rsp), %zmm10                            # c1369
        vmovaps   1856(%rsp), %zmm11                            # c1373
        vmovaps   1920(%rsp), %zmm12                            # c1377
        vmovaps   1984(%rsp), %zmm13                            # c1381
        vmovaps   2048(%rsp), %zmm14                            # c1385
        vmovaps   2112(%rsp), %zmm15                            # c1389
        vpackstorelps %zmm0, (%r14){%k1}                        # c1389
        jb        ..B3.56       # Prob 0%                       # c1393
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 eax al ah zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL126:
..B3.55:                        # Preds ..B3.53 Latency 1
        vpackstorehps %zmm0, 64(%r14){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 eax al ah zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL125:
..B3.56:                        # Preds ..B3.55 ..B3.53 Latency 9
        movq      %r13, %r14                                    # c1
        vpackstorelps %zmm1, (%r13){%k1}                        # c1
        andq      $63, %r14                                     # c5
        cmpq      $49, %r14                                     # c9
        jb        ..B3.59       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 eax al ah zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL128:
..B3.58:                        # Preds ..B3.56 Latency 1
        vpackstorehps %zmm1, 64(%r13){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 eax al ah zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL127:
..B3.59:                        # Preds ..B3.58 ..B3.56 Latency 9
        movq      %r12, %r13                                    # c1
        vpackstorelps %zmm2, (%r12){%k1}                        # c1
        andq      $63, %r13                                     # c5
        cmpq      $49, %r13                                     # c9
        jb        ..B3.62       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 eax al ah zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL130:
..B3.61:                        # Preds ..B3.59 Latency 1
        vpackstorehps %zmm2, 64(%r12){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 eax al ah zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL129:
..B3.62:                        # Preds ..B3.61 ..B3.59 Latency 9
        movq      %r11, %r12                                    # c1
        vpackstorelps %zmm3, (%r11){%k1}                        # c1
        andq      $63, %r12                                     # c5
        cmpq      $49, %r12                                     # c9
        jb        ..B3.65       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 eax al ah zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL132:
..B3.64:                        # Preds ..B3.62 Latency 1
        vpackstorehps %zmm3, 64(%r11){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax al ah zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL131:
..B3.65:                        # Preds ..B3.64 ..B3.62 Latency 9
        movq      %r10, %r11                                    # c1
        vpackstorelps %zmm4, (%r10){%k1}                        # c1
        andq      $63, %r11                                     # c5
        cmpq      $49, %r11                                     # c9
        jb        ..B3.68       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 eax al ah zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL134:
..B3.67:                        # Preds ..B3.65 Latency 1
        vpackstorehps %zmm4, 64(%r10){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL133:
..B3.68:                        # Preds ..B3.67 ..B3.65 Latency 9
        movq      %r9, %r10                                     # c1
        vpackstorelps %zmm5, (%r9){%k1}                         # c1
        andq      $63, %r10                                     # c5
        cmpq      $49, %r10                                     # c9
        jb        ..B3.71       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 eax al ah zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL136:
..B3.70:                        # Preds ..B3.68 Latency 1
        vpackstorehps %zmm5, 64(%r9){%k1}                       # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 eax al ah zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL135:
..B3.71:                        # Preds ..B3.70 ..B3.68 Latency 9
        movq      %r8, %r9                                      # c1
        vpackstorelps %zmm6, (%r8){%k1}                         # c1
        andq      $63, %r9                                      # c5
        cmpq      $49, %r9                                      # c9
        jb        ..B3.74       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi r8 eax al ah zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL138:
..B3.73:                        # Preds ..B3.71 Latency 1
        vpackstorehps %zmm6, 64(%r8){%k1}                       # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi rdi eax al ah zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL137:
..B3.74:                        # Preds ..B3.73 ..B3.71 Latency 9
        movq      %rdi, %r8                                     # c1
        vpackstorelps %zmm7, (%rdi){%k1}                        # c1
        andq      $63, %r8                                      # c5
        cmpq      $49, %r8                                      # c9
        jb        ..B3.77       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi rdi eax al ah zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL140:
..B3.76:                        # Preds ..B3.74 Latency 1
        vpackstorehps %zmm7, 64(%rdi){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi eax al ah zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL139:
..B3.77:                        # Preds ..B3.76 ..B3.74 Latency 13
        movq      4824(%rsp), %rdi                              # c1
        movq      %rdi, %r8                                     # c5
        vpackstorelps %zmm8, (%rdi){%k1}                        # c5
        andq      $63, %r8                                      # c9
        cmpq      $49, %r8                                      # c13
        jb        ..B3.80       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi eax edi al ah dil zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL142:
..B3.79:                        # Preds ..B3.77 Latency 1
        vpackstorehps %zmm8, 64(%rdi){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx rsi eax al ah zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL141:
..B3.80:                        # Preds ..B3.79 ..B3.77 Latency 9
        movq      %rsi, %rdi                                    # c1
        vpackstorelps %zmm9, (%rsi){%k1}                        # c1
        andq      $63, %rdi                                     # c5
        cmpq      $49, %rdi                                     # c9
        jb        ..B3.83       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx rsi eax al ah zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL144:
..B3.82:                        # Preds ..B3.80 Latency 1
        vpackstorehps %zmm9, 64(%rsi){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx eax al ah zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL143:
..B3.83:                        # Preds ..B3.82 ..B3.80 Latency 13
        movq      4808(%rsp), %rsi                              # c1
        movq      %rsi, %rdi                                    # c5
        vpackstorelps %zmm10, (%rsi){%k1}                       # c5
        andq      $63, %rdi                                     # c9
        cmpq      $49, %rdi                                     # c13
        jb        ..B3.86       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi eax esi al ah sil zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL146:
..B3.85:                        # Preds ..B3.83 Latency 1
        vpackstorehps %zmm10, 64(%rsi){%k1}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx rbx eax al ah zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL145:
..B3.86:                        # Preds ..B3.85 ..B3.83 Latency 9
        movq      %rbx, %rsi                                    # c1
        vpackstorelps %zmm11, (%rbx){%k1}                       # c1
        andq      $63, %rsi                                     # c5
        cmpq      $49, %rsi                                     # c9
        jb        ..B3.89       # Prob 0%                       # c9
                                # LOE rax rdx rcx rbx eax al ah zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL148:
..B3.88:                        # Preds ..B3.86 Latency 1
        vpackstorehps %zmm11, 64(%rbx){%k1}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx rcx eax al ah zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL147:
..B3.89:                        # Preds ..B3.88 ..B3.86 Latency 9
        movq      %rcx, %rbx                                    # c1
        vpackstorelps %zmm12, (%rcx){%k1}                       # c1
        andq      $63, %rbx                                     # c5
        cmpq      $49, %rbx                                     # c9
        jb        ..B3.92       # Prob 0%                       # c9
                                # LOE rax rdx rcx eax al ah zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL150:
..B3.91:                        # Preds ..B3.89 Latency 1
        vpackstorehps %zmm12, 64(%rcx){%k1}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax rdx eax al ah zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL149:
..B3.92:                        # Preds ..B3.91 ..B3.89 Latency 9
        movq      %rdx, %rcx                                    # c1
        vpackstorelps %zmm13, (%rdx){%k1}                       # c1
        andq      $63, %rcx                                     # c5
        cmpq      $49, %rcx                                     # c9
        jb        ..B3.95       # Prob 0%                       # c9
                                # LOE rax rdx eax al ah zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL152:
..B3.94:                        # Preds ..B3.92 Latency 1
        vpackstorehps %zmm13, 64(%rdx){%k1}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax eax al ah zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL151:
..B3.95:                        # Preds ..B3.94 ..B3.92 Latency 13
        movq      4800(%rsp), %rdx                              # c1
        movq      %rdx, %rcx                                    # c5
        vpackstorelps %zmm14, (%rdx){%k1}                       # c5
        andq      $63, %rcx                                     # c9
        cmpq      $49, %rcx                                     # c13
        jb        ..B3.98       # Prob 0%                       # c13
                                # LOE rax rdx eax edx al dl ah dh zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL154:
..B3.97:                        # Preds ..B3.95 Latency 1
        vpackstorehps %zmm14, 64(%rdx){%k1}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rax eax al ah zmm15 k1 k2 k3 k4 k5 k6
..CL153:
..B3.98:                        # Preds ..B3.97 ..B3.95 Latency 9
        movq      %rax, %rdx                                    # c1
        vpackstorelps %zmm15, (%rax){%k1}                       # c1
        andq      $63, %rdx                                     # c5
        cmpq      $49, %rdx                                     # c9
        jb        ..B3.101      # Prob 0%                       # c9
                                # LOE rax eax al ah zmm15 k1 k2 k3 k4 k5 k6
..CL156:
..B3.100:                       # Preds ..B3.98 Latency 1
        vpackstorehps %zmm15, 64(%rax){%k1}                     # c1
        movb      %dl, %dl                                      # c1
                                # LOE k1 k2 k3 k4 k5 k6
..CL155:
..B3.101:                       # Preds ..B3.100 ..B3.98 Latency 57
        vmovaps   2304(%rsp), %zmm0                             # c1
        vpaddsetcd 2240(%rsp), %k7, %zmm0{%k4}                  # c5
        vmovaps   2368(%rsp), %zmm1                             # c9
        movb      %al, %al                                      # c9
        kmov      %k7, %eax                                     # c13
        movq      4656(%rsp), %rdx                              # c13
        addl      %eax, %eax                                    # c17
        kmov      %eax, %k7                                     # c21
        vpadcd    2240(%rsp), %k7, %zmm0{%k3}                   # c25
        vpaddsetcd 2240(%rsp), %k7, %zmm1{%k4}                  # c29
        movb      %al, %al                                      # c29
        vmovaps   %zmm0, 2304(%rsp)                             # c33
        movb      %al, %al                                      # c33
        kmov      %k7, %ecx                                     # c37
        addl      %ecx, %ecx                                    # c41
        kmov      %ecx, %k7                                     # c45
        decq      %rdx                                          # c45
        vpadcd    2240(%rsp), %k7, %zmm1{%k3}                   # c49
        movq      %rdx, 4656(%rsp)                              # c49
        nop                                                     # c53
        vmovaps   %zmm1, 2368(%rsp)                             # c57
        jne       ..B3.5        # Prob 0%                       # c57
                                # LOE k1 k2 k3 k4 k5 k6
..B3.102:                       # Preds ..B3.101 Latency 25
        vmovaps   2176(%rsp), %zmm0                             # c1
        movb      %al, %al                                      # c1
        movq      4560(%rsp), %rbx                              # c5
        movq      4568(%rsp), %r8                               # c5
        movq      4576(%rsp), %r14                              # c9
        movq      4584(%rsp), %r9                               # c9
        movq      4592(%rsp), %rax                              # c13
        movq      4648(%rsp), %rdi                              # c13
        movl      4600(%rsp), %r10d                             # c17
        movq      4608(%rsp), %r11                              # c17
        movq      4616(%rsp), %rsi                              # c21
        movq      4624(%rsp), %rcx                              # c21
        movq      4632(%rsp), %rdx                              # c25
        movq      4640(%rsp), %r12                              # c25
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d al dl cl bl ah dh ch bh sil dil r8b r9b r10b r11b r12b r14b zmm0 k1 k2 k3 k4 k5 k6
..CL157:
..B3.103:                       # Preds ..B3.102 Latency 5
        incq      %r14                                          # c1
        incq      %r9                                           # c1
        cmpq      %rsi, %r14                                    # c5
        jne       ..B3.4        # Prob 0%                       # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r10d r11d r12d al dl cl bl ah dh ch bh sil dil r10b r11b r12b zmm0 k1 k2 k3 k4 k5 k6
..B3.104:                       # Preds ..B3.103 Latency 1
        movq      4552(%rsp), %r13                              # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL89:
..B3.105:                       # Preds ..B3.104 ..B3.1 Latency 1
        cmpq      %rbx, %r11                                    # c1
        je        ..B3.119      # Prob 0%                       # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL159:
..B3.107:                       # Preds ..B3.105 Latency 55
        movl      %esi, %r8d                                    # c1
        imull     %eax, %r8d                                    # c5
        movl      %ebx, %r14d                                   # c15
        subq      %r11, %rbx                                    # c19
        addl      %r8d, %edx                                    # c19
        imull     %r12d, %r11d                                  # c23
        imull     %r10d, %edx                                   # c33
        addl      %r14d, %ecx                                   # c43
        xorl      %r9d, %r9d                                    # c43
        addl      %r11d, %ecx                                   # c47
        lea       (%rdx,%rcx,4), %eax                           # c51
        movl      $15, %edx                                     # c51
        kmov      %edx, %k1                                     # c55
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL160:
..B3.108:                       # Preds ..B3.117 ..B3.107 Latency 1
        movl      %eax, %ecx                                    # c1
        movq      %rbx, %rdx                                    # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL161:
..B3.109:                       # Preds ..B3.115 ..B3.108 Latency 21
        movslq    %ecx, %r12                                    # c1
        lea       (%r13,%r12,4), %r11                           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vloadunpacklps (%r11), %zmm0{%k1}                       # c17
        cmpq      $49, %r8                                      # c17
        jb        ..B3.112      # Prob 0%                       # c21
                                # LOE rdx rbx rsi rdi r9 r11 r12 r13 eax ecx r10d zmm0 k1
..CL163:
..B3.111:                       # Preds ..B3.109 Latency 1
        vloadunpackhps 64(%r11), %zmm0{%k1}                     # c1
                                # LOE rdx rbx rsi rdi r9 r12 r13 eax ecx r10d zmm0 k1
..CL162:
..B3.112:                       # Preds ..B3.111 ..B3.109 Latency 17
        lea       (%rdi,%r12,4), %r11                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vpackstorelps %zmm0, (%r11){%k1}                        # c13
        cmpq      $49, %r8                                      # c17
        jb        ..B3.115      # Prob 0%                       # c17
                                # LOE rdx rbx rsi rdi r9 r11 r13 eax ecx r10d zmm0 k1
..CL165:
..B3.114:                       # Preds ..B3.112 Latency 1
        vpackstorehps %zmm0, 64(%r11){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL164:
..B3.115:                       # Preds ..B3.114 ..B3.112 Latency 5
        addl      $4, %ecx                                      # c1
        incq      %rdx                                          # c5
        jne       ..B3.109      # Prob 0%                       # c5
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL166:
..B3.117:                       # Preds ..B3.115 Latency 5
        incq      %r9                                           # c1
        addl      %r10d, %eax                                   # c1
        cmpq      %rsi, %r9                                     # c5
        jne       ..B3.108      # Prob 0%                       # c5
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL158:
..B3.119:                       # Preds ..B3.117 ..B3.105 Latency 25
        addq      $4888, %rsp                                   # c1
        popq      %rbx                                          # c5
        popq      %r15                                          # c9
        popq      %r14                                          # c13
        popq      %r13                                          # c17
        popq      %r12                                          # c21
        movq      %rbp, %rsp                                    # c25
        popq      %rbp                                          #
        ret                                                     #
        .align    16,0x90
                                # LOE
# mark_end;
	.type	read_4,@function
	.size	read_4,.-read_4
        .align 64
        .globl _const_33
_const_33:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_34
_const_34:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_35
_const_35:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_36
_const_36:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_37
_const_37:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_38
_const_38:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_39
_const_39:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_40
_const_40:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_41
_const_41:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_42
_const_42:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_43
_const_43:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_44
_const_44:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
        .long 0
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_45
_const_45:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_46
_const_46:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_47
_const_47:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_48
_const_48:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .long 0
        .align 64
        .globl _const_49
_const_49:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .long 0
        .long 0
        .align 64
        .globl _const_50
_const_50:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
        .long 0
        .long 0
        .align 64
        .globl _const_51
_const_51:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 7
        .long 0
        .align 64
        .globl _const_52
_const_52:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .long 0
        .align 64
        .globl _const_53
_const_53:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
        .long 0
        .align 64
        .globl _const_54
_const_54:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 6
        .align 64
        .globl _const_55
_const_55:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 5
        .align 64
        .globl _const_56
_const_56:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 4
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_8
read_8:
..B4.1:                         # Preds ..B4.0 Latency 83
        pushq     %rbp                                          #
        movq      %rsp, %rbp                                    #
        andq      $-64, %rsp                                    #
        pushq     %r12                                          # c1
        pushq     %r13                                          # c5
        pushq     %r14                                          # c9
        pushq     %r15                                          # c13
        pushq     %rbx                                          # c17
        subq      $9560, %rsp                                   # c21
        movq      %rsi, %rax                                    # c21
        movq      88(%rdi), %rsi                                # c25
        movq      80(%rdi), %r11                                # c25
        movq      (%rax), %r12                                  # c29
        movq      8(%rax), %rax                                 # c29
        movq      %r11, %r15                                    # c33
        movq      %rsi, %r9                                     # c33
        imulq     %r12, %r15                                    # c37
        imulq     %rax, %r9                                     # c48
        movq      %r11, %r8                                     # c59
        movq      40(%rdi), %rdx                                # c59
        sarq      $4, %r8                                       # c63
        movq      32(%rdi), %rcx                                # c63
        movq      %r11, %rbx                                    # c67
        addq      %rcx, %r15                                    # c67
        andq      $-16, %rbx                                    # c71
        addq      %rdx, %r9                                     # c71
        movq      (%rdi), %r13                                  # c75
        movl      16(%rdi), %r10d                               # c75
        movq      8(%rdi), %rdi                                 # c79
        testq     %r8, %r8                                      # c79
        je        ..B4.105      # Prob 0%                       # c83
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r13 r15 r10d
..CL168:
..B4.3:                         # Preds ..B4.1 Latency 93
        vmovaps   _const_3(%rip), %zmm5                         # c1
        movq      %r15, 8448(%rsp)                              # c5
        xorl      %r14d, %r14d                                  # c5
        vpbroadcastq 8448(%rsp), %zmm2                          # c9
        vmovaps   %zmm2, %zmm0                                  # c13
        movq      %rax, 2176(%rsp)                              # c13
        movl      $255, %eax                                    # c17
        movq      %r13, 9232(%rsp)                              # c17
        kmov      %eax, %k4                                     # c21
        movl      $21845, %eax                                  # c21
        kmov      %eax, %k3                                     # c25
        movl      $1, %r13d                                     # c25
        vpaddsetcd _const_1(%rip), %k1, %zmm0{%k3}              # c29
        vpaddsetcd _const_2(%rip), %k5, %zmm2{%k3}              # c33
        kmov      %k1, %r15d                                    # c37
        movq      2176(%rsp), %rax                              # c37
        addl      %r15d, %r15d                                  # c41
        kmov      %r15d, %k2                                    # c45
        movl      $43690, %r15d                                 # c45
        kmov      %r15d, %k1                                    # c49
        kmov      %k5, %r15d                                    # c49
        vpadcd    _const_1(%rip), %k2, %zmm0{%k1}               # c53
        vpsrld    $29, %zmm0, %zmm1                             # c57
        addl      %r15d, %r15d                                  # c57
        vpslld    $3, %zmm0, %zmm6                              # c61
        kmov      %r15d, %k6                                    # c61
        vpadcd    _const_2(%rip), %k6, %zmm2{%k1}               # c65
        vpsrld    $29, %zmm2, %zmm3                             # c69
        kmov      %r13d, %k5                                    # c69
        vpslld    $3, %zmm2, %zmm4                              # c73
        movl      $2, %r13d                                     # c73
        vpord     %zmm3{cdab}, %zmm4, %zmm4{%k1}                # c77
        kmov      %r13d, %k6                                    # c77
        vpord     %zmm1{cdab}, %zmm6, %zmm6{%k1}                # c81
        movl      $4, %r13d                                     # c81
        vpermd    %zmm4, %zmm5, %zmm0                           # c85
        kmov      %r13d, %k2                                    # c85
        vpermd    %zmm6, %zmm5, %zmm0{%k4}                      # c89
        vpxord    %zmm12, %zmm12, %zmm12                        # c93
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r11 r12 r14 r10d zmm0 zmm12 k1 k2 k3 k4 k5 k6
..CL169:
..B4.4:                         # Preds ..B4.103 ..B4.3 Latency 95
        movl      %r9d, %r13d                                   # c1
        imull     %r10d, %r13d                                  # c5
        vmovaps   _const_4(%rip), %zmm2                         # c15
        vmovaps   _const_5(%rip), %zmm1                         # c19
        movl      %r13d, 8448(%rsp)                             # c23
        vpaddd    8448(%rsp){1to16}, %zmm0, %zmm3               # c27
        vpermd    %zmm3, %zmm2, %zmm2                           # c31
        vmovaps   %zmm0, 2176(%rsp)                             # c31
        vpsrad    $31, %zmm2, %zmm2{%k1}                        # c35
        movq      %rbx, 9240(%rsp)                              # c35
        vpermd    %zmm3, %zmm1, %zmm4                           # c39
        movq      %r8, 9248(%rsp)                               # c39
        vpsrad    $31, %zmm4, %zmm4{%k1}                        # c43
        vmovdqa32 %zmm2, (%rsp)                                 # c43
        vmovdqa32 %zmm2, 64(%rsp)                               # c47
        movq      8(%rsp), %r13                                 # c47
        movq      64(%rsp), %r15                                # c51
        vmovaps   %zmm2, 4864(%rsp)                             # c51
        subq      %r15, %r13                                    # c55
        vmovaps   %zmm4, 4928(%rsp)                             # c55
        shlq      $4, %r13                                      # c59
        movq      %r14, 9256(%rsp)                              # c59
        movq      %r13, 8448(%rsp)                              # c63
        movq      %r8, %r13                                     # c63
        vpbroadcastq 8448(%rsp), %zmm1                          # c67
        movq      %r13, 9336(%rsp)                              # c71
        movb      %al, %al                                      # c71
        vmovaps   %zmm1, 2240(%rsp)                             # c75
        movb      %dl, %dl                                      # c75
        movq      %r9, 9264(%rsp)                               # c79
        movq      %rax, 9272(%rsp)                              # c79
        movq      %rdi, 9328(%rsp)                              # c83
        movl      %r10d, 9280(%rsp)                             # c83
        movq      %r11, 9288(%rsp)                              # c87
        movq      %rsi, 9296(%rsp)                              # c87
        movq      %rcx, 9304(%rsp)                              # c91
        movq      %rdx, 9312(%rsp)                              # c91
        movq      %r12, 9320(%rsp)                              # c95
                                # LOE zmm12 k1 k2 k3 k4 k5 k6
..CL170:
..B4.5:                         # Preds ..B4.101 ..B4.4 Latency 173
        vmovaps   4928(%rsp), %zmm1                             # c1
        vmovaps   4864(%rsp), %zmm0                             # c5
        vmovaps   %zmm11, %zmm10                                # c9
        vmovdqa64 %zmm1, 256(%rsp)                              # c9
        vmovdqa64 %zmm1, 192(%rsp)                              # c13
        movq      272(%rsp), %r13                               # c13
        vmovdqa64 %zmm1, 128(%rsp)                              # c17
        vmovdqa64 %zmm0, 640(%rsp)                              # c21
        movb      %al, %al                                      # c21
        movq      %r13, 9384(%rsp)                              # c25
        movq      200(%rsp), %r13                               # c25
        vmovdqa64 %zmm0, 704(%rsp)                              # c29
        movq      640(%rsp), %r15                               # c29
        movq      %r13, 9392(%rsp)                              # c33
        movq      128(%rsp), %r13                               # c33
        movq      %r13, 9400(%rsp)                              # c37
        movq      9232(%rsp), %r13                              # c37
        movq      712(%rsp), %r11                               # c41
        vmovdqa64 %zmm1, 576(%rsp)                              # c41
        movq      %r15, 9464(%rsp)                              # c45
        lea       (%r13,%r15,4), %r15                           # c45
        vmovdqa64 %zmm1, 512(%rsp)                              # c49
        movq      632(%rsp), %r12                               # c49
        vmovdqa64 %zmm1, 384(%rsp)                              # c53
        movq      560(%rsp), %r14                               # c53
        movq      %r11, 9456(%rsp)                              # c57
        lea       (%r13,%r11,4), %r11                           # c57
        vmovdqa64 %zmm0, 1088(%rsp)                             # c61
        movq      416(%rsp), %rdx                               # c61
        vmovdqa64 %zmm0, 1024(%rsp)                             # c65
        movq      1144(%rsp), %r9                               # c65
        vmovdqa64 %zmm0, 960(%rsp)                              # c69
        movq      1072(%rsp), %r8                               # c69
        vmovdqa64 %zmm0, 896(%rsp)                              # c73
        movq      1000(%rsp), %rdi                              # c73
        vmovdqa64 %zmm0, 832(%rsp)                              # c77
        movq      928(%rsp), %rsi                               # c77
        vmovdqa64 %zmm0, 768(%rsp)                              # c81
        movq      856(%rsp), %rbx                               # c81
        vmovdqa64 %zmm1, 448(%rsp)                              # c85
        movq      784(%rsp), %rax                               # c85
        vmovdqa64 %zmm1, 320(%rsp)                              # c89
        movq      488(%rsp), %rcx                               # c89
        vloadunpacklps (%r15), %zmm10{%k4}                      # c93
        movq      %r11, 9520(%rsp)                              # c93
        movq      %r15, 9480(%rsp)                              # c97
        movq      %r15, %r11                                    # c97
        movq      200(%rsp), %r15                               # c101
        movq      %r12, 9344(%rsp)                              # c101
        lea       (%r13,%r12,4), %r12                           # c105
        lea       (%r13,%r15,4), %r15                           # c105
        movq      %r14, 9352(%rsp)                              # c109
        movq      344(%rsp), %r10                               # c109
        movq      %rdx, 9368(%rsp)                              # c113
        andq      $63, %r11                                     # c113
        movq      %r12, 9496(%rsp)                              # c117
        lea       (%r13,%r14,4), %r12                           # c117
        lea       (%r13,%rdx,4), %r14                           # c121
        movq      272(%rsp), %rdx                               # c121
        movq      %r15, 9528(%rsp)                              # c125
        lea       (%r13,%rdx,4), %rdx                           # c125
        movq      128(%rsp), %r15                               # c129
        movq      %r9, 9408(%rsp)                               # c129
        movq      %r8, 9416(%rsp)                               # c133
        lea       (%r13,%r9,4), %r9                             # c133
        movq      %rdi, 9424(%rsp)                              # c137
        lea       (%r13,%r8,4), %r8                             # c137
        movq      %rsi, 9432(%rsp)                              # c141
        lea       (%r13,%rdi,4), %rdi                           # c141
        movq      %rbx, 9440(%rsp)                              # c145
        lea       (%r13,%rsi,4), %rsi                           # c145
        movq      %rax, 9448(%rsp)                              # c149
        lea       (%r13,%rbx,4), %rbx                           # c149
        movq      %rcx, 9360(%rsp)                              # c153
        lea       (%r13,%rax,4), %rax                           # c153
        movq      %r10, 9376(%rsp)                              # c157
        lea       (%r13,%rcx,4), %rcx                           # c157
        lea       (%r13,%r10,4), %r10                           # c161
        lea       (%r13,%r15,4), %r13                           # c161
        movq      %r13, 9512(%rsp)                              # c165
        cmpq      $33, %r11                                     # c165
        movq      9520(%rsp), %r11                              # c169
        movq      9528(%rsp), %r13                              # c169
        jb        ..B4.8        # Prob 0%                       # c173
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r13d r11b r13b zmm10 zmm11 zmm12 k1 k2 k3 k4 k5 k6
..CL172:
..B4.7:                         # Preds ..B4.5 Latency 5
        movq      9480(%rsp), %r15                              # c1
        vloadunpackhps 64(%r15), %zmm10{%k4}                    # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r13d r11b r13b zmm10 zmm11 zmm12 k1 k2 k3 k4 k5 k6
..CL171:
..B4.8:                         # Preds ..B4.7 ..B4.5 Latency 13
        vmovaps   %zmm11, %zmm31                                # c1
        movq      %r11, %r15                                    # c1
        andq      $63, %r15                                     # c5
        vloadunpacklps (%r11), %zmm31{%k4}                      # c9
        cmpq      $33, %r15                                     # c9
        jb        ..B4.11       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r11d r13d r11b r13b zmm10 zmm11 zmm12 zmm31 k1 k2 k3 k4 k5 k6
..CL174:
..B4.10:                        # Preds ..B4.8 Latency 1
        vloadunpackhps 64(%r11), %zmm31{%k4}                    # c1
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm31 k1 k2 k3 k4 k5 k6
..CL173:
..B4.11:                        # Preds ..B4.10 ..B4.8 Latency 13
        vmovaps   %zmm11, %zmm16                                # c1
        movq      %rax, %r11                                    # c1
        andq      $63, %r11                                     # c5
        vloadunpacklps (%rax), %zmm16{%k4}                      # c9
        cmpq      $33, %r11                                     # c9
        jb        ..B4.14       # Prob 0%                       # c13
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL176:
..B4.13:                        # Preds ..B4.11 Latency 1
        vloadunpackhps 64(%rax), %zmm16{%k4}                    # c1
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL175:
..B4.14:                        # Preds ..B4.13 ..B4.11 Latency 13
        vmovaps   %zmm11, %zmm15                                # c1
        movq      %rbx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rbx), %zmm15{%k4}                      # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.17       # Prob 0%                       # c13
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL178:
..B4.16:                        # Preds ..B4.14 Latency 1
        vloadunpackhps 64(%rbx), %zmm15{%k4}                    # c1
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL177:
..B4.17:                        # Preds ..B4.16 ..B4.14 Latency 13
        vmovaps   %zmm11, %zmm14                                # c1
        movq      %rsi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rsi), %zmm14{%k4}                      # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.20       # Prob 0%                       # c13
                                # LOE rdx rcx rsi rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL180:
..B4.19:                        # Preds ..B4.17 Latency 1
        vloadunpackhps 64(%rsi), %zmm14{%k4}                    # c1
                                # LOE rdx rcx rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL179:
..B4.20:                        # Preds ..B4.19 ..B4.17 Latency 13
        vmovaps   %zmm11, %zmm13                                # c1
        movq      %rdi, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdi), %zmm13{%k4}                      # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.23       # Prob 0%                       # c13
                                # LOE rdx rcx rdi r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL182:
..B4.22:                        # Preds ..B4.20 Latency 1
        vloadunpackhps 64(%rdi), %zmm13{%k4}                    # c1
                                # LOE rdx rcx r8 r9 r10 r12 r13 r14 r13d r13b zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL181:
..B4.23:                        # Preds ..B4.22 ..B4.20 Latency 13
        vmovaps   %zmm11, %zmm0                                 # c1
        movq      %r8, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r8), %zmm0{%k4}                        # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.26       # Prob 0%                       # c13
                                # LOE rdx rcx r8 r9 r10 r12 r13 r14 r13d r13b zmm0 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL184:
..B4.25:                        # Preds ..B4.23 Latency 1
        vloadunpackhps 64(%r8), %zmm0{%k4}                      # c1
                                # LOE rdx rcx r9 r10 r12 r13 r14 r13d r13b zmm0 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL183:
..B4.26:                        # Preds ..B4.25 ..B4.23 Latency 13
        vmovaps   %zmm11, %zmm1                                 # c1
        movq      %r9, %rax                                     # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r9), %zmm1{%k4}                        # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.29       # Prob 0%                       # c13
                                # LOE rdx rcx r9 r10 r12 r13 r14 r13d r13b zmm0 zmm1 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL186:
..B4.28:                        # Preds ..B4.26 Latency 1
        vloadunpackhps 64(%r9), %zmm1{%k4}                      # c1
                                # LOE rdx rcx r10 r12 r13 r14 r13d r13b zmm0 zmm1 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL185:
..B4.29:                        # Preds ..B4.28 ..B4.26 Latency 17
        vmovaps   %zmm11, %zmm9                                 # c1
        movq      9512(%rsp), %rax                              # c1
        movq      %rax, %rbx                                    # c5
        andq      $63, %rbx                                     # c9
        vloadunpacklps (%rax), %zmm9{%k4}                       # c13
        cmpq      $33, %rbx                                     # c13
        jb        ..B4.32       # Prob 0%                       # c17
                                # LOE rax rdx rcx r10 r12 r13 r14 eax r13d al ah r13b zmm0 zmm1 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL188:
..B4.31:                        # Preds ..B4.29 Latency 1
        vloadunpackhps 64(%rax), %zmm9{%k4}                     # c1
                                # LOE rdx rcx r10 r12 r13 r14 r13d r13b zmm0 zmm1 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL187:
..B4.32:                        # Preds ..B4.31 ..B4.29 Latency 13
        vmovaps   %zmm11, %zmm3                                 # c1
        movq      %r13, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r13), %zmm3{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.35       # Prob 0%                       # c13
                                # LOE rdx rcx r10 r12 r13 r14 r13d r13b zmm0 zmm1 zmm3 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL190:
..B4.34:                        # Preds ..B4.32 Latency 1
        vloadunpackhps 64(%r13), %zmm3{%k4}                     # c1
                                # LOE rdx rcx r10 r12 r14 zmm0 zmm1 zmm3 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL189:
..B4.35:                        # Preds ..B4.34 ..B4.32 Latency 13
        vmovaps   %zmm11, %zmm4                                 # c1
        movq      %rdx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rdx), %zmm4{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.38       # Prob 0%                       # c13
                                # LOE rdx rcx r10 r12 r14 zmm0 zmm1 zmm3 zmm4 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL192:
..B4.37:                        # Preds ..B4.35 Latency 1
        vloadunpackhps 64(%rdx), %zmm4{%k4}                     # c1
                                # LOE rcx r10 r12 r14 zmm0 zmm1 zmm3 zmm4 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL191:
..B4.38:                        # Preds ..B4.37 ..B4.35 Latency 13
        vmovaps   %zmm11, %zmm5                                 # c1
        movq      %r10, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r10), %zmm5{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.41       # Prob 0%                       # c13
                                # LOE rcx r10 r12 r14 zmm0 zmm1 zmm3 zmm4 zmm5 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL194:
..B4.40:                        # Preds ..B4.38 Latency 1
        vloadunpackhps 64(%r10), %zmm5{%k4}                     # c1
                                # LOE rcx r12 r14 zmm0 zmm1 zmm3 zmm4 zmm5 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL193:
..B4.41:                        # Preds ..B4.40 ..B4.38 Latency 13
        vmovaps   %zmm11, %zmm6                                 # c1
        movq      %r14, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r14), %zmm6{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.44       # Prob 0%                       # c13
                                # LOE rcx r12 r14 zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL196:
..B4.43:                        # Preds ..B4.41 Latency 1
        vloadunpackhps 64(%r14), %zmm6{%k4}                     # c1
                                # LOE rcx r12 zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL195:
..B4.44:                        # Preds ..B4.43 ..B4.41 Latency 13
        vmovaps   %zmm11, %zmm7                                 # c1
        movq      %rcx, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%rcx), %zmm7{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.47       # Prob 0%                       # c13
                                # LOE rcx r12 zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL198:
..B4.46:                        # Preds ..B4.44 Latency 1
        vloadunpackhps 64(%rcx), %zmm7{%k4}                     # c1
                                # LOE r12 zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL197:
..B4.47:                        # Preds ..B4.46 ..B4.44 Latency 13
        vmovaps   %zmm11, %zmm8                                 # c1
        movq      %r12, %rax                                    # c1
        andq      $63, %rax                                     # c5
        vloadunpacklps (%r12), %zmm8{%k4}                       # c9
        cmpq      $33, %rax                                     # c9
        jb        ..B4.50       # Prob 0%                       # c13
                                # LOE r12 zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL200:
..B4.49:                        # Preds ..B4.47 Latency 1
        vloadunpackhps 64(%r12), %zmm8{%k4}                     # c1
                                # LOE zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL199:
..B4.50:                        # Preds ..B4.49 ..B4.47 Latency 17
        movq      9496(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        andq      $63, %rdx                                     # c9
        vloadunpacklps (%rax), %zmm11{%k4}                      # c13
        cmpq      $33, %rdx                                     # c13
        jb        ..B4.53       # Prob 0%                       # c17
                                # LOE rax eax al ah zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL202:
..B4.52:                        # Preds ..B4.50 Latency 1
        vloadunpackhps 64(%rax), %zmm11{%k4}                    # c1
                                # LOE zmm0 zmm1 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm31 k1 k2 k3 k4 k5 k6
..CL201:
..B4.53:                        # Preds ..B4.52 ..B4.50 Latency 1749
        vpshufd   $1, %zmm10, %zmm29                            # c1
        movq      9328(%rsp), %r15                              # c1
        vpshufd   $2, %zmm10, %zmm28                            # c5
        movq      9440(%rsp), %rsi                              # c5
        vpshufd   $3, %zmm10, %zmm27                            # c9
        movq      9416(%rsp), %r10                              # c9
        vpermf32x4 $1, %zmm10, %zmm26                           # c13
        movq      9384(%rsp), %r14                              # c13
        valignd   $5, %zmm10, %zmm2, %zmm25                     # c17
        movq      9448(%rsp), %rcx                              # c17
        valignd   $6, %zmm10, %zmm2, %zmm24                     # c21
        lea       (%r15,%rsi,4), %rdi                           # c21
        valignd   $7, %zmm10, %zmm2, %zmm23                     # c25
        lea       (%r15,%r10,4), %rsi                           # c25
        vmovaps   _const_15(%rip), %zmm20                       # c29
        vmovaps   _const_16(%rip), %zmm21                       # c33
        vmovaps   _const_6(%rip), %zmm22                        # c37
        vmovaps   %zmm31, %zmm29{%k6}                           # c41
        lea       (%r15,%r14,4), %r10                           # c41
        vpshufd   $0, %zmm31, %zmm10{%k6}                       # c45
        movq      9352(%rsp), %r14                              # c45
        vpshufd   $8, %zmm31, %zmm28{%k6}                       # c49
        movq      9432(%rsp), %r8                               # c49
        vpshufd   $12, %zmm31, %zmm27{%k6}                      # c53
        movq      9424(%rsp), %r9                               # c53
        valignd   $3, %zmm31, %zmm2, %zmm26{%k6}                # c57
        movq      9408(%rsp), %r11                              # c57
        vpermf32x4 $1, %zmm31, %zmm25{%k6}                      # c61
        movq      9400(%rsp), %r12                              # c61
        valignd   $5, %zmm31, %zmm2, %zmm24{%k6}                # c65
        movq      9392(%rsp), %r13                              # c65
        valignd   $6, %zmm31, %zmm2, %zmm23{%k6}                # c69
        movq      9464(%rsp), %rax                              # c69
        vmovaps   _const_17(%rip), %zmm18                       # c73
        vmovaps   _const_18(%rip), %zmm19                       # c77
        vpshufd   $16, %zmm16, %zmm29{%k2}                      # c81
        lea       (%r15,%rcx,4), %rbx                           # c81
        vpshufd   $0, %zmm16, %zmm10{%k2}                       # c85
        lea       (%r15,%r14,4), %r14                           # c85
        vmovaps   %zmm16, %zmm28{%k2}                           # c89
        movq      9456(%rsp), %rdx                              # c89
        vpshufd   $48, %zmm16, %zmm27{%k2}                      # c93
        movq      %rbx, 9504(%rsp)                              # c93
        valignd   $2, %zmm16, %zmm2, %zmm26{%k2}                # c97
        movq      %rdi, 9488(%rsp)                              # c97
        valignd   $3, %zmm16, %zmm2, %zmm25{%k2}                # c101
        lea       (%r15,%r8,4), %rcx                            # c101
        vpermf32x4 $1, %zmm16, %zmm24{%k2}                      # c105
        lea       (%r15,%r9,4), %rbx                            # c105
        valignd   $5, %zmm16, %zmm2, %zmm23{%k2}                # c109
        lea       (%r15,%r11,4), %rdi                           # c109
        vmovaps   _const_7(%rip), %zmm17                        # c113
        vmovaps   _const_19(%rip), %zmm16                       # c117
        vmovaps   _const_35(%rip), %zmm31                       # c121
        vmovaps   _const_14(%rip), %zmm30                       # c125
        lea       (%r15,%r12,4), %r8                            # c129
        lea       (%r15,%r13,4), %r9                            # c129
        movq      9376(%rsp), %r11                              # c133
        movq      %r14, 9536(%rsp)                              # c133
        lea       (%r15,%rax,4), %rax                           # c137
        lea       (%r15,%rdx,4), %rdx                           # c137
        movq      9368(%rsp), %r12                              # c141
        lea       (%r15,%r11,4), %r11                           # c141
        movq      9360(%rsp), %r13                              # c145
        lea       (%r15,%r12,4), %r12                           # c145
        movq      9344(%rsp), %r14                              # c149
        lea       (%r15,%r13,4), %r13                           # c149
        lea       (%r15,%r14,4), %r15                           # c153
        movq      %rax, %r14                                    # c153
        andq      $63, %r14                                     # c157
        movq      %r14, 9472(%rsp)                              # c161
        movl      $8, %r14d                                     # c161
        kmov      %r14d, %k7                                    # c165
        movl      $16, %r14d                                    # c165
        vpshufd   $64, %zmm15, %zmm29{%k7}                      # c169
        vpshufd   $0, %zmm15, %zmm10{%k7}                       # c173
        vpshufd   $128, %zmm15, %zmm28{%k7}                     # c177
        vmovaps   %zmm15, %zmm27{%k7}                           # c181
        valignd   $1, %zmm15, %zmm2, %zmm26{%k7}                # c185
        valignd   $2, %zmm15, %zmm2, %zmm25{%k7}                # c189
        valignd   $3, %zmm15, %zmm2, %zmm24{%k7}                # c193
        vpermf32x4 $1, %zmm15, %zmm23{%k7}                      # c197
        kmov      %r14d, %k7                                    # c197
        vpermd    %zmm14, %zmm22, %zmm29{%k7}                   # c201
        movl      $32, %r14d                                    # c201
        vpermf32x4 $0, %zmm14, %zmm10{%k7}                      # c205
        vpermd    %zmm14, %zmm21, %zmm28{%k7}                   # c209
        vpermd    %zmm14, %zmm20, %zmm27{%k7}                   # c213
        vmovaps   %zmm14, %zmm26{%k7}                           # c217
        vpshufd   $1, %zmm14, %zmm25{%k7}                       # c221
        vpshufd   $2, %zmm14, %zmm24{%k7}                       # c225
        vpshufd   $3, %zmm14, %zmm23{%k7}                       # c229
        kmov      %r14d, %k7                                    # c229
        vpermf32x4 $0, %zmm13, %zmm29{%k7}                      # c233
        movl      $64, %r14d                                    # c233
        vpermd    %zmm13, %zmm12, %zmm10{%k7}                   # c237
        vpermd    %zmm13, %zmm19, %zmm28{%k7}                   # c241
        vpermd    %zmm13, %zmm18, %zmm27{%k7}                   # c245
        vpshufd   $0, %zmm13, %zmm26{%k7}                       # c249
        vmovaps   %zmm13, %zmm25{%k7}                           # c253
        vpshufd   $8, %zmm13, %zmm24{%k7}                       # c257
        vpshufd   $12, %zmm13, %zmm23{%k7}                      # c261
        kmov      %r14d, %k7                                    # c261
        vpermd    %zmm0, %zmm17, %zmm29{%k7}                    # c265
        movl      $128, %r14d                                   # c265
        vpermd    %zmm0, %zmm12, %zmm10{%k7}                    # c269
        vpermf32x4 $0, %zmm0, %zmm28{%k7}                       # c273
        vpermd    %zmm0, %zmm16, %zmm27{%k7}                    # c277
        vpshufd   $0, %zmm0, %zmm26{%k7}                        # c281
        vpshufd   $16, %zmm0, %zmm25{%k7}                       # c285
        vmovaps   %zmm0, %zmm24{%k7}                            # c289
        vpshufd   $48, %zmm0, %zmm23{%k7}                       # c293
        kmov      %r14d, %k7                                    # c293
        vmovaps   _const_8(%rip), %zmm0                         # c297
        vmovaps   _const_20(%rip), %zmm15                       # c301
        vpermd    %zmm1, %zmm0, %zmm29{%k7}                     # c305
        movl      $256, %r14d                                   # c305
        vpermd    %zmm1, %zmm12, %zmm10{%k7}                    # c309
        vpermd    %zmm1, %zmm15, %zmm28{%k7}                    # c313
        vpermf32x4 $0, %zmm1, %zmm27{%k7}                       # c317
        vpshufd   $0, %zmm1, %zmm26{%k7}                        # c321
        vpshufd   $64, %zmm1, %zmm25{%k7}                       # c325
        vpshufd   $128, %zmm1, %zmm24{%k7}                      # c329
        vmovaps   %zmm1, %zmm23{%k7}                            # c333
        kmov      %r14d, %k7                                    # c333
        vmovaps   _const_9(%rip), %zmm1                         # c337
        vpermd    %zmm9, %zmm1, %zmm29{%k7}                     # c341
        movl      $512, %r14d                                   # c341
        vmovaps   _const_22(%rip), %zmm14                       # c345
        vmovaps   _const_21(%rip), %zmm13                       # c349
        vmovaps   _const_34(%rip), %zmm0                        # c353
        vmovaps   _const_33(%rip), %zmm1                        # c357
        vpermf32x4 $0, %zmm9, %zmm10{%k7}                       # c361
        vpermd    %zmm9, %zmm14, %zmm28{%k7}                    # c365
        vpermd    %zmm9, %zmm13, %zmm27{%k7}                    # c369
        vpermf32x4 $16, %zmm9, %zmm26{%k7}                      # c373
        vpermd    %zmm9, %zmm31, %zmm25{%k7}                    # c377
        vpermd    %zmm9, %zmm0, %zmm24{%k7}                     # c381
        vpermd    %zmm9, %zmm1, %zmm23{%k7}                     # c385
        kmov      %r14d, %k7                                    # c385
        vmovaps   _const_24(%rip), %zmm9                        # c389
        vmovaps   _const_23(%rip), %zmm0                        # c393
        vmovaps   _const_38(%rip), %zmm1                        # c397
        vmovaps   _const_37(%rip), %zmm22                       # c401
        vmovaps   _const_36(%rip), %zmm21                       # c405
        vpermf32x4 $0, %zmm3, %zmm29{%k7}                       # c409
        movl      $1024, %r14d                                  # c409
        vpermd    %zmm3, %zmm12, %zmm10{%k7}                    # c413
        vpermd    %zmm3, %zmm9, %zmm28{%k7}                     # c417
        vpermd    %zmm3, %zmm0, %zmm27{%k7}                     # c421
        vpermd    %zmm3, %zmm1, %zmm26{%k7}                     # c425
        vpermf32x4 $16, %zmm3, %zmm25{%k7}                      # c429
        vpermd    %zmm3, %zmm22, %zmm24{%k7}                    # c433
        vpermd    %zmm3, %zmm21, %zmm23{%k7}                    # c437
        kmov      %r14d, %k7                                    # c437
        vmovaps   _const_10(%rip), %zmm3                        # c441
        vmovaps   _const_25(%rip), %zmm0                        # c445
        vmovaps   _const_41(%rip), %zmm1                        # c449
        vmovaps   _const_40(%rip), %zmm22                       # c453
        vmovaps   _const_39(%rip), %zmm21                       # c457
        vpermd    %zmm4, %zmm3, %zmm29{%k7}                     # c461
        movl      $2048, %r14d                                  # c461
        vpermd    %zmm4, %zmm12, %zmm10{%k7}                    # c465
        vpermf32x4 $0, %zmm4, %zmm28{%k7}                       # c469
        vpermd    %zmm4, %zmm0, %zmm27{%k7}                     # c473
        vpermd    %zmm4, %zmm1, %zmm26{%k7}                     # c477
        vpermd    %zmm4, %zmm22, %zmm25{%k7}                    # c481
        vpermf32x4 $16, %zmm4, %zmm24{%k7}                      # c485
        vpermd    %zmm4, %zmm21, %zmm23{%k7}                    # c489
        kmov      %r14d, %k7                                    # c489
        vmovaps   _const_11(%rip), %zmm4                        # c493
        vmovaps   _const_26(%rip), %zmm0                        # c497
        vmovaps   _const_44(%rip), %zmm1                        # c501
        vmovaps   _const_43(%rip), %zmm22                       # c505
        vmovaps   _const_42(%rip), %zmm21                       # c509
        vpermd    %zmm5, %zmm4, %zmm29{%k7}                     # c513
        movl      $4096, %r14d                                  # c513
        vpermd    %zmm5, %zmm12, %zmm10{%k7}                    # c517
        vpermd    %zmm5, %zmm0, %zmm28{%k7}                     # c521
        vpermf32x4 $0, %zmm5, %zmm27{%k7}                       # c525
        vpermd    %zmm5, %zmm1, %zmm26{%k7}                     # c529
        vpermd    %zmm5, %zmm22, %zmm25{%k7}                    # c533
        vpermd    %zmm5, %zmm21, %zmm24{%k7}                    # c537
        vpermf32x4 $16, %zmm5, %zmm23{%k7}                      # c541
        kmov      %r14d, %k7                                    # c541
        vmovaps   _const_12(%rip), %zmm5                        # c545
        vmovaps   _const_28(%rip), %zmm0                        # c549
        vmovaps   _const_27(%rip), %zmm1                        # c553
        vmovaps   _const_47(%rip), %zmm22                       # c557
        vmovaps   _const_46(%rip), %zmm21                       # c561
        vmovaps   _const_45(%rip), %zmm20                       # c565
        vpermd    %zmm6, %zmm5, %zmm29{%k7}                     # c569
        movl      $8192, %r14d                                  # c569
        vpermf32x4 $0, %zmm6, %zmm10{%k7}                       # c573
        vpermd    %zmm6, %zmm0, %zmm28{%k7}                     # c577
        vpermd    %zmm6, %zmm1, %zmm27{%k7}                     # c581
        vpermf32x4 $64, %zmm6, %zmm26{%k7}                      # c585
        vpermd    %zmm6, %zmm22, %zmm25{%k7}                    # c589
        vpermd    %zmm6, %zmm21, %zmm24{%k7}                    # c593
        vpermd    %zmm6, %zmm20, %zmm23{%k7}                    # c597
        kmov      %r14d, %k7                                    # c597
        vmovaps   _const_30(%rip), %zmm6                        # c601
        vmovaps   _const_29(%rip), %zmm0                        # c605
        vmovaps   _const_50(%rip), %zmm1                        # c609
        vmovaps   _const_49(%rip), %zmm22                       # c613
        vmovaps   _const_48(%rip), %zmm21                       # c617
        vpermf32x4 $0, %zmm7, %zmm29{%k7}                       # c621
        movl      $16384, %r14d                                 # c621
        vpermd    %zmm7, %zmm12, %zmm10{%k7}                    # c625
        vpermd    %zmm7, %zmm6, %zmm28{%k7}                     # c629
        vpermd    %zmm7, %zmm0, %zmm27{%k7}                     # c633
        vpermd    %zmm7, %zmm1, %zmm26{%k7}                     # c637
        vpermf32x4 $64, %zmm7, %zmm25{%k7}                      # c641
        vpermd    %zmm7, %zmm22, %zmm24{%k7}                    # c645
        vpermd    %zmm7, %zmm21, %zmm23{%k7}                    # c649
        kmov      %r14d, %k7                                    # c649
        vmovaps   _const_13(%rip), %zmm7                        # c653
        vmovaps   _const_31(%rip), %zmm0                        # c657
        vmovaps   _const_53(%rip), %zmm1                        # c661
        vmovaps   _const_52(%rip), %zmm22                       # c665
        vmovaps   _const_51(%rip), %zmm21                       # c669
        vpermd    %zmm8, %zmm7, %zmm29{%k7}                     # c673
        movl      $32768, %r14d                                 # c673
        vpermd    %zmm8, %zmm12, %zmm10{%k7}                    # c677
        vpermf32x4 $0, %zmm8, %zmm28{%k7}                       # c681
        vpermd    %zmm8, %zmm0, %zmm27{%k7}                     # c685
        vpermd    %zmm8, %zmm1, %zmm26{%k7}                     # c689
        vpermd    %zmm8, %zmm22, %zmm25{%k7}                    # c693
        vpermf32x4 $64, %zmm8, %zmm24{%k7}                      # c697
        vpermd    %zmm8, %zmm21, %zmm23{%k7}                    # c701
        kmov      %r14d, %k7                                    # c701
        vpermd    %zmm11, %zmm30, %zmm29{%k7}                   # c705
        movl      $1, %r14d                                     # c705
        vpermd    %zmm11, %zmm12, %zmm10{%k7}                   # c709
        vaddps    _const_0(%rip){1to16}, %zmm29, %zmm30         # c713
        vmovaps   _const_32(%rip), %zmm12                       # c717
        vmovaps   _const_56(%rip), %zmm8                        # c721
        vmovaps   _const_55(%rip), %zmm0                        # c725
        vmovaps   _const_54(%rip), %zmm1                        # c729
        vaddps    _const_0(%rip){1to16}, %zmm10, %zmm31         # c733
        vpermd    %zmm11, %zmm12, %zmm28{%k7}                   # c737
        vpermf32x4 $0, %zmm11, %zmm27{%k7}                      # c741
        vpermd    %zmm11, %zmm8, %zmm26{%k7}                    # c745
        vpermd    %zmm11, %zmm0, %zmm25{%k7}                    # c749
        vpermd    %zmm11, %zmm1, %zmm24{%k7}                    # c753
        vpermf32x4 $64, %zmm11, %zmm23{%k7}                     # c757
        kmov      %r14d, %k7                                    # c757
        vpshufd   $1, %zmm30, %zmm7                             # c761
        movq      9536(%rsp), %r14                              # c761
        vpshufd   $2, %zmm30, %zmm8                             # c765
        vpshufd   $3, %zmm30, %zmm9                             # c769
        vpermf32x4 $1, %zmm30, %zmm10                           # c773
        valignd   $5, %zmm30, %zmm2, %zmm11                     # c777
        valignd   $6, %zmm30, %zmm2, %zmm12                     # c781
        valignd   $7, %zmm30, %zmm2, %zmm13                     # c785
        vpermf32x4 $2, %zmm30, %zmm14                           # c789
        valignd   $9, %zmm30, %zmm2, %zmm15                     # c793
        valignd   $10, %zmm30, %zmm2, %zmm16                    # c797
        valignd   $11, %zmm30, %zmm2, %zmm17                    # c801
        vpermf32x4 $3, %zmm30, %zmm18                           # c805
        valignd   $13, %zmm30, %zmm2, %zmm19                    # c809
        valignd   $14, %zmm30, %zmm2, %zmm20                    # c813
        valignd   $15, %zmm30, %zmm2, %zmm21                    # c817
        vpackstorelps %zmm30, 8456(%rsp){%k7}                   # c821
        valignd   $9, %zmm31, %zmm2, %zmm30                     # c825
        vaddps    _const_0(%rip){1to16}, %zmm28, %zmm0          # c829
        vaddps    _const_0(%rip){1to16}, %zmm27, %zmm1          # c833
        vaddps    _const_0(%rip){1to16}, %zmm26, %zmm3          # c837
        vaddps    _const_0(%rip){1to16}, %zmm25, %zmm4          # c841
        vaddps    _const_0(%rip){1to16}, %zmm24, %zmm5          # c845
        vaddps    _const_0(%rip){1to16}, %zmm23, %zmm6          # c849
        vpshufd   $1, %zmm31, %zmm22                            # c853
        vmovaps   %zmm30, 7488(%rsp)                            # c853
        valignd   $10, %zmm31, %zmm2, %zmm30                    # c857
        vpshufd   $2, %zmm31, %zmm23                            # c861
        vpshufd   $3, %zmm31, %zmm24                            # c865
        vmovaps   %zmm30, 7552(%rsp)                            # c865
        valignd   $11, %zmm31, %zmm2, %zmm30                    # c869
        vpermf32x4 $1, %zmm31, %zmm25                           # c873
        valignd   $5, %zmm31, %zmm2, %zmm26                     # c877
        vmovaps   %zmm30, 7616(%rsp)                            # c877
        vpermf32x4 $3, %zmm31, %zmm30                           # c881
        valignd   $6, %zmm31, %zmm2, %zmm27                     # c885
        valignd   $7, %zmm31, %zmm2, %zmm28                     # c889
        vmovaps   %zmm30, 7680(%rsp)                            # c889
        valignd   $13, %zmm31, %zmm2, %zmm30                    # c893
        vpermf32x4 $2, %zmm31, %zmm29                           # c897
        vpackstorelps %zmm31, 8776(%rsp){%k7}                   # c901
        vpackstorelps %zmm0, 8464(%rsp){%k7}                    # c905
        vpackstorelps %zmm1, 8472(%rsp){%k7}                    # c909
        vpackstorelps %zmm3, 8480(%rsp){%k7}                    # c913
        vpackstorelps %zmm4, 8488(%rsp){%k7}                    # c917
        vpackstorelps %zmm5, 8496(%rsp){%k7}                    # c921
        vpackstorelps %zmm6, 8504(%rsp){%k7}                    # c925
        vpackstorelps %zmm7, 8512(%rsp){%k7}                    # c929
        vpackstorelps %zmm8, 8520(%rsp){%k7}                    # c933
        vpackstorelps %zmm9, 8528(%rsp){%k7}                    # c937
        vpackstorelps %zmm10, 8536(%rsp){%k7}                   # c941
        vpackstorelps %zmm11, 8544(%rsp){%k7}                   # c945
        vbroadcastss 8776(%rsp), %zmm8                          # c949
        vpackstorelps %zmm12, 8552(%rsp){%k7}                   # c953
        vmovaps   %zmm30, 7744(%rsp)                            # c957
        valignd   $14, %zmm31, %zmm2, %zmm30                    # c961
        vpackstorelps %zmm13, 8560(%rsp){%k7}                   # c965
        vmovaps   %zmm30, 7808(%rsp)                            # c969
        valignd   $15, %zmm31, %zmm2, %zmm30                    # c973
        vpshufd   $1, %zmm0, %zmm31                             # c977
        vmovaps   7808(%rsp), %zmm7                             # c981
        vpackstorelps %zmm30, 8744(%rsp){%k7}                   # c985
        vpackstorelps %zmm7, 8736(%rsp){%k7}                    # c989
        vmovaps   %zmm31, 7872(%rsp)                            # c993
        vpshufd   $2, %zmm0, %zmm31                             # c997
        vmovaps   7872(%rsp), %zmm9                             # c1001
        movb      %al, %al                                      # c1001
        vmovaps   %zmm31, 7936(%rsp)                            # c1005
        vpshufd   $3, %zmm0, %zmm31                             # c1009
        vmovaps   7936(%rsp), %zmm10                            # c1013
        movb      %al, %al                                      # c1013
        vmovaps   %zmm31, 8000(%rsp)                            # c1017
        vpermf32x4 $1, %zmm0, %zmm31                            # c1021
        vmovaps   8000(%rsp), %zmm11                            # c1025
        movb      %al, %al                                      # c1025
        vmovaps   %zmm31, 6592(%rsp)                            # c1029
        valignd   $5, %zmm0, %zmm2, %zmm31                      # c1033
        vpackstorelps %zmm11, 8768(%rsp){%k7}                   # c1037
        vmovaps   %zmm31, 6720(%rsp)                            # c1041
        valignd   $6, %zmm0, %zmm2, %zmm31                      # c1045
        vpackstorelps %zmm14, 8568(%rsp){%k7}                   # c1049
        vmovaps   %zmm31, 6912(%rsp)                            # c1053
        valignd   $7, %zmm0, %zmm2, %zmm31                      # c1057
        vpackstorelps %zmm15, 8576(%rsp){%k7}                   # c1061
        vmovaps   %zmm31, 6784(%rsp)                            # c1065
        vpermf32x4 $2, %zmm0, %zmm31                            # c1069
        vpackstorelps %zmm16, 8584(%rsp){%k7}                   # c1073
        vmovaps   %zmm31, 6528(%rsp)                            # c1077
        valignd   $9, %zmm0, %zmm2, %zmm31                      # c1081
        vpackstorelps %zmm17, 8592(%rsp){%k7}                   # c1085
        vmovaps   %zmm31, 7104(%rsp)                            # c1089
        valignd   $10, %zmm0, %zmm2, %zmm31                     # c1093
        vpackstorelps %zmm18, 8600(%rsp){%k7}                   # c1097
        vmovaps   %zmm31, 6848(%rsp)                            # c1101
        valignd   $11, %zmm0, %zmm2, %zmm31                     # c1105
        vpackstorelps %zmm19, 8608(%rsp){%k7}                   # c1109
        vmovaps   %zmm31, 6656(%rsp)                            # c1113
        vpermf32x4 $3, %zmm0, %zmm31                            # c1117
        vpackstorelps %zmm20, 8616(%rsp){%k7}                   # c1121
        vmovaps   %zmm31, 6464(%rsp)                            # c1125
        valignd   $13, %zmm0, %zmm2, %zmm31                     # c1129
        vpackstorelps %zmm21, 8624(%rsp){%k7}                   # c1133
        vmovaps   %zmm31, 6400(%rsp)                            # c1137
        valignd   $14, %zmm0, %zmm2, %zmm31                     # c1141
        vpackstorelps %zmm22, 8632(%rsp){%k7}                   # c1145
        vmovaps   %zmm31, 6976(%rsp)                            # c1149
        valignd   $15, %zmm0, %zmm2, %zmm31                     # c1153
        vpshufd   $1, %zmm1, %zmm0                              # c1157
        movb      %al, %al                                      # c1157
        vmovaps   %zmm31, 6336(%rsp)                            # c1161
        vpshufd   $2, %zmm1, %zmm31                             # c1165
        vpackstorelps %zmm23, 8640(%rsp){%k7}                   # c1169
        vmovaps   %zmm31, 8064(%rsp)                            # c1173
        vpshufd   $3, %zmm1, %zmm31                             # c1177
        vpackstorelps %zmm24, 8648(%rsp){%k7}                   # c1181
        vmovaps   %zmm31, 8128(%rsp)                            # c1185
        vpermf32x4 $1, %zmm1, %zmm31                            # c1189
        vpackstorelps %zmm25, 8656(%rsp){%k7}                   # c1193
        vmovaps   %zmm31, 7424(%rsp)                            # c1197
        valignd   $5, %zmm1, %zmm2, %zmm31                      # c1201
        vpackstorelps %zmm26, 8664(%rsp){%k7}                   # c1205
        vmovaps   %zmm31, 7296(%rsp)                            # c1209
        valignd   $6, %zmm1, %zmm2, %zmm31                      # c1213
        vpackstorelps %zmm27, 8672(%rsp){%k7}                   # c1217
        vmovaps   %zmm31, 7360(%rsp)                            # c1221
        valignd   $7, %zmm1, %zmm2, %zmm31                      # c1225
        vpackstorelps %zmm28, 8680(%rsp){%k7}                   # c1229
        vmovaps   %zmm31, 8192(%rsp)                            # c1233
        vpermf32x4 $2, %zmm1, %zmm31                            # c1237
        vpackstorelps %zmm29, 8688(%rsp){%k7}                   # c1241
        vmovaps   %zmm31, 8256(%rsp)                            # c1245
        valignd   $9, %zmm1, %zmm2, %zmm31                      # c1249
        vpackstorelps %zmm8, 1152(%rsp){%k5}                    # c1253
        vmovaps   %zmm31, 7040(%rsp)                            # c1257
        valignd   $10, %zmm1, %zmm2, %zmm31                     # c1261
        vpackstorelps %zmm9, 8752(%rsp){%k7}                    # c1265
        vmovaps   %zmm31, 7232(%rsp)                            # c1269
        valignd   $11, %zmm1, %zmm2, %zmm31                     # c1273
        vpackstorelps %zmm10, 8760(%rsp){%k7}                   # c1277
        vmovaps   %zmm31, 8320(%rsp)                            # c1281
        vpermf32x4 $3, %zmm1, %zmm31                            # c1285
        vpxord    %zmm12, %zmm12, %zmm12                        # c1289
        vmovaps   %zmm31, 8384(%rsp)                            # c1293
        valignd   $13, %zmm1, %zmm2, %zmm31                     # c1297
        vmovaps   8064(%rsp), %zmm11                            # c1301
        movb      %al, %al                                      # c1301
        vmovaps   %zmm31, 7168(%rsp)                            # c1305
        valignd   $14, %zmm1, %zmm2, %zmm31                     # c1309
        vmovaps   8128(%rsp), %zmm7                             # c1313
        movb      %al, %al                                      # c1313
        vmovaps   %zmm31, 6272(%rsp)                            # c1317
        valignd   $15, %zmm1, %zmm2, %zmm31                     # c1321
        vpshufd   $1, %zmm3, %zmm1                              # c1325
        movb      %al, %al                                      # c1325
        vmovaps   %zmm31, 6208(%rsp)                            # c1329
        vpshufd   $2, %zmm3, %zmm31                             # c1333
        vmovaps   8384(%rsp), %zmm30                            # c1337
        vmovaps   %zmm31, 6144(%rsp)                            # c1341
        vpshufd   $3, %zmm3, %zmm31                             # c1345
        nop                                                     # c1349
        vmovaps   %zmm31, 6080(%rsp)                            # c1353
        vpermf32x4 $1, %zmm3, %zmm31                            # c1357
        nop                                                     # c1361
        vmovaps   %zmm31, 6016(%rsp)                            # c1365
        valignd   $5, %zmm3, %zmm2, %zmm31                      # c1369
        nop                                                     # c1373
        vmovaps   %zmm31, 5952(%rsp)                            # c1377
        valignd   $6, %zmm3, %zmm2, %zmm31                      # c1381
        nop                                                     # c1385
        vmovaps   %zmm31, 5888(%rsp)                            # c1389
        valignd   $7, %zmm3, %zmm2, %zmm31                      # c1393
        nop                                                     # c1397
        vmovaps   %zmm31, 5824(%rsp)                            # c1401
        vpermf32x4 $2, %zmm3, %zmm31                            # c1405
        nop                                                     # c1409
        vmovaps   %zmm31, 5760(%rsp)                            # c1413
        valignd   $9, %zmm3, %zmm2, %zmm31                      # c1417
        nop                                                     # c1421
        vmovaps   %zmm31, 5696(%rsp)                            # c1425
        valignd   $10, %zmm3, %zmm2, %zmm31                     # c1429
        nop                                                     # c1433
        vmovaps   %zmm31, 5632(%rsp)                            # c1437
        valignd   $11, %zmm3, %zmm2, %zmm31                     # c1441
        nop                                                     # c1445
        vmovaps   %zmm31, 5568(%rsp)                            # c1449
        vpermf32x4 $3, %zmm3, %zmm31                            # c1453
        nop                                                     # c1457
        vmovaps   %zmm31, 5504(%rsp)                            # c1461
        valignd   $13, %zmm3, %zmm2, %zmm31                     # c1465
        nop                                                     # c1469
        vmovaps   %zmm31, 5440(%rsp)                            # c1473
        valignd   $14, %zmm3, %zmm2, %zmm31                     # c1477
        nop                                                     # c1481
        vmovaps   %zmm31, 5376(%rsp)                            # c1485
        valignd   $15, %zmm3, %zmm2, %zmm31                     # c1489
        vpshufd   $1, %zmm4, %zmm3                              # c1493
        movb      %al, %al                                      # c1493
        vmovaps   %zmm31, 5248(%rsp)                            # c1497
        vpshufd   $2, %zmm4, %zmm31                             # c1501
        vmovaps   %zmm3, 5312(%rsp)                             # c1501
        vpshufd   $3, %zmm4, %zmm3                              # c1505
        movb      %al, %al                                      # c1505
        vmovaps   %zmm31, 5184(%rsp)                            # c1509
        vpermf32x4 $1, %zmm4, %zmm31                            # c1513
        vmovaps   %zmm3, 5120(%rsp)                             # c1513
        valignd   $5, %zmm4, %zmm2, %zmm3                       # c1517
        movb      %al, %al                                      # c1517
        vmovaps   %zmm31, 5056(%rsp)                            # c1521
        valignd   $6, %zmm4, %zmm2, %zmm31                      # c1525
        vmovaps   %zmm3, 4992(%rsp)                             # c1525
        valignd   $7, %zmm4, %zmm2, %zmm3                       # c1529
        movb      %al, %al                                      # c1529
        vmovaps   %zmm31, 4800(%rsp)                            # c1533
        vpermf32x4 $2, %zmm4, %zmm31                            # c1537
        vmovaps   %zmm3, 4736(%rsp)                             # c1537
        valignd   $9, %zmm4, %zmm2, %zmm3                       # c1541
        movb      %al, %al                                      # c1541
        vmovaps   %zmm31, 4672(%rsp)                            # c1545
        valignd   $10, %zmm4, %zmm2, %zmm31                     # c1549
        vmovaps   %zmm3, 4608(%rsp)                             # c1549
        valignd   $11, %zmm4, %zmm2, %zmm3                      # c1553
        movb      %al, %al                                      # c1553
        vmovaps   %zmm31, 4544(%rsp)                            # c1557
        vpermf32x4 $3, %zmm4, %zmm31                            # c1561
        vmovaps   %zmm3, 4480(%rsp)                             # c1561
        valignd   $13, %zmm4, %zmm2, %zmm3                      # c1565
        movb      %al, %al                                      # c1565
        vmovaps   %zmm31, 4416(%rsp)                            # c1569
        valignd   $14, %zmm4, %zmm2, %zmm31                     # c1573
        vmovaps   %zmm3, 4352(%rsp)                             # c1573
        valignd   $15, %zmm4, %zmm2, %zmm3                      # c1577
        vpshufd   $2, %zmm5, %zmm4                              # c1581
        vmovaps   %zmm31, 4288(%rsp)                            # c1581
        vpshufd   $3, %zmm5, %zmm31                             # c1585
        vmovaps   %zmm3, 4160(%rsp)                             # c1585
        vpshufd   $1, %zmm5, %zmm3                              # c1589
        vmovaps   %zmm4, 4096(%rsp)                             # c1589
        valignd   $5, %zmm5, %zmm2, %zmm4                       # c1593
        vmovaps   %zmm31, 4032(%rsp)                            # c1593
        valignd   $6, %zmm5, %zmm2, %zmm31                      # c1597
        vmovaps   %zmm3, 4224(%rsp)                             # c1597
        vpermf32x4 $1, %zmm5, %zmm3                             # c1601
        vmovaps   %zmm4, 3904(%rsp)                             # c1601
        vpermf32x4 $2, %zmm5, %zmm4                             # c1605
        vmovaps   %zmm31, 3840(%rsp)                            # c1605
        valignd   $9, %zmm5, %zmm2, %zmm31                      # c1609
        vmovaps   %zmm3, 3968(%rsp)                             # c1609
        valignd   $7, %zmm5, %zmm2, %zmm3                       # c1613
        vmovaps   %zmm4, 3712(%rsp)                             # c1613
        valignd   $11, %zmm5, %zmm2, %zmm4                      # c1617
        vmovaps   %zmm31, 3648(%rsp)                            # c1617
        vpermf32x4 $3, %zmm5, %zmm31                            # c1621
        vmovaps   %zmm3, 3776(%rsp)                             # c1621
        valignd   $10, %zmm5, %zmm2, %zmm3                      # c1625
        vmovaps   %zmm4, 3520(%rsp)                             # c1625
        valignd   $14, %zmm5, %zmm2, %zmm4                      # c1629
        vmovaps   %zmm31, 3456(%rsp)                            # c1629
        valignd   $15, %zmm5, %zmm2, %zmm31                     # c1633
        vmovaps   %zmm3, 3584(%rsp)                             # c1633
        valignd   $13, %zmm5, %zmm2, %zmm3                      # c1637
        vmovaps   %zmm4, 3328(%rsp)                             # c1637
        vpshufd   $2, %zmm6, %zmm4                              # c1641
        vmovaps   %zmm31, 3200(%rsp)                            # c1641
        vpshufd   $3, %zmm6, %zmm5                              # c1645
        vmovaps   %zmm3, 3392(%rsp)                             # c1645
        vpshufd   $1, %zmm6, %zmm3                              # c1649
        vmovaps   %zmm4, 3136(%rsp)                             # c1649
        valignd   $6, %zmm6, %zmm2, %zmm4                       # c1653
        vmovaps   %zmm5, 3072(%rsp)                             # c1653
        vpermf32x4 $1, %zmm6, %zmm31                            # c1657
        vmovaps   %zmm3, 3264(%rsp)                             # c1657
        valignd   $5, %zmm6, %zmm2, %zmm3                       # c1661
        vmovaps   %zmm4, 2880(%rsp)                             # c1661
        valignd   $7, %zmm6, %zmm2, %zmm5                       # c1665
        vmovaps   %zmm31, 3008(%rsp)                            # c1665
        valignd   $10, %zmm6, %zmm2, %zmm4                      # c1669
        vmovaps   %zmm3, 2944(%rsp)                             # c1669
        valignd   $9, %zmm6, %zmm2, %zmm3                       # c1673
        vmovaps   %zmm5, 2816(%rsp)                             # c1673
        vpermf32x4 $2, %zmm6, %zmm31                            # c1677
        vmovaps   %zmm4, 2624(%rsp)                             # c1677
        valignd   $11, %zmm6, %zmm2, %zmm5                      # c1681
        vmovaps   %zmm3, 2688(%rsp)                             # c1681
        valignd   $13, %zmm6, %zmm2, %zmm3                      # c1685
        vmovaps   %zmm31, 2752(%rsp)                            # c1685
        valignd   $14, %zmm6, %zmm2, %zmm4                      # c1689
        vmovaps   %zmm5, 2560(%rsp)                             # c1689
        valignd   $15, %zmm6, %zmm2, %zmm2                      # c1693
        vmovaps   %zmm3, 2432(%rsp)                             # c1693
        vpermf32x4 $3, %zmm6, %zmm31                            # c1697
        vmovaps   %zmm4, 2304(%rsp)                             # c1697
        vmovaps   7552(%rsp), %zmm3                             # c1701
        vmovaps   %zmm2, 2368(%rsp)                             # c1701
        vmovaps   7488(%rsp), %zmm2                             # c1705
        vmovaps   %zmm31, 2496(%rsp)                            # c1705
        vmovaps   7616(%rsp), %zmm4                             # c1709
        vmovaps   7680(%rsp), %zmm5                             # c1713
        vmovaps   7744(%rsp), %zmm6                             # c1717
        vpackstorelps %zmm2, 8696(%rsp){%k7}                    # c1721
        vpackstorelps %zmm3, 8704(%rsp){%k7}                    # c1725
        vpackstorelps %zmm6, 8728(%rsp){%k7}                    # c1729
        vpackstorelps %zmm4, 8712(%rsp){%k7}                    # c1733
        vpackstorelps %zmm5, 8720(%rsp){%k7}                    # c1737
        vmovaps   8192(%rsp), %zmm6                             # c1741
        vmovaps   8256(%rsp), %zmm3                             # c1745
        vmovaps   8320(%rsp), %zmm2                             # c1749
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r14b zmm0 zmm1 zmm2 zmm3 zmm6 zmm7 zmm11 zmm12 zmm30 k1 k2 k3 k4 k5 k6
..B4.122:                       # Preds ..B4.53 Latency 1505
        vmovaps   5952(%rsp), %zmm31                            # c1
        movq      %r15, 9544(%rsp)                              # c1
        vpackstorelps %zmm0, 1228(%rsp){%k5}                    # c5
        vmovaps   6400(%rsp), %zmm14                            # c9
        movl      $1, %r15d                                     # c9
        vmovaps   6336(%rsp), %zmm16                            # c13
        kmov      %r15d, %k7                                    # c13
        vpackstorelps %zmm31, 8784(%rsp){%k7}                   # c17
        vmovaps   5888(%rsp), %zmm31                            # c21
        vmovaps   6592(%rsp), %zmm22                            # c25
        vpackstorelps %zmm31, 8792(%rsp){%k7}                   # c29
        vmovaps   5824(%rsp), %zmm31                            # c33
        vmovaps   6720(%rsp), %zmm21                            # c37
        vpackstorelps %zmm31, 8800(%rsp){%k7}                   # c41
        vmovaps   5760(%rsp), %zmm31                            # c45
        vmovaps   6912(%rsp), %zmm20                            # c49
        vpackstorelps %zmm31, 8808(%rsp){%k7}                   # c53
        vmovaps   5696(%rsp), %zmm31                            # c57
        vmovaps   6784(%rsp), %zmm19                            # c61
        vpackstorelps %zmm31, 8816(%rsp){%k7}                   # c65
        vmovaps   5632(%rsp), %zmm31                            # c69
        vmovaps   6528(%rsp), %zmm18                            # c73
        vpackstorelps %zmm31, 8824(%rsp){%k7}                   # c77
        vmovaps   5568(%rsp), %zmm31                            # c81
        vmovaps   7104(%rsp), %zmm17                            # c85
        vpackstorelps %zmm31, 8832(%rsp){%k7}                   # c89
        vmovaps   5504(%rsp), %zmm31                            # c93
        vmovaps   6848(%rsp), %zmm23                            # c97
        vpackstorelps %zmm31, 8840(%rsp){%k7}                   # c101
        vmovaps   5440(%rsp), %zmm31                            # c105
        vmovaps   6656(%rsp), %zmm12                            # c109
        vpackstorelps %zmm31, 8848(%rsp){%k7}                   # c113
        vmovaps   5376(%rsp), %zmm31                            # c117
        vmovaps   6464(%rsp), %zmm13                            # c121
        vpackstorelps %zmm31, 8856(%rsp){%k7}                   # c125
        vmovaps   5248(%rsp), %zmm31                            # c129
        vmovaps   6976(%rsp), %zmm15                            # c133
        vpackstorelps %zmm31, 8864(%rsp){%k7}                   # c137
        vmovaps   5312(%rsp), %zmm31                            # c141
        vmovaps   7424(%rsp), %zmm8                             # c145
        vpackstorelps %zmm31, 8872(%rsp){%k7}                   # c149
        vmovaps   5184(%rsp), %zmm31                            # c153
        vmovaps   7296(%rsp), %zmm9                             # c157
        vpackstorelps %zmm31, 8880(%rsp){%k7}                   # c161
        vmovaps   5120(%rsp), %zmm31                            # c165
        vmovaps   7360(%rsp), %zmm10                            # c169
        vpackstorelps %zmm31, 8888(%rsp){%k7}                   # c173
        vmovaps   5056(%rsp), %zmm31                            # c177
        vmovaps   7040(%rsp), %zmm4                             # c181
        vpackstorelps %zmm31, 8896(%rsp){%k7}                   # c185
        vmovaps   4992(%rsp), %zmm31                            # c189
        vmovaps   7232(%rsp), %zmm5                             # c193
        vpackstorelps %zmm31, 8904(%rsp){%k7}                   # c197
        vmovaps   4800(%rsp), %zmm31                            # c201
        vmovaps   7168(%rsp), %zmm29                            # c205
        vpackstorelps %zmm31, 8912(%rsp){%k7}                   # c209
        vmovaps   4736(%rsp), %zmm31                            # c213
        vmovaps   6272(%rsp), %zmm28                            # c217
        vpackstorelps %zmm31, 8920(%rsp){%k7}                   # c221
        vmovaps   4672(%rsp), %zmm31                            # c225
        vmovaps   6208(%rsp), %zmm27                            # c229
        vpackstorelps %zmm31, 8928(%rsp){%k7}                   # c233
        vmovaps   4608(%rsp), %zmm31                            # c237
        vmovaps   6144(%rsp), %zmm26                            # c241
        vpackstorelps %zmm31, 8936(%rsp){%k7}                   # c245
        vmovaps   4544(%rsp), %zmm31                            # c249
        vmovaps   6080(%rsp), %zmm25                            # c253
        vpackstorelps %zmm31, 8944(%rsp){%k7}                   # c257
        vmovaps   4480(%rsp), %zmm31                            # c261
        vmovaps   6016(%rsp), %zmm24                            # c265
        vpackstorelps %zmm31, 8952(%rsp){%k7}                   # c269
        vmovaps   4416(%rsp), %zmm31                            # c273
        vpackstorelps %zmm14, 1992(%rsp){%k5}                   # c277
        vpackstorelps %zmm31, 8960(%rsp){%k7}                   # c281
        vmovaps   4352(%rsp), %zmm31                            # c285
        vbroadcastss 8872(%rsp), %zmm14                         # c289
        vpackstorelps %zmm31, 8968(%rsp){%k7}                   # c293
        vmovaps   4288(%rsp), %zmm31                            # c297
        vpackstorelps %zmm16, 2120(%rsp){%k5}                   # c301
        vpackstorelps %zmm31, 8976(%rsp){%k7}                   # c305
        vmovaps   4160(%rsp), %zmm31                            # c309
        vbroadcastss 8888(%rsp), %zmm16                         # c313
        vpackstorelps %zmm31, 8984(%rsp){%k7}                   # c317
        vmovaps   4224(%rsp), %zmm31                            # c321
        vpackstorelps %zmm22, 1416(%rsp){%k5}                   # c325
        vpackstorelps %zmm31, 8992(%rsp){%k7}                   # c329
        vmovaps   4096(%rsp), %zmm31                            # c333
        vpackstorelps %zmm21, 1480(%rsp){%k5}                   # c337
        vpackstorelps %zmm31, 9000(%rsp){%k7}                   # c341
        vmovaps   4032(%rsp), %zmm31                            # c345
        vpackstorelps %zmm20, 1544(%rsp){%k5}                   # c349
        vpackstorelps %zmm31, 9008(%rsp){%k7}                   # c353
        vmovaps   3968(%rsp), %zmm31                            # c357
        vpackstorelps %zmm19, 1608(%rsp){%k5}                   # c361
        vpackstorelps %zmm31, 9016(%rsp){%k7}                   # c365
        vmovaps   3904(%rsp), %zmm31                            # c369
        vpackstorelps %zmm18, 1672(%rsp){%k5}                   # c373
        vpackstorelps %zmm31, 9024(%rsp){%k7}                   # c377
        vmovaps   3840(%rsp), %zmm31                            # c381
        vpackstorelps %zmm17, 1736(%rsp){%k5}                   # c385
        vpackstorelps %zmm31, 9032(%rsp){%k7}                   # c389
        vmovaps   3776(%rsp), %zmm31                            # c393
        vpackstorelps %zmm23, 1800(%rsp){%k5}                   # c397
        vpackstorelps %zmm31, 9040(%rsp){%k7}                   # c401
        vmovaps   3712(%rsp), %zmm31                            # c405
        vpackstorelps %zmm12, 1864(%rsp){%k5}                   # c409
        vpackstorelps %zmm31, 9048(%rsp){%k7}                   # c413
        vmovaps   3648(%rsp), %zmm31                            # c417
        vpackstorelps %zmm13, 1928(%rsp){%k5}                   # c421
        vpackstorelps %zmm31, 9056(%rsp){%k7}                   # c425
        vmovaps   3584(%rsp), %zmm31                            # c429
        vpackstorelps %zmm15, 2056(%rsp){%k5}                   # c433
        vpackstorelps %zmm31, 9064(%rsp){%k7}                   # c437
        vmovaps   3520(%rsp), %zmm31                            # c441
        vbroadcastss 8472(%rsp), %zmm12                         # c445
        vpackstorelps %zmm31, 9072(%rsp){%k7}                   # c449
        vmovaps   3456(%rsp), %zmm31                            # c453
        vpackstorelps %zmm11, 1292(%rsp){%k5}                   # c457
        vpackstorelps %zmm31, 9080(%rsp){%k7}                   # c461
        vmovaps   3392(%rsp), %zmm31                            # c465
        vpackstorelps %zmm7, 1356(%rsp){%k5}                    # c469
        vpackstorelps %zmm31, 9088(%rsp){%k7}                   # c473
        vmovaps   3328(%rsp), %zmm31                            # c477
        vpackstorelps %zmm8, 1420(%rsp){%k5}                    # c481
        vpackstorelps %zmm31, 9096(%rsp){%k7}                   # c485
        vmovaps   3200(%rsp), %zmm31                            # c489
        vpackstorelps %zmm9, 1484(%rsp){%k5}                    # c493
        vpackstorelps %zmm31, 9104(%rsp){%k7}                   # c497
        vmovaps   3264(%rsp), %zmm31                            # c501
        vpackstorelps %zmm10, 1548(%rsp){%k5}                   # c505
        vpackstorelps %zmm31, 9112(%rsp){%k7}                   # c509
        vmovaps   3136(%rsp), %zmm31                            # c513
        vpackstorelps %zmm6, 1612(%rsp){%k5}                    # c517
        vpackstorelps %zmm31, 9120(%rsp){%k7}                   # c521
        vmovaps   3072(%rsp), %zmm31                            # c525
        vpackstorelps %zmm3, 1676(%rsp){%k5}                    # c529
        vpackstorelps %zmm31, 9128(%rsp){%k7}                   # c533
        vmovaps   3008(%rsp), %zmm31                            # c537
        vpackstorelps %zmm4, 1740(%rsp){%k5}                    # c541
        vpackstorelps %zmm31, 9136(%rsp){%k7}                   # c545
        vmovaps   2944(%rsp), %zmm31                            # c549
        vpackstorelps %zmm5, 1804(%rsp){%k5}                    # c553
        vpackstorelps %zmm31, 9144(%rsp){%k7}                   # c557
        vmovaps   2880(%rsp), %zmm31                            # c561
        vpackstorelps %zmm2, 1868(%rsp){%k5}                    # c565
        vpackstorelps %zmm31, 9152(%rsp){%k7}                   # c569
        vmovaps   2816(%rsp), %zmm31                            # c573
        vpackstorelps %zmm29, 1996(%rsp){%k5}                   # c577
        vpackstorelps %zmm31, 9160(%rsp){%k7}                   # c581
        vmovaps   2752(%rsp), %zmm31                            # c585
        vpackstorelps %zmm28, 2060(%rsp){%k5}                   # c589
        vpackstorelps %zmm31, 9168(%rsp){%k7}                   # c593
        vmovaps   2688(%rsp), %zmm31                            # c597
        vpackstorelps %zmm27, 2124(%rsp){%k5}                   # c601
        vpackstorelps %zmm31, 9176(%rsp){%k7}                   # c605
        vmovaps   2624(%rsp), %zmm31                            # c609
        vbroadcastss 8480(%rsp), %zmm0                          # c613
        vpackstorelps %zmm31, 9184(%rsp){%k7}                   # c617
        vmovaps   2560(%rsp), %zmm31                            # c621
        vpackstorelps %zmm1, 1232(%rsp){%k5}                    # c625
        vpackstorelps %zmm31, 9192(%rsp){%k7}                   # c629
        vmovaps   2496(%rsp), %zmm31                            # c633
        vpackstorelps %zmm26, 1296(%rsp){%k5}                   # c637
        vpackstorelps %zmm31, 9200(%rsp){%k7}                   # c641
        vmovaps   2432(%rsp), %zmm31                            # c645
        vpackstorelps %zmm25, 1360(%rsp){%k5}                   # c649
        vpackstorelps %zmm31, 9208(%rsp){%k7}                   # c653
        vmovaps   2304(%rsp), %zmm31                            # c657
        vpackstorelps %zmm24, 1424(%rsp){%k5}                   # c661
        vpackstorelps %zmm31, 9216(%rsp){%k7}                   # c665
        vmovaps   2368(%rsp), %zmm31                            # c669
        vbroadcastss 8784(%rsp), %zmm1                          # c673
        vpackstorelps %zmm31, 9224(%rsp){%k7}                   # c677
        vbroadcastss 8632(%rsp), %zmm31                         # c681
        vbroadcastss 8792(%rsp), %zmm2                          # c685
        vpackstorelps %zmm31, 1216(%rsp){%k5}                   # c689
        vbroadcastss 8640(%rsp), %zmm31                         # c693
        vbroadcastss 8800(%rsp), %zmm3                          # c697
        vpackstorelps %zmm31, 1280(%rsp){%k5}                   # c701
        vbroadcastss 8648(%rsp), %zmm31                         # c705
        vbroadcastss 8808(%rsp), %zmm4                          # c709
        vpackstorelps %zmm31, 1344(%rsp){%k5}                   # c713
        vbroadcastss 8656(%rsp), %zmm31                         # c717
        vbroadcastss 8816(%rsp), %zmm5                          # c721
        vpackstorelps %zmm31, 1408(%rsp){%k5}                   # c725
        vbroadcastss 8664(%rsp), %zmm31                         # c729
        vbroadcastss 8824(%rsp), %zmm6                          # c733
        vpackstorelps %zmm31, 1472(%rsp){%k5}                   # c737
        vbroadcastss 8672(%rsp), %zmm31                         # c741
        vbroadcastss 8832(%rsp), %zmm7                          # c745
        vpackstorelps %zmm31, 1536(%rsp){%k5}                   # c749
        vbroadcastss 8680(%rsp), %zmm31                         # c753
        vbroadcastss 8840(%rsp), %zmm8                          # c757
        vpackstorelps %zmm31, 1600(%rsp){%k5}                   # c761
        vbroadcastss 8688(%rsp), %zmm31                         # c765
        vbroadcastss 8848(%rsp), %zmm9                          # c769
        vpackstorelps %zmm31, 1664(%rsp){%k5}                   # c773
        vbroadcastss 8696(%rsp), %zmm31                         # c777
        vbroadcastss 8856(%rsp), %zmm10                         # c781
        vpackstorelps %zmm31, 1728(%rsp){%k5}                   # c785
        vbroadcastss 8704(%rsp), %zmm31                         # c789
        vbroadcastss 8864(%rsp), %zmm11                         # c793
        vpackstorelps %zmm31, 1792(%rsp){%k5}                   # c797
        vbroadcastss 8712(%rsp), %zmm31                         # c801
        vbroadcastss 8488(%rsp), %zmm13                         # c805
        vpackstorelps %zmm31, 1856(%rsp){%k5}                   # c809
        vbroadcastss 8720(%rsp), %zmm31                         # c813
        vpackstorelps %zmm14, 1236(%rsp){%k5}                   # c817
        vpackstorelps %zmm31, 1920(%rsp){%k5}                   # c821
        vbroadcastss 8728(%rsp), %zmm31                         # c825
        vbroadcastss 8880(%rsp), %zmm15                         # c829
        vpackstorelps %zmm31, 1984(%rsp){%k5}                   # c833
        vbroadcastss 8736(%rsp), %zmm31                         # c837
        vbroadcastss 8896(%rsp), %zmm17                         # c841
        vpackstorelps %zmm31, 2048(%rsp){%k5}                   # c845
        vbroadcastss 8744(%rsp), %zmm31                         # c849
        vbroadcastss 8904(%rsp), %zmm18                         # c853
        vpackstorelps %zmm31, 2112(%rsp){%k5}                   # c857
        vbroadcastss 8456(%rsp), %zmm31                         # c861
        vbroadcastss 8912(%rsp), %zmm19                         # c865
        vpackstorelps %zmm31, 1156(%rsp){%k5}                   # c869
        vbroadcastss 8512(%rsp), %zmm31                         # c873
        vbroadcastss 8920(%rsp), %zmm20                         # c877
        vpackstorelps %zmm31, 1220(%rsp){%k5}                   # c881
        vbroadcastss 8520(%rsp), %zmm31                         # c885
        vbroadcastss 8928(%rsp), %zmm21                         # c889
        vpackstorelps %zmm31, 1284(%rsp){%k5}                   # c893
        vbroadcastss 8528(%rsp), %zmm31                         # c897
        vbroadcastss 8936(%rsp), %zmm22                         # c901
        vpackstorelps %zmm31, 1348(%rsp){%k5}                   # c905
        vbroadcastss 8536(%rsp), %zmm31                         # c909
        vbroadcastss 8944(%rsp), %zmm23                         # c913
        vpackstorelps %zmm31, 1412(%rsp){%k5}                   # c917
        vbroadcastss 8544(%rsp), %zmm31                         # c921
        vbroadcastss 8952(%rsp), %zmm24                         # c925
        vpackstorelps %zmm31, 1476(%rsp){%k5}                   # c929
        vbroadcastss 8552(%rsp), %zmm31                         # c933
        vbroadcastss 8960(%rsp), %zmm25                         # c937
        vpackstorelps %zmm31, 1540(%rsp){%k5}                   # c941
        vbroadcastss 8560(%rsp), %zmm31                         # c945
        vbroadcastss 8968(%rsp), %zmm26                         # c949
        vpackstorelps %zmm31, 1604(%rsp){%k5}                   # c953
        vbroadcastss 8568(%rsp), %zmm31                         # c957
        vbroadcastss 8976(%rsp), %zmm27                         # c961
        vpackstorelps %zmm31, 1668(%rsp){%k5}                   # c965
        vbroadcastss 8576(%rsp), %zmm31                         # c969
        vbroadcastss 8984(%rsp), %zmm28                         # c973
        vpackstorelps %zmm31, 1732(%rsp){%k5}                   # c977
        vbroadcastss 8584(%rsp), %zmm31                         # c981
        vbroadcastss 8496(%rsp), %zmm29                         # c985
        vpackstorelps %zmm31, 1796(%rsp){%k5}                   # c989
        vbroadcastss 8592(%rsp), %zmm31                         # c993
        vbroadcastss 8504(%rsp), %zmm14                         # c997
        vpackstorelps %zmm31, 1860(%rsp){%k5}                   # c1001
        vbroadcastss 8600(%rsp), %zmm31                         # c1005
        vpackstorelps %zmm16, 1364(%rsp){%k5}                   # c1009
        vpackstorelps %zmm31, 1924(%rsp){%k5}                   # c1013
        vbroadcastss 8608(%rsp), %zmm31                         # c1017
        vbroadcastss 9120(%rsp), %zmm16                         # c1021
        vpackstorelps %zmm31, 1988(%rsp){%k5}                   # c1025
        vbroadcastss 8616(%rsp), %zmm31                         # c1029
        vpackstorelps %zmm12, 1164(%rsp){%k5}                   # c1033
        vpackstorelps %zmm31, 2052(%rsp){%k5}                   # c1037
        vbroadcastss 8624(%rsp), %zmm31                         # c1041
        vpackstorelps %zmm30, 1932(%rsp){%k5}                   # c1045
        vpackstorelps %zmm31, 2116(%rsp){%k5}                   # c1049
        vbroadcastss 8464(%rsp), %zmm31                         # c1053
        vpackstorelps %zmm0, 1168(%rsp){%k5}                    # c1057
        vpackstorelps %zmm31, 1160(%rsp){%k5}                   # c1061
        vbroadcastss 8752(%rsp), %zmm31                         # c1065
        vpackstorelps %zmm1, 1488(%rsp){%k5}                    # c1069
        vpackstorelps %zmm31, 1224(%rsp){%k5}                   # c1073
        vbroadcastss 8760(%rsp), %zmm31                         # c1077
        vpackstorelps %zmm2, 1552(%rsp){%k5}                    # c1081
        vpackstorelps %zmm31, 1288(%rsp){%k5}                   # c1085
        vbroadcastss 8768(%rsp), %zmm31                         # c1089
        vpackstorelps %zmm3, 1616(%rsp){%k5}                    # c1093
        vpackstorelps %zmm4, 1680(%rsp){%k5}                    # c1097
        vpackstorelps %zmm5, 1744(%rsp){%k5}                    # c1101
        vpackstorelps %zmm6, 1808(%rsp){%k5}                    # c1105
        vpackstorelps %zmm7, 1872(%rsp){%k5}                    # c1109
        vpackstorelps %zmm8, 1936(%rsp){%k5}                    # c1113
        vpackstorelps %zmm9, 2000(%rsp){%k5}                    # c1117
        vpackstorelps %zmm10, 2064(%rsp){%k5}                   # c1121
        vpackstorelps %zmm11, 2128(%rsp){%k5}                   # c1125
        vpackstorelps %zmm13, 1172(%rsp){%k5}                   # c1129
        vpackstorelps %zmm15, 1300(%rsp){%k5}                   # c1133
        vpackstorelps %zmm17, 1428(%rsp){%k5}                   # c1137
        vpackstorelps %zmm18, 1492(%rsp){%k5}                   # c1141
        vpackstorelps %zmm19, 1556(%rsp){%k5}                   # c1145
        vpackstorelps %zmm20, 1620(%rsp){%k5}                   # c1149
        vpackstorelps %zmm21, 1684(%rsp){%k5}                   # c1153
        vpackstorelps %zmm22, 1748(%rsp){%k5}                   # c1157
        vpackstorelps %zmm23, 1812(%rsp){%k5}                   # c1161
        vpackstorelps %zmm24, 1876(%rsp){%k5}                   # c1165
        vpackstorelps %zmm25, 1940(%rsp){%k5}                   # c1169
        vpackstorelps %zmm26, 2004(%rsp){%k5}                   # c1173
        vpackstorelps %zmm27, 2068(%rsp){%k5}                   # c1177
        vpackstorelps %zmm28, 2132(%rsp){%k5}                   # c1181
        vpackstorelps %zmm29, 1176(%rsp){%k5}                   # c1185
        vbroadcastss 8992(%rsp), %zmm30                         # c1189
        vbroadcastss 9000(%rsp), %zmm0                          # c1193
        vbroadcastss 9008(%rsp), %zmm1                          # c1197
        vbroadcastss 9016(%rsp), %zmm2                          # c1201
        vbroadcastss 9024(%rsp), %zmm3                          # c1205
        vbroadcastss 9032(%rsp), %zmm4                          # c1209
        vbroadcastss 9040(%rsp), %zmm5                          # c1213
        vbroadcastss 9048(%rsp), %zmm6                          # c1217
        vbroadcastss 9056(%rsp), %zmm7                          # c1221
        vbroadcastss 9064(%rsp), %zmm8                          # c1225
        vbroadcastss 9072(%rsp), %zmm9                          # c1229
        vbroadcastss 9080(%rsp), %zmm10                         # c1233
        vbroadcastss 9088(%rsp), %zmm11                         # c1237
        vbroadcastss 9096(%rsp), %zmm12                         # c1241
        vbroadcastss 9104(%rsp), %zmm13                         # c1245
        vpackstorelps %zmm14, 1180(%rsp){%k5}                   # c1249
        vbroadcastss 9112(%rsp), %zmm15                         # c1253
        vbroadcastss 9128(%rsp), %zmm17                         # c1257
        vbroadcastss 9136(%rsp), %zmm18                         # c1261
        vbroadcastss 9144(%rsp), %zmm19                         # c1265
        vbroadcastss 9152(%rsp), %zmm20                         # c1269
        vbroadcastss 9160(%rsp), %zmm21                         # c1273
        vbroadcastss 9168(%rsp), %zmm22                         # c1277
        vbroadcastss 9176(%rsp), %zmm23                         # c1281
        vbroadcastss 9184(%rsp), %zmm24                         # c1285
        vbroadcastss 9192(%rsp), %zmm25                         # c1289
        vbroadcastss 9200(%rsp), %zmm26                         # c1293
        vbroadcastss 9208(%rsp), %zmm27                         # c1297
        vbroadcastss 9216(%rsp), %zmm28                         # c1301
        vbroadcastss 9224(%rsp), %zmm29                         # c1305
        vpackstorelps %zmm16, 1308(%rsp){%k5}                   # c1309
        vmovaps   1152(%rsp), %zmm16                            # c1313
        vpackstorelps %zmm31, 1352(%rsp){%k5}                   # c1317
        vpackstorelps %zmm30, 1240(%rsp){%k5}                   # c1321
        vpackstorelps %zmm0, 1304(%rsp){%k5}                    # c1325
        vpackstorelps %zmm1, 1368(%rsp){%k5}                    # c1329
        vpackstorelps %zmm2, 1432(%rsp){%k5}                    # c1333
        vpackstorelps %zmm3, 1496(%rsp){%k5}                    # c1337
        vpackstorelps %zmm4, 1560(%rsp){%k5}                    # c1341
        vpackstorelps %zmm5, 1624(%rsp){%k5}                    # c1345
        vpackstorelps %zmm6, 1688(%rsp){%k5}                    # c1349
        vpackstorelps %zmm7, 1752(%rsp){%k5}                    # c1353
        vpackstorelps %zmm8, 1816(%rsp){%k5}                    # c1357
        vpackstorelps %zmm9, 1880(%rsp){%k5}                    # c1361
        vpackstorelps %zmm10, 1944(%rsp){%k5}                   # c1365
        vpackstorelps %zmm11, 2008(%rsp){%k5}                   # c1369
        vpackstorelps %zmm12, 2072(%rsp){%k5}                   # c1373
        vpackstorelps %zmm13, 2136(%rsp){%k5}                   # c1377
        vpackstorelps %zmm15, 1244(%rsp){%k5}                   # c1381
        vpackstorelps %zmm17, 1372(%rsp){%k5}                   # c1385
        vpackstorelps %zmm18, 1436(%rsp){%k5}                   # c1389
        vpackstorelps %zmm19, 1500(%rsp){%k5}                   # c1393
        vpackstorelps %zmm20, 1564(%rsp){%k5}                   # c1397
        vpackstorelps %zmm21, 1628(%rsp){%k5}                   # c1401
        vpackstorelps %zmm22, 1692(%rsp){%k5}                   # c1405
        vpackstorelps %zmm23, 1756(%rsp){%k5}                   # c1409
        vpackstorelps %zmm24, 1820(%rsp){%k5}                   # c1413
        vpackstorelps %zmm25, 1884(%rsp){%k5}                   # c1417
        vpackstorelps %zmm26, 1948(%rsp){%k5}                   # c1421
        vpackstorelps %zmm27, 2012(%rsp){%k5}                   # c1425
        vpackstorelps %zmm28, 2076(%rsp){%k5}                   # c1429
        vpackstorelps %zmm29, 2140(%rsp){%k5}                   # c1433
        vmovaps   1216(%rsp), %zmm15                            # c1437
        vmovaps   1280(%rsp), %zmm14                            # c1441
        vmovaps   1344(%rsp), %zmm13                            # c1445
        vmovaps   1408(%rsp), %zmm11                            # c1449
        vmovaps   1472(%rsp), %zmm10                            # c1453
        vmovaps   1536(%rsp), %zmm9                             # c1457
        vmovaps   1600(%rsp), %zmm8                             # c1461
        vmovaps   1664(%rsp), %zmm7                             # c1465
        vmovaps   1728(%rsp), %zmm6                             # c1469
        vmovaps   1792(%rsp), %zmm5                             # c1473
        vmovaps   1856(%rsp), %zmm4                             # c1477
        vmovaps   1920(%rsp), %zmm3                             # c1481
        vmovaps   1984(%rsp), %zmm2                             # c1485
        vmovaps   2048(%rsp), %zmm1                             # c1489
        vmovaps   2112(%rsp), %zmm0                             # c1493
        vpackstorelps %zmm16, (%rax){%k4}                       # c1493
        movq      9472(%rsp), %r15                              # c1497
        vpxord    %zmm12, %zmm12, %zmm12                        # c1501
        cmpq      $33, %r15                                     # c1501
        movq      9544(%rsp), %r15                              # c1505
        jb        ..B4.56       # Prob 0%                       # c1505
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 k1 k2 k3 k4 k5 k6
..CL204:
..B4.55:                        # Preds ..B4.122 Latency 1
        vpackstorehps %zmm16, 64(%rax){%k4}                     # c1
        movb      %dl, %dl                                      # c1
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL203:
..B4.56:                        # Preds ..B4.55 ..B4.122 Latency 9
        movq      %rdx, %rax                                    # c1
        vpackstorelps %zmm15, (%rdx){%k4}                       # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.59       # Prob 0%                       # c9
                                # LOE rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 k1 k2 k3 k4 k5 k6
..CL206:
..B4.58:                        # Preds ..B4.56 Latency 1
        vpackstorehps %zmm15, 64(%rdx){%k4}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 k1 k2 k3 k4 k5 k6
..CL205:
..B4.59:                        # Preds ..B4.58 ..B4.56 Latency 13
        movq      9504(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        vpackstorelps %zmm14, (%rax){%k4}                       # c5
        andq      $63, %rdx                                     # c9
        cmpq      $33, %rdx                                     # c13
        jb        ..B4.62       # Prob 0%                       # c13
                                # LOE rax rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 eax r14d r15d al ah r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 k1 k2 k3 k4 k5 k6
..CL208:
..B4.61:                        # Preds ..B4.59 Latency 1
        vpackstorehps %zmm14, 64(%rax){%k4}                     # c1
        movb      %dl, %dl                                      # c1
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 k1 k2 k3 k4 k5 k6
..CL207:
..B4.62:                        # Preds ..B4.61 ..B4.59 Latency 13
        movq      9488(%rsp), %rax                              # c1
        movq      %rax, %rdx                                    # c5
        vpackstorelps %zmm13, (%rax){%k4}                       # c5
        andq      $63, %rdx                                     # c9
        cmpq      $33, %rdx                                     # c13
        jb        ..B4.65       # Prob 0%                       # c13
                                # LOE rax rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 eax r14d r15d al ah r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 k1 k2 k3 k4 k5 k6
..CL210:
..B4.64:                        # Preds ..B4.62 Latency 1
        vpackstorehps %zmm13, 64(%rax){%k4}                     # c1
        movb      %dl, %dl                                      # c1
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 k1 k2 k3 k4 k5 k6
..CL209:
..B4.65:                        # Preds ..B4.64 ..B4.62 Latency 9
        movq      %rcx, %rax                                    # c1
        vpackstorelps %zmm11, (%rcx){%k4}                       # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.68       # Prob 0%                       # c9
                                # LOE rcx rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 k1 k2 k3 k4 k5 k6
..CL212:
..B4.67:                        # Preds ..B4.65 Latency 1
        vpackstorehps %zmm11, 64(%rcx){%k4}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm12 k1 k2 k3 k4 k5 k6
..CL211:
..B4.68:                        # Preds ..B4.67 ..B4.65 Latency 9
        movq      %rbx, %rax                                    # c1
        vpackstorelps %zmm10, (%rbx){%k4}                       # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.71       # Prob 0%                       # c9
                                # LOE rbx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm12 k1 k2 k3 k4 k5 k6
..CL214:
..B4.70:                        # Preds ..B4.68 Latency 1
        vpackstorehps %zmm10, 64(%rbx){%k4}                     # c1
        movb      %al, %al                                      # c1
                                # LOE rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm12 k1 k2 k3 k4 k5 k6
..CL213:
..B4.71:                        # Preds ..B4.70 ..B4.68 Latency 9
        movq      %rsi, %rax                                    # c1
        vpackstorelps %zmm9, (%rsi){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.74       # Prob 0%                       # c9
                                # LOE rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm12 k1 k2 k3 k4 k5 k6
..CL216:
..B4.73:                        # Preds ..B4.71 Latency 1
        vpackstorehps %zmm9, 64(%rsi){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm12 k1 k2 k3 k4 k5 k6
..CL215:
..B4.74:                        # Preds ..B4.73 ..B4.71 Latency 9
        movq      %rdi, %rax                                    # c1
        vpackstorelps %zmm8, (%rdi){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.77       # Prob 0%                       # c9
                                # LOE rdi r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm12 k1 k2 k3 k4 k5 k6
..CL218:
..B4.76:                        # Preds ..B4.74 Latency 1
        vpackstorehps %zmm8, 64(%rdi){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm12 k1 k2 k3 k4 k5 k6
..CL217:
..B4.77:                        # Preds ..B4.76 ..B4.74 Latency 9
        movq      %r8, %rax                                     # c1
        vpackstorelps %zmm7, (%r8){%k4}                         # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.80       # Prob 0%                       # c9
                                # LOE r8 r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm12 k1 k2 k3 k4 k5 k6
..CL220:
..B4.79:                        # Preds ..B4.77 Latency 1
        vpackstorehps %zmm7, 64(%r8){%k4}                       # c1
        movb      %al, %al                                      # c1
                                # LOE r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm12 k1 k2 k3 k4 k5 k6
..CL219:
..B4.80:                        # Preds ..B4.79 ..B4.77 Latency 9
        movq      %r9, %rax                                     # c1
        vpackstorelps %zmm6, (%r9){%k4}                         # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.83       # Prob 0%                       # c9
                                # LOE r9 r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm12 k1 k2 k3 k4 k5 k6
..CL222:
..B4.82:                        # Preds ..B4.80 Latency 1
        vpackstorehps %zmm6, 64(%r9){%k4}                       # c1
        movb      %al, %al                                      # c1
                                # LOE r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm12 k1 k2 k3 k4 k5 k6
..CL221:
..B4.83:                        # Preds ..B4.82 ..B4.80 Latency 9
        movq      %r10, %rax                                    # c1
        vpackstorelps %zmm5, (%r10){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.86       # Prob 0%                       # c9
                                # LOE r10 r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm12 k1 k2 k3 k4 k5 k6
..CL224:
..B4.85:                        # Preds ..B4.83 Latency 1
        vpackstorehps %zmm5, 64(%r10){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm12 k1 k2 k3 k4 k5 k6
..CL223:
..B4.86:                        # Preds ..B4.85 ..B4.83 Latency 9
        movq      %r11, %rax                                    # c1
        vpackstorelps %zmm4, (%r11){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.89       # Prob 0%                       # c9
                                # LOE r11 r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm4 zmm12 k1 k2 k3 k4 k5 k6
..CL226:
..B4.88:                        # Preds ..B4.86 Latency 1
        vpackstorehps %zmm4, 64(%r11){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm12 k1 k2 k3 k4 k5 k6
..CL225:
..B4.89:                        # Preds ..B4.88 ..B4.86 Latency 9
        movq      %r12, %rax                                    # c1
        vpackstorelps %zmm3, (%r12){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.92       # Prob 0%                       # c9
                                # LOE r12 r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm3 zmm12 k1 k2 k3 k4 k5 k6
..CL228:
..B4.91:                        # Preds ..B4.89 Latency 1
        vpackstorehps %zmm3, 64(%r12){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm12 k1 k2 k3 k4 k5 k6
..CL227:
..B4.92:                        # Preds ..B4.91 ..B4.89 Latency 9
        movq      %r13, %rax                                    # c1
        vpackstorelps %zmm2, (%r13){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.95       # Prob 0%                       # c9
                                # LOE r13 r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm2 zmm12 k1 k2 k3 k4 k5 k6
..CL230:
..B4.94:                        # Preds ..B4.92 Latency 1
        vpackstorehps %zmm2, 64(%r13){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm12 k1 k2 k3 k4 k5 k6
..CL229:
..B4.95:                        # Preds ..B4.94 ..B4.92 Latency 9
        movq      %r14, %rax                                    # c1
        vpackstorelps %zmm1, (%r14){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.98       # Prob 0%                       # c9
                                # LOE r14 r15 r14d r15d r14b r15b zmm0 zmm1 zmm12 k1 k2 k3 k4 k5 k6
..CL232:
..B4.97:                        # Preds ..B4.95 Latency 1
        vpackstorehps %zmm1, 64(%r14){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE r15 r15d r15b zmm0 zmm12 k1 k2 k3 k4 k5 k6
..CL231:
..B4.98:                        # Preds ..B4.97 ..B4.95 Latency 9
        movq      %r15, %rax                                    # c1
        vpackstorelps %zmm0, (%r15){%k4}                        # c1
        andq      $63, %rax                                     # c5
        cmpq      $33, %rax                                     # c9
        jb        ..B4.101      # Prob 0%                       # c9
                                # LOE r15 r15d r15b zmm0 zmm12 k1 k2 k3 k4 k5 k6
..CL234:
..B4.100:                       # Preds ..B4.98 Latency 1
        vpackstorehps %zmm0, 64(%r15){%k4}                      # c1
        movb      %al, %al                                      # c1
                                # LOE zmm12 k1 k2 k3 k4 k5 k6
..CL233:
..B4.101:                       # Preds ..B4.100 ..B4.98 Latency 57
        vmovaps   4864(%rsp), %zmm0                             # c1
        vpaddsetcd 2240(%rsp), %k7, %zmm0{%k3}                  # c5
        vmovaps   4928(%rsp), %zmm1                             # c9
        movb      %al, %al                                      # c9
        kmov      %k7, %eax                                     # c13
        movq      9336(%rsp), %rdx                              # c13
        addl      %eax, %eax                                    # c17
        kmov      %eax, %k7                                     # c21
        vpadcd    2240(%rsp), %k7, %zmm0{%k1}                   # c25
        vpaddsetcd 2240(%rsp), %k7, %zmm1{%k3}                  # c29
        movb      %al, %al                                      # c29
        vmovaps   %zmm0, 4864(%rsp)                             # c33
        movb      %al, %al                                      # c33
        kmov      %k7, %ecx                                     # c37
        addl      %ecx, %ecx                                    # c41
        kmov      %ecx, %k7                                     # c45
        decq      %rdx                                          # c45
        vpadcd    2240(%rsp), %k7, %zmm1{%k1}                   # c49
        movq      %rdx, 9336(%rsp)                              # c49
        nop                                                     # c53
        vmovaps   %zmm1, 4928(%rsp)                             # c57
        jne       ..B4.5        # Prob 0%                       # c57
                                # LOE zmm12 k1 k2 k3 k4 k5 k6
..B4.102:                       # Preds ..B4.101 Latency 25
        vmovaps   2176(%rsp), %zmm0                             # c1
        movb      %al, %al                                      # c1
        movq      9240(%rsp), %rbx                              # c5
        movq      9248(%rsp), %r8                               # c5
        movq      9256(%rsp), %r14                              # c9
        movq      9264(%rsp), %r9                               # c9
        movq      9272(%rsp), %rax                              # c13
        movq      9328(%rsp), %rdi                              # c13
        movl      9280(%rsp), %r10d                             # c17
        movq      9288(%rsp), %r11                              # c17
        movq      9296(%rsp), %rsi                              # c21
        movq      9304(%rsp), %rcx                              # c21
        movq      9312(%rsp), %rdx                              # c25
        movq      9320(%rsp), %r12                              # c25
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d al dl cl bl ah dh ch bh sil dil r8b r9b r10b r11b r12b r14b zmm0 zmm12 k1 k2 k3 k4 k5 k6
..CL235:
..B4.103:                       # Preds ..B4.102 Latency 5
        incq      %r14                                          # c1
        incq      %r9                                           # c1
        cmpq      %rsi, %r14                                    # c5
        jne       ..B4.4        # Prob 0%                       # c5
                                # LOE rax rdx rcx rbx rsi rdi r8 r9 r10 r11 r12 r14 eax edx ecx ebx esi edi r10d r11d r12d al dl cl bl ah dh ch bh sil dil r10b r11b r12b zmm0 zmm12 k1 k2 k3 k4 k5 k6
..B4.104:                       # Preds ..B4.103 Latency 1
        movq      9232(%rsp), %r13                              # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL167:
..B4.105:                       # Preds ..B4.104 ..B4.1 Latency 1
        cmpq      %rbx, %r11                                    # c1
        je        ..B4.119      # Prob 0%                       # c1
                                # LOE rax rdx rcx rbx rsi rdi r11 r12 r13 r10d
..CL237:
..B4.107:                       # Preds ..B4.105 Latency 55
        movl      %esi, %r8d                                    # c1
        imull     %eax, %r8d                                    # c5
        movl      %ebx, %r14d                                   # c15
        subq      %r11, %rbx                                    # c19
        addl      %r8d, %edx                                    # c19
        imull     %r12d, %r11d                                  # c23
        imull     %r10d, %edx                                   # c33
        addl      %r14d, %ecx                                   # c43
        xorl      %r9d, %r9d                                    # c43
        addl      %r11d, %ecx                                   # c47
        lea       (%rdx,%rcx,8), %eax                           # c51
        movl      $255, %edx                                    # c51
        kmov      %edx, %k1                                     # c55
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL238:
..B4.108:                       # Preds ..B4.117 ..B4.107 Latency 1
        movl      %eax, %ecx                                    # c1
        movq      %rbx, %rdx                                    # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL239:
..B4.109:                       # Preds ..B4.115 ..B4.108 Latency 21
        movslq    %ecx, %r12                                    # c1
        lea       (%r13,%r12,4), %r11                           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vloadunpacklps (%r11), %zmm0{%k1}                       # c17
        cmpq      $33, %r8                                      # c17
        jb        ..B4.112      # Prob 0%                       # c21
                                # LOE rdx rbx rsi rdi r9 r11 r12 r13 eax ecx r10d zmm0 k1
..CL241:
..B4.111:                       # Preds ..B4.109 Latency 1
        vloadunpackhps 64(%r11), %zmm0{%k1}                     # c1
                                # LOE rdx rbx rsi rdi r9 r12 r13 eax ecx r10d zmm0 k1
..CL240:
..B4.112:                       # Preds ..B4.111 ..B4.109 Latency 17
        lea       (%rdi,%r12,4), %r11                           # c1
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c5
        movq      %r11, %r8                                     # c9
        andq      $63, %r8                                      # c13
        vpackstorelps %zmm0, (%r11){%k1}                        # c13
        cmpq      $33, %r8                                      # c17
        jb        ..B4.115      # Prob 0%                       # c17
                                # LOE rdx rbx rsi rdi r9 r11 r13 eax ecx r10d zmm0 k1
..CL243:
..B4.114:                       # Preds ..B4.112 Latency 1
        vpackstorehps %zmm0, 64(%r11){%k1}                      # c1
        movb      %al, %al                                      # c1
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL242:
..B4.115:                       # Preds ..B4.114 ..B4.112 Latency 5
        addl      $8, %ecx                                      # c1
        incq      %rdx                                          # c5
        jne       ..B4.109      # Prob 0%                       # c5
                                # LOE rdx rbx rsi rdi r9 r13 eax ecx r10d k1
..CL244:
..B4.117:                       # Preds ..B4.115 Latency 5
        incq      %r9                                           # c1
        addl      %r10d, %eax                                   # c1
        cmpq      %rsi, %r9                                     # c5
        jne       ..B4.108      # Prob 0%                       # c5
                                # LOE rbx rsi rdi r9 r13 eax r10d k1
..CL236:
..B4.119:                       # Preds ..B4.117 ..B4.105 Latency 25
        addq      $9560, %rsp                                   # c1
        popq      %rbx                                          # c5
        popq      %r15                                          # c9
        popq      %r14                                          # c13
        popq      %r13                                          # c17
        popq      %r12                                          # c21
        movq      %rbp, %rsp                                    # c25
        popq      %rbp                                          #
        ret                                                     #
        .align    16,0x90
                                # LOE
# mark_end;
	.type	read_8,@function
	.size	read_8,.-read_8
        .align 64
        .globl _const_57
_const_57:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 11
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_58
_const_58:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 10
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_59
_const_59:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 9
        .long 0
        .long 0
        .long 0
        .align 64
        .globl _const_60
_const_60:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 11
        .long 0
        .long 0
        .align 64
        .globl _const_61
_const_61:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 10
        .long 0
        .long 0
        .align 64
        .globl _const_62
_const_62:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 8
        .long 0
        .long 0
        .align 64
        .globl _const_63
_const_63:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 11
        .long 0
        .align 64
        .globl _const_64
_const_64:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 9
        .long 0
        .align 64
        .globl _const_65
_const_65:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 8
        .long 0
        .align 64
        .globl _const_66
_const_66:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 10
        .align 64
        .globl _const_67
_const_67:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 9
        .align 64
        .globl _const_68
_const_68:
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 0
        .long 8
# mark_begin;
# Threads 4
        .align    16,0x90
	.globl read_16
read_16:
..B5.1:                         # Preds ..B5.0 Latency 71
        pushq     %rbx                                          #
        movq      %rsp, %rbx                                    #
        andq      $-64, %rsp                                    #
        subq      $56, %rsp                                     #
        pushq     %rbp                                          #
        movq      8(%rbx), %rbp                                 #
        movq      %rbp, 8(%rsp)                                 #
        movq      %rsp, %rbp                                    #
        subq      $1728, %rsp                                   # c1
        movq      %rdi, %rdx                                    # c1
        movq      88(%rdx), %rdi                                # c5
        movq      80(%rdx), %r9                                 # c5
        movq      %r15, -1648(%rbp)                             # c9
        movq      (%rdx), %r10                                  # c9
        movq      %r14, -1656(%rbp)                             # c13
        movq      40(%rdx), %rax                                # c13
        movq      %r13, -1664(%rbp)                             # c17
        movq      32(%rdx), %r11                                # c17
        movq      %r12, -1672(%rbp)                             # c21
        movq      %r9, %r15                                     # c21
        movq      (%rsi), %r12                                  # c25
        movq      %rdi, %r14                                    # c25
        imulq     %r12, %r15                                    # c29
        movl      16(%rdx), %ecx                                # c40
        movq      8(%rdx), %r13                                 # c40
        movq      8(%rsi), %rdx                                 # c44
        movq      %r9, %rsi                                     # c44
        imulq     %rdx, %r14                                    # c48
        sarq      $4, %rsi                                      # c59
        movq      %r9, %r8                                      # c59
        andq      $-16, %r8                                     # c63
        addq      %r11, %r15                                    # c63
        addq      %rax, %r14                                    # c67
        testq     %rsi, %rsi                                    # c71
        je        ..B5.9        # Prob 0%                       # c71
                                # LOE rax rdx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 ecx
..CL246:
..B5.3:                         # Preds ..B5.1 Latency 113
        vmovaps   _const_3(%rip), %zmm5                         # c1
        movq      $0, -1728(%rbp)                               # c5
        movq      %r15, -1552(%rbp)                             # c9
        movq      %rax, -1624(%rbp)                             # c9
        vpbroadcastq -1552(%rbp), %zmm2                         # c13
        vmovaps   %zmm2, %zmm0                                  # c17
        movl      $255, %eax                                    # c17
        kmov      %eax, %k6                                     # c21
        movl      $21845, %eax                                  # c21
        kmov      %eax, %k1                                     # c25
        movq      -1624(%rbp), %rax                             # c25
        vpaddsetcd _const_1(%rip), %k5, %zmm0{%k1}              # c29
        vpaddsetcd _const_2(%rip), %k3, %zmm2{%k1}              # c33
        kmov      %k5, %r15d                                    # c37
        movq      %rax, -1688(%rbp)                             # c37
        addl      %r15d, %r15d                                  # c41
        movl      $256, %eax                                    # c41
        kmov      %r15d, %k2                                    # c45
        movl      $43690, %r15d                                 # c45
        kmov      %r15d, %k5                                    # c49
        kmov      %k3, %r15d                                    # c49
        vpadcd    _const_1(%rip), %k2, %zmm0{%k5}               # c53
        vpsrld    $28, %zmm0, %zmm1                             # c57
        addl      %r15d, %r15d                                  # c57
        vpslld    $4, %zmm0, %zmm6                              # c61
        kmov      %r15d, %k4                                    # c61
        vpadcd    _const_2(%rip), %k4, %zmm2{%k5}               # c65
        vpsrld    $28, %zmm2, %zmm3                             # c69
        movl      $32768, %r15d                                 # c69
        vpslld    $4, %zmm2, %zmm4                              # c73
        kmov      %r15d, %k7                                    # c73
        vpord     %zmm3{cdab}, %zmm4, %zmm4{%k5}                # c77
        movl      $16384, %r15d                                 # c77
        vpord     %zmm1{cdab}, %zmm6, %zmm6{%k5}                # c81
        kmov      %r15d, %k4                                    # c81
        vpermd    %zmm4, %zmm5, %zmm0                           # c85
        movl      $8192, %r15d                                  # c85
        kmov      %r15d, %k3                                    # c89
        movl      $4096, %r15d                                  # c89
        vpermd    %zmm6, %zmm5, %zmm0{%k6}                      # c93
        kmov      %r15d, %k2                                    # c93
        vpxord    %zmm15, %zmm15, %zmm15                        # c97
        movq      %r8, -1720(%rbp)                              # c97
        movq      %rdx, -1712(%rbp)                             # c101
        kmov      %eax, %k1                                     # c101
        movq      %r13, -1640(%rbp)                             # c105
        movq      %r9, -1704(%rbp)                              # c105
        movq      %r11, -1696(%rbp)                             # c109
        movq      -1728(%rbp), %r9                              # c109
        movq      %r12, -1680(%rbp)                             # c113
        movq      %r10, -1632(%rbp)                             # c113
                                # LOE rsi rdi r9 r14 ecx zmm0 zmm15 k1 k2 k3 k4 k5
..CL247:
..B5.4:                         # Preds ..B5.7 ..B5.3 Latency 79
        movl      %r14d, %eax                                   # c1
        imull     %ecx, %eax                                    # c5
        vmovaps   _const_4(%rip), %zmm2                         # c15
        vmovaps   _const_5(%rip), %zmm1                         # c19
        movl      %eax, -1552(%rbp)                             # c23
        movq      %rsi, %rax                                    # c23
        vpaddd    -1552(%rbp){1to16}, %zmm0, %zmm3              # c27
        vpermd    %zmm3, %zmm2, %zmm2                           # c31
        vmovaps   %zmm0, -384(%rbp)                             # c31
        vpsrad    $31, %zmm2, %zmm2{%k5}                        # c35
        movq      %rax, -1592(%rbp)                             # c35
        vpermd    %zmm3, %zmm1, %zmm4                           # c39
        movq      %rsi, -1624(%rbp)                             # c39
        vpsrad    $31, %zmm4, %zmm4{%k5}                        # c43
        vmovdqa32 %zmm2, -1536(%rbp)                            # c43
        vmovdqa32 %zmm2, -1472(%rbp)                            # c47
        movq      -1528(%rbp), %r8                              # c47
        movq      -1472(%rbp), %rdx                             # c51
        vmovaps   %zmm2, -256(%rbp)                             # c51
        subq      %rdx, %r8                                     # c55
        vmovaps   %zmm4, -192(%rbp)                             # c55
        shlq      $4, %r8                                       # c59
        movq      %r9, -1728(%rbp)                              # c59
        movq      %r8, -1552(%rbp)                              # c63
        vpbroadcastq -1552(%rbp), %zmm1                         # c67
        movq      %r14, -1616(%rbp)                             # c71
        movb      %al, %al                                      # c71
        vmovaps   %zmm1, -320(%rbp)                             # c75
        movb      %al, %al                                      # c75
        movl      %ecx, -1608(%rbp)                             # c79
        movq      %rdi, -1600(%rbp)                             # c79
                                # LOE zmm15 k1 k2 k3 k4 k5
..CL248:
..B5.5:                         # Preds ..B5.20 ..B5.4 Latency 1373
        vmovaps   -256(%rbp), %zmm27                            # c1
        movl      $21845, %eax                                  # c1
        vmovaps   -192(%rbp), %zmm0                             # c5
        kmov      %eax, %k6                                     # c5
        vmovaps   %zmm31, %zmm1                                 # c9
        vmovdqa64 %zmm27, -448(%rbp)                            # c9
        vmovaps   %zmm31, %zmm28                                # c13
        vmovdqa64 %zmm27, -512(%rbp)                            # c13
        vmovaps   %zmm31, %zmm26                                # c17
        vmovdqa64 %zmm27, -576(%rbp)                            # c17
        vmovaps   %zmm31, %zmm29                                # c21
        vmovdqa64 %zmm27, -640(%rbp)                            # c21
        vmovaps   %zmm31, %zmm21                                # c25
        vmovdqa64 %zmm27, -704(%rbp)                            # c25
        vmovaps   %zmm31, %zmm24                                # c29
        vmovdqa64 %zmm27, -768(%rbp)                            # c29
        vmovaps   %zmm31, %zmm25                                # c33
        vmovdqa64 %zmm27, -832(%rbp)                            # c33
        vmovaps   %zmm31, %zmm30                                # c37
        vmovdqa64 %zmm27, -896(%rbp)                            # c37
        vpaddsetcd -320(%rbp), %k7, %zmm27{%k6}                 # c41
        vmovdqa64 %zmm0, -960(%rbp)                             # c41
        vmovaps   %zmm31, %zmm23                                # c45
        vmovdqa64 %zmm0, -1024(%rbp)                            # c45
        vmovaps   %zmm31, %zmm22                                # c49
        vmovdqa64 %zmm0, -1088(%rbp)                            # c49
        vmovaps   %zmm31, %zmm20                                # c53
        vmovdqa64 %zmm0, -1152(%rbp)                            # c53
        vmovaps   %zmm31, %zmm19                                # c57
        vmovdqa64 %zmm0, -1216(%rbp)                            # c57
        vmovaps   %zmm31, %zmm18                                # c61
        vmovdqa64 %zmm0, -1280(%rbp)                            # c61
        vmovaps   %zmm31, %zmm17                                # c65
        vmovdqa64 %zmm0, -1344(%rbp)                            # c65
        kmov      %k7, %eax                                     # c69
        vmovdqa64 %zmm0, -1408(%rbp)                            # c69
        addl      %eax, %eax                                    # c73
        movl      $21845, %edi                                  # c73
        kmov      %eax, %k6                                     # c77
        kmov      %edi, %k7                                     # c77
        vpadcd    -320(%rbp), %k6, %zmm27{%k5}                  # c81
        vpaddsetcd -320(%rbp), %k6, %zmm0{%k7}                  # c85
        movb      %al, %al                                      # c85
        vmovaps   %zmm27, -256(%rbp)                            # c89
        movq      -392(%rbp), %rsi                              # c89
        vmovaps   %zmm31, %zmm27                                # c93
        movq      -1632(%rbp), %r15                             # c93
        vloadunpacklps (%r15,%rsi,4), %zmm1                     # c97
        kmov      %k6, %r12d                                    # c97
        vloadunpackhps 64(%r15,%rsi,4), %zmm1                   # c101
        addl      %r12d, %r12d                                  # c101
        movq      -896(%rbp), %r8                               # c105
        movq      -824(%rbp), %r11                              # c105
        vloadunpacklps (%r15,%r8,4), %zmm27                     # c109
        vmovaps   %zmm1, -128(%rbp)                             # c109
        vloadunpacklps (%r15,%r11,4), %zmm28                    # c113
        kmov      %r12d, %k7                                    # c113
        vpadcd    -320(%rbp), %k7, %zmm0{%k5}                   # c117
        vloadunpackhps 64(%r15,%r8,4), %zmm27                   # c121
        vloadunpackhps 64(%r15,%r11,4), %zmm28                  # c125
        vmovaps   %zmm0, -192(%rbp)                             # c125
        vpshufd   $1, %zmm27, %zmm0                             # c129
        movq      -752(%rbp), %r9                               # c129
        vloadunpacklps (%r15,%r9,4), %zmm26                     # c133
        vloadunpackhps 64(%r15,%r9,4), %zmm26                   # c137
        vpshufd   $2, %zmm27, %zmm1                             # c141
        movq      -680(%rbp), %r10                              # c141
        vloadunpacklps (%r15,%r10,4), %zmm29                    # c145
        vloadunpackhps 64(%r15,%r10,4), %zmm29                  # c149
        vpshufd   $3, %zmm27, %zmm2                             # c153
        movq      -1048(%rbp), %r12                             # c153
        vloadunpacklps (%r15,%r12,4), %zmm21                    # c157
        movq      %r12, -1584(%rbp)                             # c157
        vpermf32x4 $1, %zmm27, %zmm3                            # c161
        movq      -608(%rbp), %rax                              # c161
        vloadunpacklps (%r15,%rax,4), %zmm24                    # c165
        vloadunpackhps 64(%r15,%r12,4), %zmm21                  # c169
        movl      $2, %r12d                                     # c169
        valignd   $5, %zmm27, %zmm16, %zmm4                     # c173
        kmov      %r12d, %k6                                    # c173
        valignd   $6, %zmm27, %zmm16, %zmm5                     # c177
        movl      $4, %r12d                                     # c177
        valignd   $7, %zmm27, %zmm16, %zmm6                     # c181
        movq      -536(%rbp), %rdx                              # c181
        vpermf32x4 $2, %zmm27, %zmm7                            # c185
        kmov      %r12d, %k7                                    # c185
        valignd   $9, %zmm27, %zmm16, %zmm8                     # c189
        movl      $8, %r12d                                     # c189
        valignd   $10, %zmm27, %zmm16, %zmm9                    # c193
        movq      -464(%rbp), %rcx                              # c193
        valignd   $11, %zmm27, %zmm16, %zmm10                   # c197
        movq      -1408(%rbp), %r10                             # c197
        vpermf32x4 $3, %zmm27, %zmm11                           # c201
        movq      -1336(%rbp), %r14                             # c201
        valignd   $13, %zmm27, %zmm16, %zmm12                   # c205
        movq      -1264(%rbp), %r9                              # c205
        valignd   $14, %zmm27, %zmm16, %zmm13                   # c209
        movq      -1192(%rbp), %r13                             # c209
        valignd   $15, %zmm27, %zmm16, %zmm14                   # c213
        movq      -1120(%rbp), %r8                              # c213
        vpshufd   $0, %zmm28, %zmm27{%k6}                       # c217
        movq      -976(%rbp), %r11                              # c217
        vmovaps   %zmm28, %zmm0{%k6}                            # c221
        movq      -1592(%rbp), %rdi                             # c221
        vpshufd   $8, %zmm28, %zmm1{%k6}                        # c225
        decq      %rdi                                          # c225
        vpshufd   $12, %zmm28, %zmm2{%k6}                       # c229
        movq      %rdi, -1592(%rbp)                             # c229
        valignd   $3, %zmm28, %zmm16, %zmm3{%k6}                # c233
        movq      %r13, -1576(%rbp)                             # c233
        vpermf32x4 $1, %zmm28, %zmm4{%k6}                       # c237
        movq      %r14, -1568(%rbp)                             # c237
        valignd   $5, %zmm28, %zmm16, %zmm5{%k6}                # c241
        movq      -904(%rbp), %rdi                              # c241
        valignd   $6, %zmm28, %zmm16, %zmm6{%k6}                # c245
        valignd   $7, %zmm28, %zmm16, %zmm7{%k6}                # c249
        vpermf32x4 $2, %zmm28, %zmm8{%k6}                       # c253
        valignd   $9, %zmm28, %zmm16, %zmm9{%k6}                # c257
        valignd   $10, %zmm28, %zmm16, %zmm10{%k6}              # c261
        valignd   $11, %zmm28, %zmm16, %zmm11{%k6}              # c265
        vpermf32x4 $3, %zmm28, %zmm12{%k6}                      # c269
        valignd   $13, %zmm28, %zmm16, %zmm13{%k6}              # c273
        valignd   $14, %zmm28, %zmm16, %zmm14{%k6}              # c277
        kmov      %r12d, %k6                                    # c277
        vloadunpackhps 64(%r15,%rax,4), %zmm24                  # c281
        movl      $16, %r12d                                    # c281
        vpshufd   $0, %zmm26, %zmm27{%k7}                       # c285
        vpshufd   $16, %zmm26, %zmm0{%k7}                       # c289
        vmovaps   %zmm26, %zmm1{%k7}                            # c293
        vpshufd   $48, %zmm26, %zmm2{%k7}                       # c297
        valignd   $2, %zmm26, %zmm16, %zmm3{%k7}                # c301
        valignd   $3, %zmm26, %zmm16, %zmm4{%k7}                # c305
        vpermf32x4 $1, %zmm26, %zmm5{%k7}                       # c309
        valignd   $5, %zmm26, %zmm16, %zmm6{%k7}                # c313
        valignd   $6, %zmm26, %zmm16, %zmm7{%k7}                # c317
        valignd   $7, %zmm26, %zmm16, %zmm8{%k7}                # c321
        vpermf32x4 $2, %zmm26, %zmm9{%k7}                       # c325
        valignd   $9, %zmm26, %zmm16, %zmm10{%k7}               # c329
        valignd   $10, %zmm26, %zmm16, %zmm11{%k7}              # c333
        valignd   $11, %zmm26, %zmm16, %zmm12{%k7}              # c337
        vpermf32x4 $3, %zmm26, %zmm13{%k7}                      # c341
        valignd   $13, %zmm26, %zmm16, %zmm14{%k7}              # c345
        kmov      %r12d, %k7                                    # c345
        vloadunpacklps (%r15,%rdx,4), %zmm25                    # c349
        movl      $32, %r12d                                    # c349
        vpshufd   $0, %zmm29, %zmm27{%k6}                       # c353
        vpshufd   $64, %zmm29, %zmm0{%k6}                       # c357
        vpshufd   $128, %zmm29, %zmm1{%k6}                      # c361
        vmovaps   %zmm29, %zmm2{%k6}                            # c365
        valignd   $1, %zmm29, %zmm16, %zmm3{%k6}                # c369
        valignd   $2, %zmm29, %zmm16, %zmm4{%k6}                # c373
        valignd   $3, %zmm29, %zmm16, %zmm5{%k6}                # c377
        vpermf32x4 $1, %zmm29, %zmm6{%k6}                       # c381
        valignd   $5, %zmm29, %zmm16, %zmm7{%k6}                # c385
        valignd   $6, %zmm29, %zmm16, %zmm8{%k6}                # c389
        valignd   $7, %zmm29, %zmm16, %zmm9{%k6}                # c393
        vpermf32x4 $2, %zmm29, %zmm10{%k6}                      # c397
        valignd   $9, %zmm29, %zmm16, %zmm11{%k6}               # c401
        valignd   $10, %zmm29, %zmm16, %zmm12{%k6}              # c405
        valignd   $11, %zmm29, %zmm16, %zmm13{%k6}              # c409
        vpermf32x4 $3, %zmm29, %zmm14{%k6}                      # c413
        kmov      %r12d, %k6                                    # c413
        vmovaps   _const_6(%rip), %zmm26                        # c417
        vmovaps   _const_16(%rip), %zmm28                       # c421
        vmovaps   _const_15(%rip), %zmm29                       # c425
        vloadunpackhps 64(%r15,%rdx,4), %zmm25                  # c429
        movl      $64, %r12d                                    # c429
        vpermf32x4 $0, %zmm24, %zmm27{%k7}                      # c433
        vpermd    %zmm24, %zmm26, %zmm0{%k7}                    # c437
        vpermd    %zmm24, %zmm28, %zmm1{%k7}                    # c441
        vpermd    %zmm24, %zmm29, %zmm2{%k7}                    # c445
        vmovaps   %zmm24, %zmm3{%k7}                            # c449
        vpshufd   $1, %zmm24, %zmm4{%k7}                        # c453
        vpshufd   $2, %zmm24, %zmm5{%k7}                        # c457
        vpshufd   $3, %zmm24, %zmm6{%k7}                        # c461
        vpermf32x4 $8, %zmm24, %zmm7{%k7}                       # c465
        valignd   $5, %zmm24, %zmm16, %zmm8{%k7}                # c469
        valignd   $6, %zmm24, %zmm16, %zmm9{%k7}                # c473
        valignd   $7, %zmm24, %zmm16, %zmm10{%k7}               # c477
        vpermf32x4 $12, %zmm24, %zmm11{%k7}                     # c481
        valignd   $9, %zmm24, %zmm16, %zmm12{%k7}               # c485
        valignd   $10, %zmm24, %zmm16, %zmm13{%k7}              # c489
        valignd   $11, %zmm24, %zmm16, %zmm14{%k7}              # c493
        kmov      %r12d, %k7                                    # c493
        vmovaps   _const_18(%rip), %zmm24                       # c497
        vloadunpacklps (%r15,%rcx,4), %zmm30                    # c501
        movl      $128, %r12d                                   # c501
        vpermd    %zmm25, %zmm24, %zmm1{%k6}                    # c505
        vmovaps   _const_17(%rip), %zmm24                       # c509
        vloadunpackhps 64(%r15,%rcx,4), %zmm30                  # c513
        vpermd    %zmm25, %zmm15, %zmm27{%k6}                   # c517
        vpermf32x4 $0, %zmm25, %zmm0{%k6}                       # c521
        vpermd    %zmm25, %zmm24, %zmm2{%k6}                    # c525
        vpshufd   $0, %zmm25, %zmm3{%k6}                        # c529
        vmovaps   %zmm25, %zmm4{%k6}                            # c533
        vpshufd   $8, %zmm25, %zmm5{%k6}                        # c537
        vpshufd   $12, %zmm25, %zmm6{%k6}                       # c541
        valignd   $3, %zmm25, %zmm16, %zmm7{%k6}                # c545
        vpermf32x4 $8, %zmm25, %zmm8{%k6}                       # c549
        valignd   $5, %zmm25, %zmm16, %zmm9{%k6}                # c553
        valignd   $6, %zmm25, %zmm16, %zmm10{%k6}               # c557
        valignd   $7, %zmm25, %zmm16, %zmm11{%k6}               # c561
        vpermf32x4 $12, %zmm25, %zmm12{%k6}                     # c565
        valignd   $9, %zmm25, %zmm16, %zmm13{%k6}               # c569
        valignd   $10, %zmm25, %zmm16, %zmm14{%k6}              # c573
        kmov      %r12d, %k6                                    # c573
        vmovaps   _const_7(%rip), %zmm25                        # c577
        vmovaps   _const_19(%rip), %zmm24                       # c581
        vloadunpacklps (%r15,%r10,4), %zmm31                    # c585
        movl      $512, %r12d                                   # c585
        vpermd    %zmm30, %zmm15, %zmm27{%k7}                   # c589
        vpermd    %zmm30, %zmm25, %zmm0{%k7}                    # c593
        vpermf32x4 $0, %zmm30, %zmm1{%k7}                       # c597
        vpermd    %zmm30, %zmm24, %zmm2{%k7}                    # c601
        vpshufd   $0, %zmm30, %zmm3{%k7}                        # c605
        vpshufd   $16, %zmm30, %zmm4{%k7}                       # c609
        vmovaps   %zmm30, %zmm5{%k7}                            # c613
        vpshufd   $48, %zmm30, %zmm6{%k7}                       # c617
        valignd   $2, %zmm30, %zmm16, %zmm7{%k7}                # c621
        valignd   $3, %zmm30, %zmm16, %zmm8{%k7}                # c625
        vpermf32x4 $8, %zmm30, %zmm9{%k7}                       # c629
        valignd   $5, %zmm30, %zmm16, %zmm10{%k7}               # c633
        valignd   $6, %zmm30, %zmm16, %zmm11{%k7}               # c637
        valignd   $7, %zmm30, %zmm16, %zmm12{%k7}               # c641
        vpermf32x4 $12, %zmm30, %zmm13{%k7}                     # c645
        valignd   $9, %zmm30, %zmm16, %zmm14{%k7}               # c649
        kmov      %r12d, %k7                                    # c649
        vmovaps   _const_8(%rip), %zmm30                        # c653
        vloadunpackhps 64(%r15,%r10,4), %zmm31                  # c657
        movl      $1024, %r12d                                  # c657
        vmovaps   -128(%rbp), %zmm24                            # c661
        vmovaps   _const_9(%rip), %zmm25                        # c665
        vloadunpacklps (%r15,%r14,4), %zmm17                    # c669
        vpermd    -128(%rbp), %zmm30, %zmm0{%k6}                # c673
        vmovaps   _const_20(%rip), %zmm30                       # c677
        vmovaps   %zmm24, %zmm6{%k6}                            # c681
        vpermd    %zmm31, %zmm25, %zmm0{%k1}                    # c685
        vmovaps   _const_22(%rip), %zmm26                       # c689
        vmovaps   _const_21(%rip), %zmm28                       # c693
        vmovaps   _const_35(%rip), %zmm29                       # c697
        vmovaps   _const_34(%rip), %zmm24                       # c701
        vmovaps   _const_33(%rip), %zmm25                       # c705
        vloadunpackhps 64(%r15,%r14,4), %zmm17                  # c709
        vpermd    -128(%rbp), %zmm15, %zmm27{%k6}               # c713
        vpermd    -128(%rbp), %zmm30, %zmm1{%k6}                # c717
        vpermf32x4 $0, -128(%rbp), %zmm2{%k6}                   # c721
        vpshufd   $0, -128(%rbp), %zmm3{%k6}                    # c725
        vpshufd   $64, -128(%rbp), %zmm4{%k6}                   # c729
        vpshufd   $128, -128(%rbp), %zmm5{%k6}                  # c733
        valignd   $1, -128(%rbp), %zmm16, %zmm7{%k6}            # c737
        valignd   $2, -128(%rbp), %zmm16, %zmm8{%k6}            # c741
        valignd   $3, -128(%rbp), %zmm16, %zmm9{%k6}            # c745
        vpermf32x4 $8, -128(%rbp), %zmm10{%k6}                  # c749
        valignd   $5, -128(%rbp), %zmm16, %zmm11{%k6}           # c753
        valignd   $6, -128(%rbp), %zmm16, %zmm12{%k6}           # c757
        valignd   $7, -128(%rbp), %zmm16, %zmm13{%k6}           # c761
        vpermf32x4 $12, -128(%rbp), %zmm14{%k6}                 # c765
        vloadunpacklps (%r15,%r9,4), %zmm18                     # c769
        kmov      %r12d, %k6                                    # c769
        vpermf32x4 $0, %zmm31, %zmm27{%k1}                      # c773
        movl      $2048, %r12d                                  # c773
        vpermd    %zmm31, %zmm26, %zmm1{%k1}                    # c777
        movq      -896(%rbp), %r14                              # c777
        vpermd    %zmm31, %zmm28, %zmm2{%k1}                    # c781
        vpermf32x4 $16, %zmm31, %zmm3{%k1}                      # c785
        vpermd    %zmm31, %zmm29, %zmm4{%k1}                    # c789
        vpermd    %zmm31, %zmm24, %zmm5{%k1}                    # c793
        vpermd    %zmm31, %zmm25, %zmm6{%k1}                    # c797
        vmovaps   %zmm31, %zmm7{%k1}                            # c801
        vpshufd   $1, %zmm31, %zmm8{%k1}                        # c805
        vpshufd   $2, %zmm31, %zmm9{%k1}                        # c809
        vpshufd   $3, %zmm31, %zmm10{%k1}                       # c813
        vpermf32x4 $48, %zmm31, %zmm11{%k1}                     # c817
        valignd   $5, %zmm31, %zmm16, %zmm12{%k1}               # c821
        valignd   $6, %zmm31, %zmm16, %zmm13{%k1}               # c825
        valignd   $7, %zmm31, %zmm16, %zmm14{%k1}               # c829
        vmovaps   _const_24(%rip), %zmm31                       # c833
        vmovaps   _const_23(%rip), %zmm24                       # c837
        vmovaps   _const_38(%rip), %zmm25                       # c841
        vmovaps   _const_37(%rip), %zmm26                       # c845
        vmovaps   _const_36(%rip), %zmm28                       # c849
        vloadunpackhps 64(%r15,%r9,4), %zmm18                   # c853
        vpermd    %zmm17, %zmm15, %zmm27{%k7}                   # c857
        vpermf32x4 $0, %zmm17, %zmm0{%k7}                       # c861
        vpermd    %zmm17, %zmm31, %zmm1{%k7}                    # c865
        vpermd    %zmm17, %zmm24, %zmm2{%k7}                    # c869
        vpermd    %zmm17, %zmm25, %zmm3{%k7}                    # c873
        vpermf32x4 $16, %zmm17, %zmm4{%k7}                      # c877
        vpermd    %zmm17, %zmm26, %zmm5{%k7}                    # c881
        vpermd    %zmm17, %zmm28, %zmm6{%k7}                    # c885
        vpshufd   $0, %zmm17, %zmm7{%k7}                        # c889
        vmovaps   %zmm17, %zmm8{%k7}                            # c893
        vpshufd   $8, %zmm17, %zmm9{%k7}                        # c897
        vpshufd   $12, %zmm17, %zmm10{%k7}                      # c901
        valignd   $3, %zmm17, %zmm16, %zmm11{%k7}               # c905
        vpermf32x4 $48, %zmm17, %zmm12{%k7}                     # c909
        valignd   $5, %zmm17, %zmm16, %zmm13{%k7}               # c913
        valignd   $6, %zmm17, %zmm16, %zmm14{%k7}               # c917
        kmov      %r12d, %k7                                    # c917
        vmovaps   _const_10(%rip), %zmm17                       # c921
        vloadunpacklps (%r15,%r13,4), %zmm19                    # c925
        vpermd    %zmm18, %zmm17, %zmm0{%k6}                    # c929
        movq      -752(%rbp), %r12                              # c929
        vmovaps   _const_25(%rip), %zmm17                       # c933
        vmovaps   _const_41(%rip), %zmm24                       # c937
        vmovaps   _const_40(%rip), %zmm25                       # c941
        vmovaps   _const_39(%rip), %zmm26                       # c945
        vloadunpackhps 64(%r15,%r13,4), %zmm19                  # c949
        vpermd    %zmm18, %zmm15, %zmm27{%k6}                   # c953
        movq      -824(%rbp), %r13                              # c953
        vpermf32x4 $0, %zmm18, %zmm1{%k6}                       # c957
        vpermd    %zmm18, %zmm17, %zmm2{%k6}                    # c961
        vpermd    %zmm18, %zmm24, %zmm3{%k6}                    # c965
        vpermd    %zmm18, %zmm25, %zmm4{%k6}                    # c969
        vpermf32x4 $16, %zmm18, %zmm5{%k6}                      # c973
        vpermd    %zmm18, %zmm26, %zmm6{%k6}                    # c977
        vpshufd   $0, %zmm18, %zmm7{%k6}                        # c981
        vpshufd   $16, %zmm18, %zmm8{%k6}                       # c985
        vmovaps   %zmm18, %zmm9{%k6}                            # c989
        vpshufd   $48, %zmm18, %zmm10{%k6}                      # c993
        valignd   $2, %zmm18, %zmm16, %zmm11{%k6}               # c997
        valignd   $3, %zmm18, %zmm16, %zmm12{%k6}               # c1001
        vpermf32x4 $48, %zmm18, %zmm13{%k6}                     # c1005
        valignd   $5, %zmm18, %zmm16, %zmm14{%k6}               # c1009
        vmovaps   _const_11(%rip), %zmm18                       # c1013
        vloadunpacklps (%r15,%r8,4), %zmm20                     # c1017
        vpermd    %zmm19, %zmm18, %zmm0{%k7}                    # c1021
        vmovaps   _const_26(%rip), %zmm17                       # c1025
        vmovaps   _const_44(%rip), %zmm18                       # c1029
        vmovaps   _const_43(%rip), %zmm24                       # c1033
        vmovaps   _const_42(%rip), %zmm25                       # c1037
        vloadunpackhps 64(%r15,%r8,4), %zmm20                   # c1041
        vpermd    %zmm19, %zmm15, %zmm27{%k7}                   # c1045
        vpermd    %zmm19, %zmm17, %zmm1{%k7}                    # c1049
        vpermf32x4 $0, %zmm19, %zmm2{%k7}                       # c1053
        vpermd    %zmm19, %zmm18, %zmm3{%k7}                    # c1057
        vpermd    %zmm19, %zmm24, %zmm4{%k7}                    # c1061
        vpermd    %zmm19, %zmm25, %zmm5{%k7}                    # c1065
        vpermf32x4 $16, %zmm19, %zmm6{%k7}                      # c1069
        vpshufd   $0, %zmm19, %zmm7{%k7}                        # c1073
        vpshufd   $64, %zmm19, %zmm8{%k7}                       # c1077
        vpshufd   $128, %zmm19, %zmm9{%k7}                      # c1081
        vmovaps   %zmm19, %zmm10{%k7}                           # c1085
        valignd   $1, %zmm19, %zmm16, %zmm11{%k7}               # c1089
        valignd   $2, %zmm19, %zmm16, %zmm12{%k7}               # c1093
        valignd   $3, %zmm19, %zmm16, %zmm13{%k7}               # c1097
        vpermf32x4 $48, %zmm19, %zmm14{%k7}                     # c1101
        vmovaps   _const_12(%rip), %zmm19                       # c1105
        vpermd    %zmm20, %zmm19, %zmm0{%k2}                    # c1109
        vmovaps   _const_28(%rip), %zmm17                       # c1113
        vmovaps   _const_27(%rip), %zmm18                       # c1117
        vmovaps   _const_47(%rip), %zmm19                       # c1121
        vmovaps   _const_46(%rip), %zmm24                       # c1125
        vmovaps   _const_45(%rip), %zmm25                       # c1129
        vmovaps   _const_59(%rip), %zmm26                       # c1133
        vmovaps   _const_58(%rip), %zmm28                       # c1137
        vmovaps   _const_57(%rip), %zmm29                       # c1141
        vpermf32x4 $0, %zmm20, %zmm27{%k2}                      # c1145
        vpermd    %zmm20, %zmm17, %zmm1{%k2}                    # c1149
        vpermd    %zmm20, %zmm18, %zmm2{%k2}                    # c1153
        vpermf32x4 $64, %zmm20, %zmm3{%k2}                      # c1157
        vpermd    %zmm20, %zmm19, %zmm4{%k2}                    # c1161
        vpermd    %zmm20, %zmm24, %zmm5{%k2}                    # c1165
        vpermd    %zmm20, %zmm25, %zmm6{%k2}                    # c1169
        vpermf32x4 $128, %zmm20, %zmm7{%k2}                     # c1173
        vpermd    %zmm20, %zmm26, %zmm8{%k2}                    # c1177
        vpermd    %zmm20, %zmm28, %zmm9{%k2}                    # c1181
        vpermd    %zmm20, %zmm29, %zmm10{%k2}                   # c1185
        vmovaps   %zmm20, %zmm11{%k2}                           # c1189
        vpshufd   $1, %zmm20, %zmm12{%k2}                       # c1193
        vpshufd   $2, %zmm20, %zmm13{%k2}                       # c1197
        vpshufd   $3, %zmm20, %zmm14{%k2}                       # c1201
        vmovaps   _const_30(%rip), %zmm20                       # c1205
        vloadunpacklps (%r15,%r11,4), %zmm22                    # c1209
        vpermd    %zmm21, %zmm20, %zmm1{%k3}                    # c1213
        vmovaps   _const_29(%rip), %zmm17                       # c1217
        vmovaps   _const_50(%rip), %zmm18                       # c1221
        vmovaps   _const_49(%rip), %zmm19                       # c1225
        vmovaps   _const_48(%rip), %zmm20                       # c1229
        vmovaps   _const_62(%rip), %zmm24                       # c1233
        vmovaps   _const_61(%rip), %zmm25                       # c1237
        vmovaps   _const_60(%rip), %zmm26                       # c1241
        vloadunpackhps 64(%r15,%r11,4), %zmm22                  # c1245
        vpermd    %zmm21, %zmm15, %zmm27{%k3}                   # c1249
        vpermf32x4 $0, %zmm21, %zmm0{%k3}                       # c1253
        vpermd    %zmm21, %zmm17, %zmm2{%k3}                    # c1257
        vpermd    %zmm21, %zmm18, %zmm3{%k3}                    # c1261
        vpermf32x4 $64, %zmm21, %zmm4{%k3}                      # c1265
        vpermd    %zmm21, %zmm19, %zmm5{%k3}                    # c1269
        vpermd    %zmm21, %zmm20, %zmm6{%k3}                    # c1273
        vpermd    %zmm21, %zmm24, %zmm7{%k3}                    # c1277
        vpermf32x4 $128, %zmm21, %zmm8{%k3}                     # c1281
        vpermd    %zmm21, %zmm25, %zmm9{%k3}                    # c1285
        vpermd    %zmm21, %zmm26, %zmm10{%k3}                   # c1289
        vpshufd   $0, %zmm21, %zmm11{%k3}                       # c1293
        vmovaps   %zmm21, %zmm12{%k3}                           # c1297
        vpshufd   $8, %zmm21, %zmm13{%k3}                       # c1301
        vpshufd   $12, %zmm21, %zmm14{%k3}                      # c1305
        vmovaps   _const_13(%rip), %zmm21                       # c1309
        vloadunpacklps (%r15,%rdi,4), %zmm23                    # c1313
        vpermd    %zmm22, %zmm21, %zmm0{%k4}                    # c1317
        vmovaps   _const_31(%rip), %zmm17                       # c1321
        vmovaps   _const_53(%rip), %zmm18                       # c1325
        vmovaps   _const_52(%rip), %zmm19                       # c1329
        vmovaps   _const_51(%rip), %zmm20                       # c1333
        vmovaps   _const_65(%rip), %zmm21                       # c1337
        vloadunpackhps 64(%r15,%rdi,4), %zmm23                  # c1341
        vpermd    %zmm22, %zmm15, %zmm27{%k4}                   # c1345
        movq      -680(%rbp), %r15                              # c1345
        vpermf32x4 $0, %zmm22, %zmm1{%k4}                       # c1349
        vpermd    %zmm22, %zmm17, %zmm2{%k4}                    # c1353
        vpermd    %zmm22, %zmm18, %zmm3{%k4}                    # c1357
        vpermd    %zmm22, %zmm19, %zmm4{%k4}                    # c1361
        vpermf32x4 $64, %zmm22, %zmm5{%k4}                      # c1365
        vpermd    %zmm22, %zmm20, %zmm6{%k4}                    # c1369
        vpermd    %zmm22, %zmm21, %zmm7{%k4}                    # c1373
                                # LOE rax rdx rcx rsi rdi r8 r9 r10 r11 r12 r13 r14 r15 zmm0 zmm1 zmm2 zmm3 zmm4 zmm5 zmm6 zmm7 zmm8 zmm9 zmm10 zmm11 zmm12 zmm13 zmm14 zmm15 zmm16 zmm22 zmm23 zmm27 k1 k2 k3 k4 k5
..B5.20:                        # Preds ..B5.5 Latency 1561
        vmovaps   _const_14(%rip), %zmm19                       # c1
        vpshufd   $48, %zmm22, %zmm14{%k4}                      # c5
        movq      %rdi, -1560(%rbp)                             # c5
        vpermf32x4 $128, %zmm22, %zmm9{%k4}                     # c9
        movl      $32768, %edi                                  # c9
        vmovaps   _const_32(%rip), %zmm20                       # c13
        vmovaps   _const_64(%rip), %zmm17                       # c17
        vmovaps   _const_63(%rip), %zmm18                       # c21
        vmovaps   _const_56(%rip), %zmm21                       # c25
        vpermd    %zmm22, %zmm17, %zmm8{%k4}                    # c29
        kmov      %edi, %k6                                     # c29
        vmovaps   %zmm23, %zmm14{%k6}                           # c33
        movl      $2, %edi                                      # c33
        vpermd    %zmm23, %zmm15, %zmm27{%k6}                   # c37
        kmov      %edi, %k7                                     # c37
        vpermd    %zmm23, %zmm19, %zmm0{%k6}                    # c41
        movl      $4, %edi                                      # c41
        vpermd    %zmm23, %zmm20, %zmm1{%k6}                    # c45
        vaddps    _const_0(%rip){1to16}, %zmm14, %zmm14         # c49
        vpermf32x4 $0, %zmm23, %zmm2{%k6}                       # c53
        vaddps    _const_0(%rip){1to16}, %zmm27, %zmm17         # c57
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm0           # c61
        vpermd    %zmm22, %zmm18, %zmm10{%k4}                   # c65
        vmovaps   %zmm14, -64(%rbp)                             # c65
        vpshufd   $0, %zmm22, %zmm11{%k4}                       # c69
        vpshufd   $16, %zmm22, %zmm12{%k4}                      # c73
        vmovaps   %zmm22, %zmm13{%k4}                           # c77
        vmovaps   _const_55(%rip), %zmm22                       # c81
        vmovaps   _const_54(%rip), %zmm24                       # c85
        vmovaps   _const_68(%rip), %zmm25                       # c89
        vmovaps   _const_67(%rip), %zmm26                       # c93
        vmovaps   _const_66(%rip), %zmm28                       # c97
        vaddps    _const_0(%rip){1to16}, %zmm1, %zmm1           # c101
        vpermd    %zmm23, %zmm21, %zmm3{%k6}                    # c105
        vaddps    _const_0(%rip){1to16}, %zmm2, %zmm2           # c109
        vpermd    %zmm23, %zmm22, %zmm4{%k6}                    # c113
        vpermd    %zmm23, %zmm24, %zmm5{%k6}                    # c117
        vpermf32x4 $64, %zmm23, %zmm6{%k6}                      # c121
        vpermd    %zmm23, %zmm25, %zmm7{%k6}                    # c125
        vpermd    %zmm23, %zmm26, %zmm8{%k6}                    # c129
        vpermd    %zmm23, %zmm28, %zmm9{%k6}                    # c133
        vpermf32x4 $128, %zmm23, %zmm10{%k6}                    # c137
        vpshufd   $0, %zmm23, %zmm11{%k6}                       # c141
        vpshufd   $64, %zmm23, %zmm12{%k6}                      # c145
        vpshufd   $128, %zmm23, %zmm13{%k6}                     # c149
        kmov      %edi, %k6                                     # c149
        vpshufd   $1, %zmm17, %zmm31                            # c153
        movl      $8, %edi                                      # c153
        vpshufd   $2, %zmm17, %zmm20                            # c157
        vpshufd   $3, %zmm17, %zmm21                            # c161
        vpermf32x4 $1, %zmm17, %zmm22                           # c165
        valignd   $5, %zmm17, %zmm16, %zmm23                    # c169
        valignd   $6, %zmm17, %zmm16, %zmm24                    # c173
        valignd   $7, %zmm17, %zmm16, %zmm25                    # c177
        vpermf32x4 $2, %zmm17, %zmm26                           # c181
        valignd   $9, %zmm17, %zmm16, %zmm27                    # c185
        valignd   $10, %zmm17, %zmm16, %zmm28                   # c189
        valignd   $11, %zmm17, %zmm16, %zmm29                   # c193
        vpermf32x4 $3, %zmm17, %zmm14                           # c197
        valignd   $13, %zmm17, %zmm16, %zmm30                   # c201
        valignd   $14, %zmm17, %zmm16, %zmm18                   # c205
        valignd   $15, %zmm17, %zmm16, %zmm19                   # c209
        vaddps    _const_0(%rip){1to16}, %zmm3, %zmm3           # c213
        vmovaps   %zmm0, %zmm31{%k7}                            # c217
        vpshufd   $0, %zmm0, %zmm17{%k7}                        # c221
        vpshufd   $8, %zmm0, %zmm20{%k7}                        # c225
        vpshufd   $12, %zmm0, %zmm21{%k7}                       # c229
        valignd   $3, %zmm0, %zmm16, %zmm22{%k7}                # c233
        vpermf32x4 $1, %zmm0, %zmm23{%k7}                       # c237
        valignd   $5, %zmm0, %zmm16, %zmm24{%k7}                # c241
        valignd   $6, %zmm0, %zmm16, %zmm25{%k7}                # c245
        valignd   $7, %zmm0, %zmm16, %zmm26{%k7}                # c249
        vpermf32x4 $2, %zmm0, %zmm27{%k7}                       # c253
        valignd   $9, %zmm0, %zmm16, %zmm28{%k7}                # c257
        valignd   $10, %zmm0, %zmm16, %zmm29{%k7}               # c261
        valignd   $11, %zmm0, %zmm16, %zmm14{%k7}               # c265
        vpermf32x4 $3, %zmm0, %zmm30{%k7}                       # c269
        valignd   $13, %zmm0, %zmm16, %zmm18{%k7}               # c273
        valignd   $14, %zmm0, %zmm16, %zmm19{%k7}               # c277
        kmov      %edi, %k7                                     # c277
        vmovaps   _const_6(%rip), %zmm0                         # c281
        vpshufd   $16, %zmm1, %zmm31{%k6}                       # c285
        movl      $16, %edi                                     # c285
        vpshufd   $0, %zmm1, %zmm17{%k6}                        # c289
        vmovaps   %zmm1, %zmm20{%k6}                            # c293
        vpshufd   $48, %zmm1, %zmm21{%k6}                       # c297
        valignd   $2, %zmm1, %zmm16, %zmm22{%k6}                # c301
        valignd   $3, %zmm1, %zmm16, %zmm23{%k6}                # c305
        vpermf32x4 $1, %zmm1, %zmm24{%k6}                       # c309
        valignd   $5, %zmm1, %zmm16, %zmm25{%k6}                # c313
        valignd   $6, %zmm1, %zmm16, %zmm26{%k6}                # c317
        valignd   $7, %zmm1, %zmm16, %zmm27{%k6}                # c321
        vpermf32x4 $2, %zmm1, %zmm28{%k6}                       # c325
        valignd   $9, %zmm1, %zmm16, %zmm29{%k6}                # c329
        valignd   $10, %zmm1, %zmm16, %zmm14{%k6}               # c333
        valignd   $11, %zmm1, %zmm16, %zmm30{%k6}               # c337
        vpermf32x4 $3, %zmm1, %zmm18{%k6}                       # c341
        valignd   $13, %zmm1, %zmm16, %zmm19{%k6}               # c345
        kmov      %edi, %k6                                     # c345
        vpshufd   $64, %zmm2, %zmm31{%k7}                       # c349
        movl      $32, %edi                                     # c349
        vpshufd   $0, %zmm2, %zmm17{%k7}                        # c353
        vpshufd   $128, %zmm2, %zmm20{%k7}                      # c357
        vmovaps   %zmm2, %zmm21{%k7}                            # c361
        valignd   $1, %zmm2, %zmm16, %zmm22{%k7}                # c365
        valignd   $2, %zmm2, %zmm16, %zmm23{%k7}                # c369
        valignd   $3, %zmm2, %zmm16, %zmm24{%k7}                # c373
        vpermf32x4 $1, %zmm2, %zmm25{%k7}                       # c377
        valignd   $5, %zmm2, %zmm16, %zmm26{%k7}                # c381
        valignd   $6, %zmm2, %zmm16, %zmm27{%k7}                # c385
        valignd   $7, %zmm2, %zmm16, %zmm28{%k7}                # c389
        vpermf32x4 $2, %zmm2, %zmm29{%k7}                       # c393
        valignd   $9, %zmm2, %zmm16, %zmm14{%k7}                # c397
        valignd   $10, %zmm2, %zmm16, %zmm30{%k7}               # c401
        valignd   $11, %zmm2, %zmm16, %zmm18{%k7}               # c405
        vpermf32x4 $3, %zmm2, %zmm19{%k7}                       # c409
        kmov      %edi, %k7                                     # c409
        vmovaps   _const_16(%rip), %zmm1                        # c413
        vmovaps   _const_15(%rip), %zmm2                        # c417
        vaddps    _const_0(%rip){1to16}, %zmm4, %zmm4           # c421
        vpermd    %zmm3, %zmm0, %zmm31{%k6}                     # c425
        movl      $64, %edi                                     # c425
        vmovaps   _const_17(%rip), %zmm0                        # c429
        vpermf32x4 $0, %zmm3, %zmm17{%k6}                       # c433
        vpermd    %zmm3, %zmm1, %zmm20{%k6}                     # c437
        vpermd    %zmm3, %zmm2, %zmm21{%k6}                     # c441
        vmovaps   %zmm3, %zmm22{%k6}                            # c445
        vpshufd   $1, %zmm3, %zmm23{%k6}                        # c449
        vpshufd   $2, %zmm3, %zmm24{%k6}                        # c453
        vpshufd   $3, %zmm3, %zmm25{%k6}                        # c457
        vpermf32x4 $8, %zmm3, %zmm26{%k6}                       # c461
        valignd   $5, %zmm3, %zmm16, %zmm27{%k6}                # c465
        valignd   $6, %zmm3, %zmm16, %zmm28{%k6}                # c469
        valignd   $7, %zmm3, %zmm16, %zmm29{%k6}                # c473
        vpermf32x4 $12, %zmm3, %zmm14{%k6}                      # c477
        valignd   $9, %zmm3, %zmm16, %zmm30{%k6}                # c481
        valignd   $10, %zmm3, %zmm16, %zmm18{%k6}               # c485
        valignd   $11, %zmm3, %zmm16, %zmm19{%k6}               # c489
        kmov      %edi, %k6                                     # c489
        vmovaps   _const_18(%rip), %zmm3                        # c493
        vaddps    _const_0(%rip){1to16}, %zmm5, %zmm5           # c497
        vpermd    %zmm4, %zmm0, %zmm21{%k7}                     # c501
        movl      $128, %edi                                    # c501
        vmovaps   _const_19(%rip), %zmm0                        # c505
        vpermf32x4 $0, %zmm4, %zmm31{%k7}                       # c509
        vpermd    %zmm4, %zmm15, %zmm17{%k7}                    # c513
        vpermd    %zmm4, %zmm3, %zmm20{%k7}                     # c517
        vpshufd   $0, %zmm4, %zmm22{%k7}                        # c521
        vmovaps   %zmm4, %zmm23{%k7}                            # c525
        vpshufd   $8, %zmm4, %zmm24{%k7}                        # c529
        vpshufd   $12, %zmm4, %zmm25{%k7}                       # c533
        valignd   $3, %zmm4, %zmm16, %zmm26{%k7}                # c537
        vpermf32x4 $8, %zmm4, %zmm27{%k7}                       # c541
        valignd   $5, %zmm4, %zmm16, %zmm28{%k7}                # c545
        valignd   $6, %zmm4, %zmm16, %zmm29{%k7}                # c549
        valignd   $7, %zmm4, %zmm16, %zmm14{%k7}                # c553
        vpermf32x4 $12, %zmm4, %zmm30{%k7}                      # c557
        valignd   $9, %zmm4, %zmm16, %zmm18{%k7}                # c561
        valignd   $10, %zmm4, %zmm16, %zmm19{%k7}               # c565
        kmov      %edi, %k7                                     # c565
        vmovaps   _const_7(%rip), %zmm4                         # c569
        vaddps    _const_0(%rip){1to16}, %zmm6, %zmm6           # c573
        vpermd    %zmm5, %zmm0, %zmm21{%k6}                     # c577
        movl      $512, %edi                                    # c577
        vmovaps   _const_20(%rip), %zmm0                        # c581
        vpermd    %zmm5, %zmm4, %zmm31{%k6}                     # c585
        vpermd    %zmm5, %zmm15, %zmm17{%k6}                    # c589
        vpermf32x4 $0, %zmm5, %zmm20{%k6}                       # c593
        vpshufd   $0, %zmm5, %zmm22{%k6}                        # c597
        vpshufd   $16, %zmm5, %zmm23{%k6}                       # c601
        vmovaps   %zmm5, %zmm24{%k6}                            # c605
        vpshufd   $48, %zmm5, %zmm25{%k6}                       # c609
        valignd   $2, %zmm5, %zmm16, %zmm26{%k6}                # c613
        valignd   $3, %zmm5, %zmm16, %zmm27{%k6}                # c617
        vpermf32x4 $8, %zmm5, %zmm28{%k6}                       # c621
        valignd   $5, %zmm5, %zmm16, %zmm29{%k6}                # c625
        valignd   $6, %zmm5, %zmm16, %zmm14{%k6}                # c629
        valignd   $7, %zmm5, %zmm16, %zmm30{%k6}                # c633
        vpermf32x4 $12, %zmm5, %zmm18{%k6}                      # c637
        valignd   $9, %zmm5, %zmm16, %zmm19{%k6}                # c641
        kmov      %edi, %k6                                     # c641
        vmovaps   _const_8(%rip), %zmm5                         # c645
        vaddps    _const_0(%rip){1to16}, %zmm7, %zmm7           # c649
        vpermd    %zmm6, %zmm0, %zmm20{%k7}                     # c653
        movl      $1024, %edi                                   # c653
        vmovaps   _const_22(%rip), %zmm0                        # c657
        vmovaps   _const_21(%rip), %zmm1                        # c661
        vmovaps   _const_35(%rip), %zmm2                        # c665
        vmovaps   _const_34(%rip), %zmm3                        # c669
        vpermd    %zmm6, %zmm5, %zmm31{%k7}                     # c673
        vpermd    %zmm6, %zmm15, %zmm17{%k7}                    # c677
        vpermf32x4 $0, %zmm6, %zmm21{%k7}                       # c681
        vpshufd   $0, %zmm6, %zmm22{%k7}                        # c685
        vpshufd   $64, %zmm6, %zmm23{%k7}                       # c689
        vpshufd   $128, %zmm6, %zmm24{%k7}                      # c693
        vmovaps   %zmm6, %zmm25{%k7}                            # c697
        valignd   $1, %zmm6, %zmm16, %zmm26{%k7}                # c701
        valignd   $2, %zmm6, %zmm16, %zmm27{%k7}                # c705
        valignd   $3, %zmm6, %zmm16, %zmm28{%k7}                # c709
        vpermf32x4 $8, %zmm6, %zmm29{%k7}                       # c713
        valignd   $5, %zmm6, %zmm16, %zmm14{%k7}                # c717
        valignd   $6, %zmm6, %zmm16, %zmm30{%k7}                # c721
        valignd   $7, %zmm6, %zmm16, %zmm18{%k7}                # c725
        vpermf32x4 $12, %zmm6, %zmm19{%k7}                      # c729
        kmov      %edi, %k7                                     # c729
        vmovaps   _const_9(%rip), %zmm6                         # c733
        vmovaps   _const_33(%rip), %zmm4                        # c737
        vaddps    _const_0(%rip){1to16}, %zmm8, %zmm8           # c741
        vpermd    %zmm7, %zmm0, %zmm20{%k1}                     # c745
        movl      $2048, %edi                                   # c745
        vpermd    %zmm7, %zmm1, %zmm21{%k1}                     # c749
        vpermd    %zmm7, %zmm2, %zmm23{%k1}                     # c753
        vpermd    %zmm7, %zmm3, %zmm24{%k1}                     # c757
        vmovaps   _const_23(%rip), %zmm0                        # c761
        vmovaps   _const_38(%rip), %zmm1                        # c765
        vmovaps   _const_37(%rip), %zmm2                        # c769
        vmovaps   _const_36(%rip), %zmm3                        # c773
        vpermd    %zmm7, %zmm6, %zmm31{%k1}                     # c777
        vpermf32x4 $0, %zmm7, %zmm17{%k1}                       # c781
        vpermf32x4 $16, %zmm7, %zmm22{%k1}                      # c785
        vpermd    %zmm7, %zmm4, %zmm25{%k1}                     # c789
        vmovaps   %zmm7, %zmm26{%k1}                            # c793
        vpshufd   $1, %zmm7, %zmm27{%k1}                        # c797
        vpshufd   $2, %zmm7, %zmm28{%k1}                        # c801
        vpshufd   $3, %zmm7, %zmm29{%k1}                        # c805
        vpermf32x4 $48, %zmm7, %zmm14{%k1}                      # c809
        valignd   $5, %zmm7, %zmm16, %zmm30{%k1}                # c813
        valignd   $6, %zmm7, %zmm16, %zmm18{%k1}                # c817
        valignd   $7, %zmm7, %zmm16, %zmm19{%k1}                # c821
        vmovaps   _const_24(%rip), %zmm7                        # c825
        vaddps    _const_0(%rip){1to16}, %zmm9, %zmm9           # c829
        vpermd    %zmm8, %zmm0, %zmm21{%k6}                     # c833
        vpermd    %zmm8, %zmm1, %zmm22{%k6}                     # c837
        vpermd    %zmm8, %zmm2, %zmm24{%k6}                     # c841
        vpermd    %zmm8, %zmm3, %zmm25{%k6}                     # c845
        vmovaps   _const_25(%rip), %zmm0                        # c849
        vmovaps   _const_41(%rip), %zmm1                        # c853
        vmovaps   _const_40(%rip), %zmm2                        # c857
        vmovaps   _const_39(%rip), %zmm3                        # c861
        vpermf32x4 $0, %zmm8, %zmm31{%k6}                       # c865
        vpermd    %zmm8, %zmm15, %zmm17{%k6}                    # c869
        vpermd    %zmm8, %zmm7, %zmm20{%k6}                     # c873
        vpermf32x4 $16, %zmm8, %zmm23{%k6}                      # c877
        vpshufd   $0, %zmm8, %zmm26{%k6}                        # c881
        vmovaps   %zmm8, %zmm27{%k6}                            # c885
        vpshufd   $8, %zmm8, %zmm28{%k6}                        # c889
        vpshufd   $12, %zmm8, %zmm29{%k6}                       # c893
        valignd   $3, %zmm8, %zmm16, %zmm14{%k6}                # c897
        vpermf32x4 $48, %zmm8, %zmm30{%k6}                      # c901
        valignd   $5, %zmm8, %zmm16, %zmm18{%k6}                # c905
        valignd   $6, %zmm8, %zmm16, %zmm19{%k6}                # c909
        kmov      %edi, %k6                                     # c909
        vmovaps   _const_10(%rip), %zmm8                        # c913
        vaddps    _const_0(%rip){1to16}, %zmm10, %zmm10         # c917
        vpermd    %zmm9, %zmm0, %zmm21{%k7}                     # c921
        movl      $32768, %edi                                  # c921
        vpermd    %zmm9, %zmm1, %zmm22{%k7}                     # c925
        vpermd    %zmm9, %zmm2, %zmm23{%k7}                     # c929
        vpermd    %zmm9, %zmm3, %zmm25{%k7}                     # c933
        vmovaps   _const_26(%rip), %zmm0                        # c937
        vmovaps   _const_44(%rip), %zmm1                        # c941
        vmovaps   _const_43(%rip), %zmm2                        # c945
        vmovaps   _const_42(%rip), %zmm3                        # c949
        vaddps    _const_0(%rip){1to16}, %zmm11, %zmm11         # c953
        vpermd    %zmm9, %zmm8, %zmm31{%k7}                     # c957
        vpermd    %zmm9, %zmm15, %zmm17{%k7}                    # c961
        vpermf32x4 $0, %zmm9, %zmm20{%k7}                       # c965
        vpermf32x4 $16, %zmm9, %zmm24{%k7}                      # c969
        vpshufd   $0, %zmm9, %zmm26{%k7}                        # c973
        vpshufd   $16, %zmm9, %zmm27{%k7}                       # c977
        vmovaps   %zmm9, %zmm28{%k7}                            # c981
        vpshufd   $48, %zmm9, %zmm29{%k7}                       # c985
        valignd   $2, %zmm9, %zmm16, %zmm14{%k7}                # c989
        valignd   $3, %zmm9, %zmm16, %zmm30{%k7}                # c993
        vpermf32x4 $48, %zmm9, %zmm18{%k7}                      # c997
        valignd   $5, %zmm9, %zmm16, %zmm19{%k7}                # c1001
        kmov      %edi, %k7                                     # c1001
        vmovaps   _const_11(%rip), %zmm9                        # c1005
        vpermd    %zmm10, %zmm0, %zmm20{%k6}                    # c1009
        movq      -1640(%rbp), %rdi                             # c1009
        vpermd    %zmm10, %zmm1, %zmm22{%k6}                    # c1013
        vpermd    %zmm10, %zmm2, %zmm23{%k6}                    # c1017
        vpermd    %zmm10, %zmm3, %zmm24{%k6}                    # c1021
        valignd   $1, %zmm10, %zmm16, %zmm14{%k6}               # c1025
        valignd   $2, %zmm10, %zmm16, %zmm30{%k6}               # c1029
        valignd   $3, %zmm10, %zmm16, %zmm18{%k6}               # c1033
        vmovaps   _const_12(%rip), %zmm16                       # c1037
        vmovaps   _const_28(%rip), %zmm0                        # c1041
        vmovaps   _const_27(%rip), %zmm1                        # c1045
        vmovaps   _const_47(%rip), %zmm2                        # c1049
        vmovaps   _const_46(%rip), %zmm3                        # c1053
        vmovaps   _const_45(%rip), %zmm4                        # c1057
        vmovaps   _const_59(%rip), %zmm5                        # c1061
        vmovaps   _const_58(%rip), %zmm6                        # c1065
        vmovaps   _const_57(%rip), %zmm7                        # c1069
        vaddps    _const_0(%rip){1to16}, %zmm12, %zmm12         # c1073
        vpermd    %zmm10, %zmm9, %zmm31{%k6}                    # c1077
        vpermd    %zmm10, %zmm15, %zmm17{%k6}                   # c1081
        vpermf32x4 $0, %zmm10, %zmm21{%k6}                      # c1085
        vpermf32x4 $16, %zmm10, %zmm25{%k6}                     # c1089
        vpshufd   $0, %zmm10, %zmm26{%k6}                       # c1093
        vpshufd   $64, %zmm10, %zmm27{%k6}                      # c1097
        vpshufd   $128, %zmm10, %zmm28{%k6}                     # c1101
        vmovaps   %zmm10, %zmm29{%k6}                           # c1105
        vpermf32x4 $48, %zmm10, %zmm19{%k6}                     # c1109
        vpermd    %zmm11, %zmm16, %zmm31{%k2}                   # c1113
        vpermf32x4 $0, %zmm11, %zmm17{%k2}                      # c1117
        vpermd    %zmm11, %zmm0, %zmm20{%k2}                    # c1121
        vpermd    %zmm11, %zmm1, %zmm21{%k2}                    # c1125
        vpermf32x4 $64, %zmm11, %zmm22{%k2}                     # c1129
        vpermd    %zmm11, %zmm2, %zmm23{%k2}                    # c1133
        vpermd    %zmm11, %zmm3, %zmm24{%k2}                    # c1137
        vpermd    %zmm11, %zmm4, %zmm25{%k2}                    # c1141
        vpermf32x4 $128, %zmm11, %zmm26{%k2}                    # c1145
        vpermd    %zmm11, %zmm5, %zmm27{%k2}                    # c1149
        vpermd    %zmm11, %zmm6, %zmm28{%k2}                    # c1153
        vpermd    %zmm11, %zmm7, %zmm29{%k2}                    # c1157
        vmovaps   %zmm11, %zmm14{%k2}                           # c1161
        vpshufd   $1, %zmm11, %zmm30{%k2}                       # c1165
        vpshufd   $2, %zmm11, %zmm18{%k2}                       # c1169
        vpshufd   $3, %zmm11, %zmm19{%k2}                       # c1173
        vmovaps   _const_30(%rip), %zmm8                        # c1177
        vmovaps   _const_29(%rip), %zmm9                        # c1181
        vmovaps   _const_50(%rip), %zmm10                       # c1185
        vmovaps   _const_49(%rip), %zmm11                       # c1189
        vmovaps   _const_48(%rip), %zmm16                       # c1193
        vmovaps   _const_62(%rip), %zmm0                        # c1197
        vmovaps   _const_61(%rip), %zmm1                        # c1201
        vmovaps   _const_60(%rip), %zmm2                        # c1205
        vaddps    _const_0(%rip){1to16}, %zmm13, %zmm13         # c1209
        vpermf32x4 $0, %zmm12, %zmm31{%k3}                      # c1213
        vpermd    %zmm12, %zmm15, %zmm17{%k3}                   # c1217
        vpermd    %zmm12, %zmm8, %zmm20{%k3}                    # c1221
        vpermd    %zmm12, %zmm9, %zmm21{%k3}                    # c1225
        vpermd    %zmm12, %zmm10, %zmm22{%k3}                   # c1229
        vpermf32x4 $64, %zmm12, %zmm23{%k3}                     # c1233
        vpermd    %zmm12, %zmm11, %zmm24{%k3}                   # c1237
        vpermd    %zmm12, %zmm16, %zmm25{%k3}                   # c1241
        vpermd    %zmm12, %zmm0, %zmm26{%k3}                    # c1245
        vpermf32x4 $128, %zmm12, %zmm27{%k3}                    # c1249
        vpermd    %zmm12, %zmm1, %zmm28{%k3}                    # c1253
        vpermd    %zmm12, %zmm2, %zmm29{%k3}                    # c1257
        vpshufd   $0, %zmm12, %zmm14{%k3}                       # c1261
        vmovaps   %zmm12, %zmm30{%k3}                           # c1265
        vpshufd   $8, %zmm12, %zmm18{%k3}                       # c1269
        vpshufd   $12, %zmm12, %zmm19{%k3}                      # c1273
        vmovaps   _const_13(%rip), %zmm12                       # c1277
        vmovaps   _const_31(%rip), %zmm0                        # c1281
        vmovaps   _const_53(%rip), %zmm1                        # c1285
        vmovaps   _const_52(%rip), %zmm2                        # c1289
        vmovaps   _const_51(%rip), %zmm3                        # c1293
        vmovaps   _const_65(%rip), %zmm4                        # c1297
        vmovaps   _const_64(%rip), %zmm5                        # c1301
        vmovaps   _const_63(%rip), %zmm6                        # c1305
        vpermd    %zmm13, %zmm12, %zmm31{%k4}                   # c1309
        vpermd    %zmm13, %zmm15, %zmm17{%k4}                   # c1313
        vpermf32x4 $0, %zmm13, %zmm20{%k4}                      # c1317
        vpermd    %zmm13, %zmm0, %zmm21{%k4}                    # c1321
        vpermd    %zmm13, %zmm1, %zmm22{%k4}                    # c1325
        vpermd    %zmm13, %zmm2, %zmm23{%k4}                    # c1329
        vpermf32x4 $64, %zmm13, %zmm24{%k4}                     # c1333
        vpermd    %zmm13, %zmm3, %zmm25{%k4}                    # c1337
        vpermd    %zmm13, %zmm4, %zmm26{%k4}                    # c1341
        vpermd    %zmm13, %zmm5, %zmm27{%k4}                    # c1345
        vpermf32x4 $128, %zmm13, %zmm28{%k4}                    # c1349
        vpermd    %zmm13, %zmm6, %zmm29{%k4}                    # c1353
        vpshufd   $0, %zmm13, %zmm14{%k4}                       # c1357
        vpshufd   $16, %zmm13, %zmm30{%k4}                      # c1361
        vmovaps   %zmm13, %zmm18{%k4}                           # c1365
        vpshufd   $48, %zmm13, %zmm19{%k4}                      # c1369
        vmovaps   _const_14(%rip), %zmm13                       # c1373
        vpermd    -64(%rbp), %zmm13, %zmm31{%k7}                # c1377
        vmovaps   _const_32(%rip), %zmm13                       # c1381
        vmovaps   _const_56(%rip), %zmm0                        # c1385
        vmovaps   _const_55(%rip), %zmm1                        # c1389
        vmovaps   _const_54(%rip), %zmm2                        # c1393
        vpermd    -64(%rbp), %zmm15, %zmm17{%k7}                # c1397
        vmovaps   _const_68(%rip), %zmm3                        # c1401
        vpermd    -64(%rbp), %zmm13, %zmm20{%k7}                # c1405
        vpackstorelps %zmm17, (%rdi,%r14,4)                     # c1405
        vmovaps   _const_67(%rip), %zmm4                        # c1409
        vpermf32x4 $0, -64(%rbp), %zmm21{%k7}                   # c1413
        vmovaps   _const_66(%rip), %zmm5                        # c1417
        vpermd    -64(%rbp), %zmm0, %zmm22{%k7}                 # c1421
        vpackstorehps %zmm17, 64(%rdi,%r14,4)                   # c1421
        vpermd    -64(%rbp), %zmm1, %zmm23{%k7}                 # c1425
        vpackstorelps %zmm31, (%rdi,%r13,4)                     # c1425
        vpermd    -64(%rbp), %zmm2, %zmm24{%k7}                 # c1429
        vpackstorehps %zmm31, 64(%rdi,%r13,4)                   # c1429
        vmovaps   -64(%rbp), %zmm6                              # c1433
        vpackstorelps %zmm20, (%rdi,%r12,4)                     # c1433
        vpermf32x4 $64, -64(%rbp), %zmm25{%k7}                  # c1437
        vpermd    -64(%rbp), %zmm3, %zmm26{%k7}                 # c1441
        vpackstorehps %zmm20, 64(%rdi,%r12,4)                   # c1441
        vpermd    -64(%rbp), %zmm4, %zmm27{%k7}                 # c1445
        vpackstorelps %zmm21, (%rdi,%r15,4)                     # c1445
        vpermd    -64(%rbp), %zmm5, %zmm28{%k7}                 # c1449
        vpackstorehps %zmm21, 64(%rdi,%r15,4)                   # c1449
        vpermf32x4 $128, -64(%rbp), %zmm29{%k7}                 # c1453
        vpshufd   $0, -64(%rbp), %zmm14{%k7}                    # c1457
        vpshufd   $64, -64(%rbp), %zmm30{%k7}                   # c1461
        vpshufd   $128, -64(%rbp), %zmm18{%k7}                  # c1465
        vmovaps   %zmm6, %zmm19{%k7}                            # c1469
        vpackstorelps %zmm22, (%rdi,%rax,4)                     # c1469
        vpackstorehps %zmm22, 64(%rdi,%rax,4)                   # c1473
        vpackstorelps %zmm23, (%rdi,%rdx,4)                     # c1477
        movq      -1568(%rbp), %rax                             # c1477
        vpackstorehps %zmm23, 64(%rdi,%rdx,4)                   # c1481
        vpackstorelps %zmm24, (%rdi,%rcx,4)                     # c1485
        movq      -1576(%rbp), %rdx                             # c1485
        vpackstorehps %zmm24, 64(%rdi,%rcx,4)                   # c1489
        vpackstorelps %zmm25, (%rdi,%rsi,4)                     # c1493
        movq      -1584(%rbp), %rcx                             # c1493
        vpackstorehps %zmm25, 64(%rdi,%rsi,4)                   # c1497
        vpackstorelps %zmm26, (%rdi,%r10,4)                     # c1501
        movq      -1560(%rbp), %rsi                             # c1501
        vpackstorehps %zmm26, 64(%rdi,%r10,4)                   # c1505
        vpackstorelps %zmm27, (%rdi,%rax,4)                     # c1509
        vpackstorehps %zmm27, 64(%rdi,%rax,4)                   # c1513
        vpackstorelps %zmm28, (%rdi,%r9,4)                      # c1517
        vpackstorehps %zmm28, 64(%rdi,%r9,4)                    # c1521
        vpackstorelps %zmm29, (%rdi,%rdx,4)                     # c1525
        vpackstorehps %zmm29, 64(%rdi,%rdx,4)                   # c1529
        vpackstorelps %zmm14, (%rdi,%r8,4)                      # c1533
        vpackstorehps %zmm14, 64(%rdi,%r8,4)                    # c1537
        vpackstorelps %zmm30, (%rdi,%rcx,4)                     # c1541
        vpackstorehps %zmm30, 64(%rdi,%rcx,4)                   # c1545
        vpackstorelps %zmm18, (%rdi,%r11,4)                     # c1549
        vpackstorehps %zmm18, 64(%rdi,%r11,4)                   # c1553
        vpackstorelps %zmm19, (%rdi,%rsi,4)                     # c1557
        vpackstorehps %zmm19, 64(%rdi,%rsi,4)                   # c1561
        jne       ..B5.5        # Prob 0%                       # c1561
                                # LOE zmm15 k1 k2 k3 k4 k5
..B5.6:                         # Preds ..B5.20 Latency 13
        vmovaps   -384(%rbp), %zmm0                             # c1
        movb      %al, %al                                      # c1
        movq      -1624(%rbp), %rsi                             # c5
        movq      -1728(%rbp), %r9                              # c5
        movq      -1616(%rbp), %r14                             # c9
        movl      -1608(%rbp), %ecx                             # c9
        movq      -1600(%rbp), %rdi                             # c13
                                # LOE rcx rsi rdi r9 r14 ecx esi edi r9d r14d cl ch sil dil r9b r14b zmm0 zmm15 k1 k2 k3 k4 k5
..CL249:
..B5.7:                         # Preds ..B5.6 Latency 5
        incq      %r9                                           # c1
        incq      %r14                                          # c1
        cmpq      %rdi, %r9                                     # c5
        jne       ..B5.4        # Prob 0%                       # c5
                                # LOE rcx rsi rdi r9 r14 ecx edi cl ch dil zmm0 zmm15 k1 k2 k3 k4 k5
..B5.8:                         # Preds ..B5.7 Latency 13
        movq      -1720(%rbp), %r8                              # c1
        movq      -1712(%rbp), %rdx                             # c1
        movq      -1640(%rbp), %r13                             # c5
        movq      -1704(%rbp), %r9                              # c5
        movq      -1696(%rbp), %r11                             # c9
        movq      -1688(%rbp), %rax                             # c9
        movq      -1680(%rbp), %r12                             # c13
        movq      -1632(%rbp), %r10                             # c13
                                # LOE rax rdx rdi r8 r9 r10 r11 r12 r13 ecx
..CL245:
..B5.9:                         # Preds ..B5.8 ..B5.1 Latency 1
        cmpq      %r8, %r9                                      # c1
        je        ..B5.17       # Prob 0%                       # c1
                                # LOE rax rdx rdi r8 r9 r10 r11 r12 r13 ecx
..CL251:
..B5.11:                        # Preds ..B5.9 Latency 55
        movl      %edi, %r14d                                   # c1
        imull     %edx, %r14d                                   # c5
        movl      %r8d, %r15d                                   # c15
        subq      %r9, %r8                                      # c19
        addl      %r14d, %eax                                   # c19
        imull     %r12d, %r9d                                   # c23
        imull     %ecx, %eax                                    # c33
        addl      %r15d, %r11d                                  # c43
        xorl      %esi, %esi                                    # c43
        addl      %r9d, %r11d                                   # c47
        shll      $4, %r11d                                     # c51
        addl      %r11d, %eax                                   # c55
                                # LOE rsi rdi r8 r10 r13 eax ecx
..CL252:
..B5.12:                        # Preds ..B5.15 ..B5.11 Latency 1
        movl      %eax, %r9d                                    # c1
        movq      %r8, %rdx                                     # c1
                                # LOE rdx rsi rdi r8 r10 r13 eax ecx r9d
..CL253:
..B5.13:                        # Preds ..B5.13 ..B5.12 Latency 29
        movl      %r9d, %r11d                                   # c1
        addl      $16, %r9d                                     # c1
        movslq    %r11d, %r11                                   # c5
        incq      %rdx                                          # c5
        vloadunpacklps (%r10,%r11,4), %zmm0                     # c9
        vloadunpackhps 64(%r10,%r11,4), %zmm0                   # c13
        vaddps    _const_0(%rip){1to16}, %zmm0, %zmm1           # c17
        nop                                                     # c21
        vpackstorelps %zmm1, (%r13,%r11,4)                      # c25
        vpackstorehps %zmm1, 64(%r13,%r11,4)                    # c29
        jne       ..B5.13       # Prob 0%                       # c29
                                # LOE rdx rsi rdi r8 r10 r13 eax ecx r9d
..CL254:
..B5.15:                        # Preds ..B5.13 Latency 5
        incq      %rsi                                          # c1
        addl      %ecx, %eax                                    # c1
        cmpq      %rdi, %rsi                                    # c5
        jne       ..B5.12       # Prob 0%                       # c5
                                # LOE rsi rdi r8 r10 r13 eax ecx
..CL250:
..B5.17:                        # Preds ..B5.15 ..B5.9 Latency 9
        movq      -1672(%rbp), %r12                             # c1
        movq      -1664(%rbp), %r13                             # c1
        movq      -1656(%rbp), %r14                             # c5
        movq      -1648(%rbp), %r15                             # c5
        movq      %rbp, %rsp                                    # c9
        popq      %rbp                                          #
        movq      %rbx, %rsp                                    #
        popq      %rbx                                          #
        ret                                                     #
        .align    16,0x90
                                # LOE
# mark_end;
	.type	read_16,@function
	.size	read_16,.-read_16
	.section .note.GNU-stack, ""
