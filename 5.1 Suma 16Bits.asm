code segment
assume cs:code, ds:code
mov ax, 5678h
mov bx, 1234h
add ax, bx
mov si, 3000h
mov [si], ax
hlt
code ends
end
