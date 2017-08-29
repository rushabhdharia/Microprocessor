.model small
.data
a db ?
ipstr db "Enter a char: $"
opstr db "Char: $"

.code
start:
mov ax,@data
mov ds,ax
lea dx,ipstr
mov ah,09h
int 21h
mov ah,01h
int 21h
mov a,al

lea dx,opstr
mov ah,09h
int 21h
mov dl,a
mov ah,02h
int 21h
mov ah,4ch
int 21h
end start