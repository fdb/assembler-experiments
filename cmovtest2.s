.section .data
values:
  .int 5, 6, 8, 2, 9, 3, 999
.section .bss
.section .text
.globl main
main:
  movl $0, %edi
  movl $0, %eax
loop:
  movl values(, %edi, 4), %ebx
  movl %ebx, %ecx
  cmpl $999, %ecx
  je break
  cmp %eax, %ebx
  cmova %ebx, %eax
  inc %edi
  jmp loop
break:
  
  movl %eax, %ebx
  movl $1, %eax
  int $0x80


