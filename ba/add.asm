section .data
    a db 1
    b db 1
section .text
    global _start

_start:
    ;加法
    ;因为add [rel a], [rel b]也是非法的
    ; 所以第一步是用rax作为中转
    mov al, [rel a]
    ; 相加 ax后八位和内存b, 结果会存入ax后八位
    add al, [rel b]
    ; 把ax后八位般到内存a里面
    mov [rel a], al

    ; 还可以相加寄存器的数值
    mov al, 1
    mov bl, 1
    ; rax和rbx后八位相加
    add al, bl

    mov rax, 60
    xor rdi, rdi
    syscall