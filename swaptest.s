.section .data
.section .bss
.section .text
.globl main
main:
  movl $0x12345678, %ebx
  bswap %ebx

  movl $1, %eax
  int $0x80

