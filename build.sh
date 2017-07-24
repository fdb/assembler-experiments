#!/bin/sh
as -gstabs -o cpuid.o cpuid.s
ld -o cpuid cpuid.o
# gcc -m32 -nostdlib -gstabs -o cpuid cpuid.s

as --32 -gstabs -o cpuid2.o cpuid2.s
ld -m elf_i386 -dynamic-linker /lib/ld-linux.so.2 -o cpuid2 -lc cpuid2.o

as -gstabs -o icon.o icon.s
ld -o icon icon.o


as -gstabs -o noppy.o noppy.s
ld -o noppy noppy.o

as -gstabs -o movtest1.o movtest1.s
ld -o movtest1 movtest1.o

as -gstabs -o movtest2.o movtest2.s
ld -o movtest2 movtest2.o

#as --32 -gstabs -o movtest3.o movtest3.s
# ld -dynamic_linker /lib64/ld-linux-x86-64.so.2 -o movtest3 -lc movtest3.o
#ld -melf_i386 -dynamic_linker /lib/ld-linux.so.2 -lc -o movtest3 movtest3.o
gcc -m32 -gstabs -o movtest3 movtest3.s

gcc -m32 -gstabs -o movtest4 movtest4.s

gcc -m32 -gstabs -o cmovtest cmovtest.s

gcc -m32 -gstabs -o swaptest swaptest.s
gcc -m32 -gstabs -nostdlib -o bubble bubble.s
gcc -m32 -gstabs -nostdlib -o pushpop pushpop.s
gcc -m32 -gstabs -nostdlib -o open open.s
gcc -m32 -gstabs -nostdlib -o jumptest jumptest.s
gcc -m32 -gstabs -o calltest calltest.s
gcc -m32 -gstabs -nostdlib -o cmptest cmptest.s
gcc -m32 -gstabs -o countdown countdown.s
gcc -m32 -gstabs -o signtest signtest.s

gcc -o write-ppm -gstabs write-ppm.c
