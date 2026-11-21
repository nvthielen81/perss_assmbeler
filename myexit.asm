.global _start

.section .text

_start:
    movq $60, %rax
    movq $20, %rdi             ### rdi Row to display on the interface 
   syscall


 
