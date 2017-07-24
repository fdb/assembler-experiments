.section .data
  value:
    .int 1
.section .bss
  .lcomm bval, 1
.section .text
.globl _start
_start:
  movl $8, %ecx
  movl %ecx, value

  movl %ecx, bval

  // Exit
  movl $1, %eax
  movl $0, %ebx
  int $0x80
