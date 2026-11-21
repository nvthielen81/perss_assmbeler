.globl _start

.section .text
_start:
    movq $25, %rdi
    jmp nextplace

    movq $10 , %rdi
    addq %rdi, %rdi

nextplace:
    movq $60, %rax
    syscall
