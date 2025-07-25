section .data
    msg db "Hello, World!", 0xa
    len equ $ - msg

section .text
    global _start

_start:
    ; sys_write system call (syscall number 1)
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, len
    syscall

    ; sys_exit system call (syscall number 60)
    mov rax, 60
    mov rdi, 0
    syscall