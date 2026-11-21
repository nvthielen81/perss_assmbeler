.global _start
.section .data

mynumberofmynumbers:
    .quad 7
mynumbers:
    .quad 1, 2, 3, 4 , 5, 6 , 7
.section .text
_start:
    movq mynumberofmynumbers , %rcx

    movq $0, %rdi

    cmp $0 , %rcx
    je endloop
myloop:
    movq mynumbers-8(,%rcx,8),%rax
    cmp %rdi, %rax
    jbe loopcontrol

    movq %rax , %rdi

loopcontrol:
    loopq myloop

endloop:
    movq $60 , %rax
    syscall










    
