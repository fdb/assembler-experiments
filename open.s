.section .data
filename:
  .string "test2.txt"
message:
  .ascii "Hello, World!"
.section .text
.globl _start
_start:
  // Open
  movl $5, %eax
  movl $filename, %ebx
  movl $65, %ecx
  movl $511, %edx
  int $0x80
  // File descriptor should now be in eax.
  // Store it in %esi.
  movl %eax, %esi
  // Write
  movl $4, %eax
  movl %esi, %ebx
  movl $message, %ecx
  movl $13, %edx
  int $0x80
  // Close
  movl $6, %eax
  movl %esi, %ebx
  int $0x80
  
  // Exit
  movl $1, %eax
  movl $0, %ebx
  int $0x80
