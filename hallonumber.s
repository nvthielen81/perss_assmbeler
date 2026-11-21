.global _start

.section .text

_start:
    movq $60 , %rax   
    movq $45 , %rdi
    syscall

