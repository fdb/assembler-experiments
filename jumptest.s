.section .text
.globl _start
_start:
  movl $1, %eax
  movl $10, %ebx
  jmp overhere
  int $0x80
overhere:
  movl $20, %ebx
  int $0x80

