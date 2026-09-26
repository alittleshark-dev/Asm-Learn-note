section .data
    a db 1

section .text
    global _start

_start:
    ; lea取地址操作
    ; 类似于C语言中的&a
    ; 语法
    ; lea 存地址的寄存器(不可以是内存) 内存或者寄存器的寻址
    ; 一个内存地址为64位
    lea rax, [rel a]
    lea rbx, [rax]

    mov rax, 60
    xor rdi, rdi
    syscall
