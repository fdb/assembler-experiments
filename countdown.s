.section .data
message:
  .asciz "%d...\n"
liftoff:
  .asciz "Liftoff!\n"
.section .text
.globl main
main:
  movl $10, %edi
loop:
  push %edi
  push $message
  call printf
  addl $8, %esp
  dec %edi
  jz done
  jmp loop
done:
  push $liftoff
  call printf
  addl $4, %esp
  push $0
  call exit
