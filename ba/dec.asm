section .data
    a db 1

section .text
    global _start

_start:
    ; dec  大小限定符  内存操作数
    ; 自减指令
    ; 同样这里要写type
    dec byte [rel a]

    ; 寄存器可以不写大小限定符
    mov al, 1
    dec al

    mov rax, 60
    xor rdi, rdi
    syscall