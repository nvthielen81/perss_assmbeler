.globl _start
.section .text
_start:
 #   movq $1, %rdi                        # zet het getal in de index register data
 #   movq %rdi, %rax                      # 
 #   addq %rdi, %rax
 #   mulq %rdi
    movq $2 , %rdi
    addq %rdi, %rax
    movq $2 , %rdi
    mulq %rdi
    movq %rax , %rdi
    movq $60, %rax

    syscall

