section .data
    a db 2
    b db 2
    c db -2
    d db 3

section .text
    global _start

_start:
    ; 乘法不同的是只能操作一个数字
    mov al, 1
    ; mul 类型(byte, word, dword) 被乘数
    ; 这里乘数隐式的写在rax里面
    ; mul 不能操作立即数
    mul byte 1
    mov bl, 1
    ; 寄存器操作可以不用加类型
    mul bl

    ; 同理 imul 后面也是类型 被乘数
    mov al, [rel c]
    imul byte [rel d]

    mov rax, 60
    xor rdi, rdi
    syscall