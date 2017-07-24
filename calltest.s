.section .data
message:
  .asciz "This is section %d.\n"
.section .text
.globl main
main:
  pushl $1
  pushl $message
  call printf
  addl $8, %esp # Clear up the stack.

  call my_function

  pushl $3
  pushl $message
  call printf
  addl $8, %esp

  pushl $0
  call exit

my_function:
  pushl %ebp
  movl %esp, %ebp
  pushl $2
  pushl $message
  call printf
  addl $8, %esp
  movl %ebp, %esp
  pop %ebp
  ret

