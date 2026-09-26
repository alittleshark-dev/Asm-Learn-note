section .data
    a db "Hello World"
    ; 长度
    len equ $ - a

section .text
    global _start

_start:
    ; 写操作
    ; 系统调用号"写"
    mov rax, 1
    ; 输出到终端
    mov rdi, 1
    ; 写什么？
    lea rsi, [rel a]
    ; 长度
    mov rdx, len
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall