// This is an attempt at a self-modifying program.
// The program normally writes the message "Hello".
// We try to overwrite the code bytes with a NOP instruction.
// Currently this crashes :-)
.section .data
  msg:
   .ascii "Hello\n"
.section .bss
.section .text
.globl _start
_start:
  // Try to overwrite the actual call with NOP instructions.
  movw $0x9090, thecall

  movl $4, %eax
  movl $1, %ebx
  movl $msg, %ecx
  movl $6, %edx
thecall:
  int $0x80

  movl $1, %eax
  movl $0, %ebx
  int $0x80
