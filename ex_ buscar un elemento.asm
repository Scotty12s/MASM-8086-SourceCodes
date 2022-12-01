;1. Start the program.
;2. Initialize all the elements of array and named them.
;3. Define the messages in disp1 and disp2.
;4. Initialize the counter value in data segment.
;5. If counter reaches 0, goto step6, else do the following steps

Program:
Assume cs: code, ds: data
Data segment
List dw 05h, 06h, 07h, 08h, 09h
Disp1 db “Data is present”,”&”
Disp2 db “Data is not present”,”&”
Count equ 05h
Data ends
Code segment
Org 1000h
Start: mov ax, data
mov ds, dx
mov si, offset list
mov cx, count
loop: mov ax, [si]
cmp ax, 05h
jz loop1
add si, 02h
dec cx
jnz loop
jmp loop2
loop1: mov dx, offset disp1
jmp loop3
loop2: mov dx, offset disp2
jmp loop3
loop3: mov ah, 09h
int 21h
mov ah, 4ch
int 21h
code ends
end
