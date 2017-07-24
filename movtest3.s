.section .data
  output:
    .asciz "The output is %d\n"
  values:
    .int 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60
.section .bss
.section .text
.globl main
main:
  movl $0, %edi
loop:
  movl values(, %edi, 4), %eax
  movl %eax, %ebx
  pushl %eax
  pushl $output
  call printf
  addl $8, %esp
  inc %edi
  // Instead of comparing the loop counter, check if the final value
  // is reached. We could use a sentinel value here.
  cmpl $60, %ebx
  jne loop

  // Exit
  movl $1, %eax
  movl $0, %ebx
  int $0x80
