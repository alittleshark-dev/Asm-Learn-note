default rel
section .data
    a db 1
    b db 1

section .text
    global _start

_start:
    ; 和 add一样就只有内存和内存做减法是非法的其他都是合法的
    mov al, [a]
    sub [b], al

    mov al, 1
    mov bl, 1
    sub al, bl
    mov [a], al

    mov rax, 60
    xor rdi, rdi
    syscall