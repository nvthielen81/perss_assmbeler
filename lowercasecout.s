.globl _start

.section .data
mytext:
    .ascii "abcdefghijklnopqerstuvwxyz\0"
.section .text
_start:

 ### Initialzation 

 # move a pointer to the string into %rbx

 movq $mytext, %rbx

 # Count start at zero 
 movq $0 , %rdi

 mainloop:
 # Get the next byte

 movb (%rbx), %al
 cmpb $0 , %al
 je finish

 # Go to the next byte if the valeu in't beween a and z
 cmpb $ 'a', %al
 jb loopcontrol

cmpb $ 'z' , %al
ja loopcontrol

# It's lower-case! Add one to %rdi
incq %rdi

loopcontrol:
    #next byte
    incq %rbx

# Repeat 
jmp mainloop

finish:
    movq $60, %rax
    syscall

