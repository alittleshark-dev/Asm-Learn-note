section .text
    global _start

_start:
    call fun

    mov rax, 60
    syscall

fun:
    mov rdi, 1
    ; 结束回到call下一条
    ret