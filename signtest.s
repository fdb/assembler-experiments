.section .data
numbers:
  .int 11, 22, 33, 44, 55, 66, 77, 88
message:
  .asciz "The number is %d.\n"
.section .text
.globl main
main:
  movl $7, %edi
loop:
  pushl numbers(, %edi, 4)
  pushl $message
  call printf
  addl $8, %esp
  dec %edi
  jns loop

  pushl $0
  call exit

