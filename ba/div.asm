section .data
    a db 3
    b db 9

section .text
    global _start

_start:
    ; 和mul差不多只能写单操作数
    ; 但是参数前面得写类型
    mov al, [rel a]
    ; 寄存器不需要写类型
    div al

    mov al, 1
    ; 同样这个写法是允许的
    div byte 1

    ; imul 用来除带符号数
    mov al, 9
    mov bl, -3
    idiv bl

    mov rax, 60
    xor rdi, rdi
    syscall