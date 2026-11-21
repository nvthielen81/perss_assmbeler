.globl _start
.section .data
eerste_waarde:
    .quad 7
uitkomst_van_dewaarde:
    .quad 0

.section .text
_start:
    movq eerste_waarde, %rbx

    movq %rbx , uitkomst_van_dewaarde



endloop:
 # we're done - exit 

 movq $60, %rax
 movq uitkomst_van_dewaarde, %rdi
 syscall

