global  _start

section .data
msg dd "Hello, world!", 10, 0   ; zero byte symbol and ending 0
msg_len equ $-msg

section .text
_start: mov eax, 4      ; syscal named write
        mov ebx, 1      ; write to stdout
        mov ecx, msg
        mov edx, msg_len
        int 80h         ; interrupt

        mov ebx, eax    ; result code
        mov eax, 1      ; syscall named _exit
        int 80h
