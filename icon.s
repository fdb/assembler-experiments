.section .data
output:
  .ascii "XXXXXXXX\n"
.section .bss
.section .text
.globl _start
_start:
  movl $output, %edi
  // There is probably a good way to move $41 in the 32-bit register four times.
  mov $65, %al
  // We use a simple mov to move data into the lower 8 bits.
  // Using 32 bits, while faster, would overwrite the \n this way.
  mov %al, 0(%edi)
  mov %al, 1(%edi)
  mov %al, 2(%edi)
  mov %al, 3(%edi)
  mov %al, 4(%edi)
  mov %al, 5(%edi)
  mov %al, 6(%edi)
  mov %al, 7(%edi)
  //movl %esi, 7(%edi)

//row_loop:
//  movl $0, %ecx
//  movl $40, %edi
 // add $1, %edi
  //add $1, %ecx
  //cmp $ecx, $7
  //je end
  //jmp row_loop
//end:
  // eax: 4 = print
  movl $4, %eax
  // ebx: file descriptor: 1 = stdout
  movl $1, %ebx
  // ecx: start of string
  movl $output, %ecx
  // length of string
  movl $9, %edx
  int $0x80
  // exit
  movl $1, %eax
  // ebx: status code = 0
  movl $0, %ebx
  int $0x80


