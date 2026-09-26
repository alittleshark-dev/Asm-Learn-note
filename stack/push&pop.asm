section .text
    global _start

_start:
    mov rax, 0xFFFF
    ; 压栈
    ; 栈顶地址在rsp里面
    push rax

    ; 出栈
    pop rbx
    
    ; 返回结果
    mov rdi, rbx
    mov rax, 60
    syscall