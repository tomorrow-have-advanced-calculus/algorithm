power(int, int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-20], edi
        mov     DWORD PTR [rbp-24], esi
        mov     DWORD PTR [rbp-4], 1
.L3:
        cmp     DWORD PTR [rbp-24], 0
        jle     .L2
        mov     eax, DWORD PTR [rbp-4]
        imul    eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-4], eax
        sub     DWORD PTR [rbp-24], 1
        jmp     .L3
.L2:
        mov     eax, DWORD PTR [rbp-4]
        pop     rbp
        ret
algorithm(int, int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     DWORD PTR [rbp-36], edi
        mov     DWORD PTR [rbp-40], esi
        mov     DWORD PTR [rbp-44], edx
        mov     DWORD PTR [rbp-4], 1
.L10:
        mov     eax, DWORD PTR [rbp-36]
        mov     DWORD PTR [rbp-8], eax
        mov     DWORD PTR [rbp-12], 1
.L9:
        mov     eax, DWORD PTR [rbp-8]
        cmp     eax, DWORD PTR [rbp-44]
        jge     .L6
        mov     eax, DWORD PTR [rbp-12]
        cmp     eax, DWORD PTR [rbp-40]
        jne     .L7
        mov     eax, DWORD PTR [rbp-8]
        cdq
        idiv    DWORD PTR [rbp-44]
        mov     eax, edx
        imul    eax, DWORD PTR [rbp-4]
        cdq
        idiv    DWORD PTR [rbp-44]
        mov     eax, edx
        jmp     .L11
.L7:
        mov     eax, DWORD PTR [rbp-8]
        imul    eax, DWORD PTR [rbp-36]
        mov     DWORD PTR [rbp-8], eax
        add     DWORD PTR [rbp-12], 1
        jmp     .L9
.L6:
        mov     eax, DWORD PTR [rbp-40]
        cdq
        idiv    DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-16], edx
        mov     eax, DWORD PTR [rbp-40]
        cdq
        idiv    DWORD PTR [rbp-12]
        mov     DWORD PTR [rbp-20], eax
        mov     edx, DWORD PTR [rbp-16]
        mov     eax, DWORD PTR [rbp-36]
        mov     esi, edx
        mov     edi, eax
        call    power(int, int)
        imul    eax, DWORD PTR [rbp-4]
        cdq
        idiv    DWORD PTR [rbp-44]
        mov     DWORD PTR [rbp-4], edx
        mov     eax, DWORD PTR [rbp-8]
        cdq
        idiv    DWORD PTR [rbp-44]
        mov     DWORD PTR [rbp-36], edx
        mov     eax, DWORD PTR [rbp-20]
        mov     DWORD PTR [rbp-40], eax
        jmp     .L10
.L11:
        leave
        ret