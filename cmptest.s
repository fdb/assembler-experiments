.section .text
.globl _start
_start:
  movl $15, %eax
  movl $10, %ebx
  cmp %eax, %ebx
  jg greater_than
  movl $1, %eax
  int $0x80
greater_than:
  movl $1, %eax
  movl $20, %ebx
  int $0x80
  
