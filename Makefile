# Makefile for the playground project
# @author Denis Rochau

# Compiler
CC=gcc

# Options
CFLAGS=-c -Wall -m32 -I.

AFLAGS=-S -Wall -m32 -I.

AV2FLASGS=-Wall -g -I.

# Short Option Explanation:
# -o <Name> = defines output name
# -c = compile source files
# -S = compile source files but do not assemble
# -Wall = show all warnings
# -m32 = generate 32 bit assembly code  
# -m64 = generate 64 bit assembly code
# -I. = this makes gcc look for headers in the current directory

# Targets 
all: playground

clean: 
	rm -f *.o *.exe *.out *.txt

playground: main.o asm.o
	$(CC) -Wall -m32 -I. -o playground main.o asm.o

asm.o: asm.S
	$(CC) $(CFLAGS) asm.S

main.o: main.c
	$(CC) $(CFLAGS) main.c

playground-asm: asm-asm main-asm


asm-asm: asm.c
	$(CC) $(AFLAGS) -o gen_asm.S asm.c

main-asm: main.c
	$(CC) $(AFLAGS) -o gen_main.S main.c


asm-asm-v2: asm.c
	$(CC) $(AV2FLASGS) -Wa,-aln=gen_asm_v2.txt asm.c

asm-objdump: asm.o
	objdump -S -l asm.o

main-objdump: main.o
	objdump -S -l main.o
