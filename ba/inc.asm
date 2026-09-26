section .data
    a db 1

section .text
    global _start

_start:
    ; 当不知道你要操作多少字节
    ; 比如这个[a]他可以是64字节也可以是32字节
    ; inc 大小限定符 内存操作数
    ; a加一
    inc byte [rel a]
    
    ; 如果确定就不用加type
    ; 比如寄存器
    mov al, 1
    inc al

    mov rax, 60
    xor rdi, rdi
    syscall