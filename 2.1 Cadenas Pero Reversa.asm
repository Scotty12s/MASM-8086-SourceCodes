Assume cs: code, ds: data
Data segment
src dw 09h,08h,07h
des dw 10h
count equ 03h
data ends
code segment
start: mov ax, data
mov ds, ax
mov cx,count+1
mov di, offset des
mov dx, 06h
mov si, offset src
add si, dx
loop: mov bx, [si]
mov [di], bx
add di, 02h
dec cx
jnz loop
mov ah, 4ch
int 21h
code ends
end start.
