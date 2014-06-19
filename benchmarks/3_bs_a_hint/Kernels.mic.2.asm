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
