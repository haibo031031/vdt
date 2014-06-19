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
