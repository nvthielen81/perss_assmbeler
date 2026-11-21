.globl _start

.section .data

numberofnumbers:
    .quad 6
    # when the 1 quad arry : 
mynumbers:
    .quad 1, 2 , 3 ,4 , 5 , 6 , 7

.section .text
_start:

    ### initialze Register ###

    movq numberofnumbers, %rcx

    movq $1, %rbx

    movq $0, %rdi

    cmp $0 , %rcx

    je endloop

    ### mainloop ###
myloop:
    movq mynumbers(,%rbx,8) , %rax

    cmp %rdi, %rax
    jbe loopcontol

    movq %rax, %rdi

loopcontol:
    incq %rbx

    loopq myloop

endloop:
 movq $60, %rax
 syscall
