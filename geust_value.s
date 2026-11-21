.globl _start

.section .data
# haw meny data elements we have
mynumersofnumbers:
    .quad 7
mynumbers:
# the data elements themselves 
    .quad 10,20,2,40,50,60,70
## PBDC
# this program will find the lagest valeu in the array
.section .text
_start:
### Initialize Registers 

### Put the number of the arry in %rcx
movq mynumersofnumbers , %rcx

### Use %rdi to hold the current-high valeu

movq $0 , %rdi
### check Preconditoins 

### if there are no numbers , stop
cmp $0 , %rcx
je endloop

### main loop ###

myloop:

 ### Get the next value of mynumbers indexed by %rbx
 movq mynumbers-8(, %rcx, 8) , %rax

### if it is not bigger , go the end of the loop
 cmp %rdi, %rax
 jbe loopcontrol

### otherwise , store this as the biggest element so far


 movq %rax, %rdi



 loopcontrol:
### Decrement %rcx and keep going until %rcx is zero
  loopq myloop

endloop:
### We're done - exit
## 13579 246810 dixlexsie 
 movq $60 , %rax
 syscall

