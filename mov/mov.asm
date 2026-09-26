; default rel
; 内存数据
section .data
    a db 1
    b db 1

; 代码放这里
section .text
    global _start

_start:
    ; 数据搬入内存
    ; 数据存入ax的后八位
    mov al, 1

    ; 换位置
    ; 把rax里面数据放入rbx寄存器
    mov bl, al

    ; 放内存数据
    ; 把内存 a 的数据放入rax后八位
    mov [a], al

    ; 还可以反过来
    mov al, [a]

    ; mov.asm:17: error: invalid combination of opcode and operands
    ; mov.asm:21: warning: implicit DEFAULT ABS is deprecated [-w+implicit-abs-deprecated]
    ; 这样表示把rax后八位的数据放在内存[a]里面
    ; 这里不推荐[a]这种写法
    ; 因为用的是绝对寻址也就是把内存地址写死在了程序里面
    ; 这里推荐用[rel a]相对寻址
    mov [rel a], al
    mov al, [rel a]
    ; 或者在文件开头使用default rel

    ; 这样是不合法的不可以将内存和内存相加
    mov [rel a], [rel b]

    mov rax, 60
    syscall