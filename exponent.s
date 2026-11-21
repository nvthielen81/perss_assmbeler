.globl _start

.section .text
_start:
    movq $1, %rbx   #  dit getal ga naar de mutiplyer 
    movq $4, %rcx      # ring call [ xx%xx ]
    movq $4, %rax
   
   #  AVR ASCII
   #  ARM ASCII
   # ASP ASCII

mainloop:
    addq $0 , %rcx
     jz complete

    mulq %rbx 

    decq %rcx


jmp mainloop

complete:
    movq %rax , %rdi
    movq $60, %rax
    syscall

