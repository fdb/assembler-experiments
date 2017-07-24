.section .data
values:
  .int 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60
.section .bss
.section .text
.globl main
main:
  // Move the first of the values (i.e. 10) into eax.
  movl values, %eax
  // Move the **address* of the values into ebx.
  movl $values, %edi
  // Change the value of the second element of the values.
  movl $100, 4(%edi)
  // Now quit with the changed values as the exit code.
  movl $1, %edi
  movl values(, %edi, 4), %ebx
  // Quit
  movl $1, %eax
  int $0x80


