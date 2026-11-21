.globl _start

# Program DATA
.section .data
first_value:
    .quad 5
second_value:
    .quad 10
    

.section .text
_start:
 #load values into registers

    movq first_value , %rdi

# preform the compersion 
    addq second_value , %rdi

movq $60, %rax
syscall
