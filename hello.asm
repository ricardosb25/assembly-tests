; Compilar - nasm -f elf32 hello.asm (elf64 não funcionou)
; Trasformar em executavel - ld -s -o hello hello.o

section .data
    txt db 'Hello World!, Sou o Ricardo', 0xA
    tam equ $- txt

section .text

global _start

_start:
    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, txt
    mov EDX, tam
    int 0x80

    mov EAX, 0x1
    mov EBX, 0x0
    int 0x80