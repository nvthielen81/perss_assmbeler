.globl _start

.section .data

first_valeu:
    .quad  10
second_valeu:
    .quad 30
final_result:
    .quad 0

.section .text
_start:
    # load values into register
    movq first_valeu, %rbx
    movq second_valeu, %rcx
    addq %rbx, %rcx

    # store into memorie 
    movq %rcx , final_result

    movq $60 , %rax
    movq final_result, %rdi
    syscall
    