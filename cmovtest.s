.section .data
values:
  .int 5, 6, 8, 2, 9, 3, 1, 0, 7, 4
output:
  .asciz "The largest value is %d.\n"
.section .bss
.section .text
.globl main
main:
  movl $0, %edi
  movl $0, %eax
loop:
  movl values(, %edi, 4), %ebx
  cmp %eax, %ebx
  // Conditional move: only move ebx into eax if result of previous compare is larger.
  cmova %ebx, %eax
  inc %edi
  cmp $10, %edi
  jne loop

  // Print result
  pushl %eax
  pushl $output
  call printf
  addl $8, %esp

  // Exit
  movl %eax, %ebx
  movl $1, %eax
  int $0x80


